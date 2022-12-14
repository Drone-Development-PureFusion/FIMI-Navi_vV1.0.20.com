package org.apache.mina.filter.ssl;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.filterchain.IoFilter;
import org.apache.mina.core.filterchain.IoFilterEvent;
import org.apache.mina.core.future.DefaultWriteFuture;
import org.apache.mina.core.future.WriteFuture;
import org.apache.mina.core.session.IoEventType;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.core.write.DefaultWriteRequest;
import org.apache.mina.core.write.WriteRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class SslHandler {
    private static final Logger LOGGER = LoggerFactory.getLogger(SslHandler.class);
    private IoBuffer appBuffer;
    private boolean firstSSLNegociation;
    private boolean handshakeComplete;
    private SSLEngineResult.HandshakeStatus handshakeStatus;
    private IoBuffer inNetBuffer;
    private IoBuffer outNetBuffer;
    private final IoSession session;
    private SSLEngine sslEngine;
    private final SslFilter sslFilter;
    private boolean writingEncryptedData;
    private final Queue<IoFilterEvent> preHandshakeEventQueue = new ConcurrentLinkedQueue();
    private final Queue<IoFilterEvent> filterWriteEventQueue = new ConcurrentLinkedQueue();
    private final Queue<IoFilterEvent> messageReceivedEventQueue = new ConcurrentLinkedQueue();
    private final IoBuffer emptyBuffer = IoBuffer.allocate(0);
    private ReentrantLock sslLock = new ReentrantLock();
    private final AtomicInteger scheduled_events = new AtomicInteger(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public SslHandler(SslFilter sslFilter, IoSession session) throws SSLException {
        this.sslFilter = sslFilter;
        this.session = session;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init() throws SSLException {
        if (this.sslEngine == null) {
            LOGGER.debug("{} Initializing the SSL Handler", this.sslFilter.getSessionInfo(this.session));
            InetSocketAddress peer = (InetSocketAddress) this.session.getAttribute(SslFilter.PEER_ADDRESS);
            if (peer == null) {
                this.sslEngine = this.sslFilter.sslContext.createSSLEngine();
            } else {
                this.sslEngine = this.sslFilter.sslContext.createSSLEngine(peer.getHostName(), peer.getPort());
            }
            this.sslEngine.setUseClientMode(this.sslFilter.isUseClientMode());
            if (!this.sslEngine.getUseClientMode()) {
                if (this.sslFilter.isWantClientAuth()) {
                    this.sslEngine.setWantClientAuth(true);
                }
                if (this.sslFilter.isNeedClientAuth()) {
                    this.sslEngine.setNeedClientAuth(true);
                }
            }
            if (this.sslFilter.getEnabledCipherSuites() != null) {
                this.sslEngine.setEnabledCipherSuites(this.sslFilter.getEnabledCipherSuites());
            }
            if (this.sslFilter.getEnabledProtocols() != null) {
                this.sslEngine.setEnabledProtocols(this.sslFilter.getEnabledProtocols());
            }
            this.sslEngine.beginHandshake();
            this.handshakeStatus = this.sslEngine.getHandshakeStatus();
            this.writingEncryptedData = false;
            this.firstSSLNegociation = true;
            this.handshakeComplete = false;
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("{} SSL Handler Initialization done.", this.sslFilter.getSessionInfo(this.session));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        if (this.sslEngine != null) {
            try {
                this.sslEngine.closeInbound();
            } catch (SSLException e) {
                LOGGER.debug("Unexpected exception from SSLEngine.closeInbound().", (Throwable) e);
            }
            if (this.outNetBuffer != null) {
                this.outNetBuffer.capacity(this.sslEngine.getSession().getPacketBufferSize());
            } else {
                createOutNetBuffer(0);
            }
            do {
                try {
                    this.outNetBuffer.clear();
                } catch (SSLException e2) {
                } finally {
                    this.outNetBuffer.free();
                    this.outNetBuffer = null;
                }
            } while (this.sslEngine.wrap(this.emptyBuffer.buf(), this.outNetBuffer.buf()).bytesProduced() > 0);
            this.sslEngine.closeOutbound();
            this.sslEngine = null;
            this.preHandshakeEventQueue.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SslFilter getSslFilter() {
        return this.sslFilter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IoSession getSession() {
        return this.session;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isWritingEncryptedData() {
        return this.writingEncryptedData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHandshakeComplete() {
        return this.handshakeComplete;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInboundDone() {
        return this.sslEngine == null || this.sslEngine.isInboundDone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isOutboundDone() {
        return this.sslEngine == null || this.sslEngine.isOutboundDone();
    }

    boolean needToCompleteHandshake() {
        return this.handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP && !isInboundDone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void schedulePreHandshakeWriteRequest(IoFilter.NextFilter nextFilter, WriteRequest writeRequest) {
        this.preHandshakeEventQueue.add(new IoFilterEvent(nextFilter, IoEventType.WRITE, this.session, writeRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void flushPreHandshakeEvents() throws SSLException {
        while (true) {
            IoFilterEvent scheduledWrite = this.preHandshakeEventQueue.poll();
            if (scheduledWrite != null) {
                this.sslFilter.filterWrite(scheduledWrite.getNextFilter(), this.session, (WriteRequest) scheduledWrite.getParameter());
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void scheduleFilterWrite(IoFilter.NextFilter nextFilter, WriteRequest writeRequest) {
        this.filterWriteEventQueue.add(new IoFilterEvent(nextFilter, IoEventType.WRITE, this.session, writeRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void scheduleMessageReceived(IoFilter.NextFilter nextFilter, Object message) {
        this.messageReceivedEventQueue.add(new IoFilterEvent(nextFilter, IoEventType.MESSAGE_RECEIVED, this.session, message));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void flushScheduledEvents() {
        this.scheduled_events.incrementAndGet();
        if (this.sslLock.tryLock()) {
            while (true) {
                try {
                    IoFilterEvent event = this.filterWriteEventQueue.poll();
                    if (event != null) {
                        IoFilter.NextFilter nextFilter = event.getNextFilter();
                        nextFilter.filterWrite(this.session, (WriteRequest) event.getParameter());
                    } else {
                        while (true) {
                            IoFilterEvent event2 = this.messageReceivedEventQueue.poll();
                            if (event2 == null) {
                                break;
                            }
                            IoFilter.NextFilter nextFilter2 = event2.getNextFilter();
                            nextFilter2.messageReceived(this.session, event2.getParameter());
                        }
                        if (this.scheduled_events.decrementAndGet() <= 0) {
                            return;
                        }
                    }
                } finally {
                    this.sslLock.unlock();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void messageReceived(IoFilter.NextFilter nextFilter, ByteBuffer buf) throws SSLException {
        if (LOGGER.isDebugEnabled()) {
            if (!isOutboundDone()) {
                LOGGER.debug("{} Processing the received message", this.sslFilter.getSessionInfo(this.session));
            } else {
                LOGGER.debug("{} Processing the received message", this.sslFilter.getSessionInfo(this.session));
            }
        }
        if (this.inNetBuffer == null) {
            this.inNetBuffer = IoBuffer.allocate(buf.remaining()).setAutoExpand(true);
        }
        this.inNetBuffer.put(buf);
        if (!this.handshakeComplete) {
            handshake(nextFilter);
        } else {
            this.inNetBuffer.flip();
            if (this.inNetBuffer.hasRemaining()) {
                SSLEngineResult res = unwrap();
                if (this.inNetBuffer.hasRemaining()) {
                    this.inNetBuffer.compact();
                } else {
                    this.inNetBuffer.free();
                    this.inNetBuffer = null;
                }
                checkStatus(res);
                renegotiateIfNeeded(nextFilter, res);
            } else {
                return;
            }
        }
        if (isInboundDone()) {
            int inNetBufferPosition = this.inNetBuffer == null ? 0 : this.inNetBuffer.position();
            buf.position(buf.position() - inNetBufferPosition);
            if (this.inNetBuffer != null) {
                this.inNetBuffer.free();
                this.inNetBuffer = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IoBuffer fetchAppBuffer() {
        if (this.appBuffer == null) {
            return IoBuffer.allocate(0);
        }
        IoBuffer appBuffer = this.appBuffer.flip();
        this.appBuffer = null;
        return appBuffer.shrink();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IoBuffer fetchOutNetBuffer() {
        IoBuffer answer = this.outNetBuffer;
        if (answer == null) {
            return this.emptyBuffer;
        }
        this.outNetBuffer = null;
        return answer.shrink();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void encrypt(ByteBuffer src) throws SSLException {
        if (!this.handshakeComplete) {
            throw new IllegalStateException();
        }
        if (!src.hasRemaining()) {
            if (this.outNetBuffer == null) {
                this.outNetBuffer = this.emptyBuffer;
                return;
            }
            return;
        }
        createOutNetBuffer(src.remaining());
        while (src.hasRemaining()) {
            SSLEngineResult result = this.sslEngine.wrap(src, this.outNetBuffer.buf());
            if (result.getStatus() == SSLEngineResult.Status.OK) {
                if (result.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                    doTasks();
                }
            } else if (result.getStatus() == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                this.outNetBuffer.capacity(this.outNetBuffer.capacity() << 1);
                this.outNetBuffer.limit(this.outNetBuffer.capacity());
            } else {
                throw new SSLException("SSLEngine error during encrypt: " + result.getStatus() + " src: " + src + "outNetBuffer: " + this.outNetBuffer);
            }
        }
        this.outNetBuffer.flip();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean closeOutbound() throws SSLException {
        SSLEngineResult result;
        if (this.sslEngine == null || this.sslEngine.isOutboundDone()) {
            return false;
        }
        this.sslEngine.closeOutbound();
        createOutNetBuffer(0);
        while (true) {
            result = this.sslEngine.wrap(this.emptyBuffer.buf(), this.outNetBuffer.buf());
            if (result.getStatus() != SSLEngineResult.Status.BUFFER_OVERFLOW) {
                break;
            }
            this.outNetBuffer.capacity(this.outNetBuffer.capacity() << 1);
            this.outNetBuffer.limit(this.outNetBuffer.capacity());
        }
        if (result.getStatus() != SSLEngineResult.Status.CLOSED) {
            throw new SSLException("Improper close state: " + result);
        }
        this.outNetBuffer.flip();
        return true;
    }

    private void checkStatus(SSLEngineResult res) throws SSLException {
        SSLEngineResult.Status status = res.getStatus();
        if (status == SSLEngineResult.Status.BUFFER_OVERFLOW) {
            throw new SSLException("SSLEngine error during decrypt: " + status + " inNetBuffer: " + this.inNetBuffer + "appBuffer: " + this.appBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.mina.filter.ssl.SslHandler$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C26241 {
        static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus = new int[SSLEngineResult.HandshakeStatus.values().length];

        static {
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_TASK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_UNWRAP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_WRAP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handshake(IoFilter.NextFilter nextFilter) throws SSLException {
        while (true) {
            switch (C26241.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[this.handshakeStatus.ordinal()]) {
                case 1:
                case 2:
                    if (LOGGER.isDebugEnabled()) {
                        LOGGER.debug("{} processing the FINISHED state", this.sslFilter.getSessionInfo(this.session));
                    }
                    this.session.setAttribute(SslFilter.SSL_SESSION, this.sslEngine.getSession());
                    this.handshakeComplete = true;
                    if (this.firstSSLNegociation && this.session.containsAttribute(SslFilter.USE_NOTIFICATION)) {
                        this.firstSSLNegociation = false;
                        scheduleMessageReceived(nextFilter, SslFilter.SESSION_SECURED);
                    }
                    if (LOGGER.isDebugEnabled()) {
                        if (!isOutboundDone()) {
                            LOGGER.debug("{} is now secured", this.sslFilter.getSessionInfo(this.session));
                            return;
                        } else {
                            LOGGER.debug("{} is not secured yet", this.sslFilter.getSessionInfo(this.session));
                            return;
                        }
                    }
                    return;
                case 3:
                    if (LOGGER.isDebugEnabled()) {
                        LOGGER.debug("{} processing the NEED_TASK state", this.sslFilter.getSessionInfo(this.session));
                    }
                    this.handshakeStatus = doTasks();
                    break;
                case 4:
                    if (LOGGER.isDebugEnabled()) {
                        LOGGER.debug("{} processing the NEED_UNWRAP state", this.sslFilter.getSessionInfo(this.session));
                    }
                    SSLEngineResult.Status status = unwrapHandshake(nextFilter);
                    if ((status == SSLEngineResult.Status.BUFFER_UNDERFLOW && this.handshakeStatus != SSLEngineResult.HandshakeStatus.FINISHED) || isInboundDone()) {
                        return;
                    }
                    break;
                case 5:
                    if (LOGGER.isDebugEnabled()) {
                        LOGGER.debug("{} processing the NEED_WRAP state", this.sslFilter.getSessionInfo(this.session));
                    }
                    if (this.outNetBuffer != null && this.outNetBuffer.hasRemaining()) {
                        return;
                    }
                    createOutNetBuffer(0);
                    while (true) {
                        SSLEngineResult result = this.sslEngine.wrap(this.emptyBuffer.buf(), this.outNetBuffer.buf());
                        if (result.getStatus() == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                            this.outNetBuffer.capacity(this.outNetBuffer.capacity() << 1);
                            this.outNetBuffer.limit(this.outNetBuffer.capacity());
                        } else {
                            this.outNetBuffer.flip();
                            this.handshakeStatus = result.getHandshakeStatus();
                            writeNetBuffer(nextFilter);
                            break;
                        }
                    }
                    break;
                default:
                    String msg = "Invalid Handshaking State" + this.handshakeStatus + " while processing the Handshake for session " + this.session.getId();
                    LOGGER.error(msg);
                    throw new IllegalStateException(msg);
            }
        }
    }

    private void createOutNetBuffer(int expectedRemaining) {
        int capacity = Math.max(expectedRemaining, this.sslEngine.getSession().getPacketBufferSize());
        if (this.outNetBuffer != null) {
            this.outNetBuffer.capacity(capacity);
        } else {
            this.outNetBuffer = IoBuffer.allocate(capacity).minimumCapacity(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WriteFuture writeNetBuffer(IoFilter.NextFilter nextFilter) throws SSLException {
        DefaultWriteFuture defaultWriteFuture;
        if (this.outNetBuffer == null || !this.outNetBuffer.hasRemaining()) {
            return null;
        }
        this.writingEncryptedData = true;
        try {
            IoBuffer writeBuffer = fetchOutNetBuffer();
            DefaultWriteFuture defaultWriteFuture2 = new DefaultWriteFuture(this.session);
            try {
                this.sslFilter.filterWrite(nextFilter, this.session, new DefaultWriteRequest(writeBuffer, defaultWriteFuture2));
                while (needToCompleteHandshake()) {
                    try {
                        handshake(nextFilter);
                        IoBuffer outNetBuffer = fetchOutNetBuffer();
                        if (outNetBuffer == null || !outNetBuffer.hasRemaining()) {
                            defaultWriteFuture = defaultWriteFuture2;
                        } else {
                            defaultWriteFuture = new DefaultWriteFuture(this.session);
                            this.sslFilter.filterWrite(nextFilter, this.session, new DefaultWriteRequest(outNetBuffer, defaultWriteFuture));
                        }
                        defaultWriteFuture2 = defaultWriteFuture;
                    } catch (SSLException ssle) {
                        SSLException newSsle = new SSLHandshakeException("SSL handshake failed.");
                        newSsle.initCause(ssle);
                        throw newSsle;
                    }
                }
                this.writingEncryptedData = false;
                return defaultWriteFuture2;
            } catch (Throwable th) {
                th = th;
                this.writingEncryptedData = false;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private SSLEngineResult.Status unwrapHandshake(IoFilter.NextFilter nextFilter) throws SSLException {
        if (this.inNetBuffer != null) {
            this.inNetBuffer.flip();
        }
        if (this.inNetBuffer == null || !this.inNetBuffer.hasRemaining()) {
            return SSLEngineResult.Status.BUFFER_UNDERFLOW;
        }
        SSLEngineResult res = unwrap();
        this.handshakeStatus = res.getHandshakeStatus();
        checkStatus(res);
        if (this.handshakeStatus == SSLEngineResult.HandshakeStatus.FINISHED && res.getStatus() == SSLEngineResult.Status.OK && this.inNetBuffer.hasRemaining()) {
            res = unwrap();
            if (this.inNetBuffer.hasRemaining()) {
                this.inNetBuffer.compact();
            } else {
                this.inNetBuffer.free();
                this.inNetBuffer = null;
            }
            renegotiateIfNeeded(nextFilter, res);
        } else if (this.inNetBuffer.hasRemaining()) {
            this.inNetBuffer.compact();
        } else {
            this.inNetBuffer.free();
            this.inNetBuffer = null;
        }
        return res.getStatus();
    }

    private void renegotiateIfNeeded(IoFilter.NextFilter nextFilter, SSLEngineResult res) throws SSLException {
        if (res.getStatus() != SSLEngineResult.Status.CLOSED && res.getStatus() != SSLEngineResult.Status.BUFFER_UNDERFLOW && res.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING) {
            this.handshakeComplete = false;
            this.handshakeStatus = res.getHandshakeStatus();
            handshake(nextFilter);
        }
    }

    private SSLEngineResult unwrap() throws SSLException {
        SSLEngineResult res;
        if (this.appBuffer == null) {
            this.appBuffer = IoBuffer.allocate(this.inNetBuffer.remaining());
        } else {
            this.appBuffer.expand(this.inNetBuffer.remaining());
        }
        while (true) {
            res = this.sslEngine.unwrap(this.inNetBuffer.buf(), this.appBuffer.buf());
            SSLEngineResult.Status status = res.getStatus();
            SSLEngineResult.HandshakeStatus handshakeStatus = res.getHandshakeStatus();
            if (status == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                int newCapacity = this.sslEngine.getSession().getApplicationBufferSize();
                if (this.appBuffer.remaining() >= newCapacity) {
                    throw new SSLException("SSL buffer overflow");
                }
                this.appBuffer.expand(newCapacity);
            }
            if ((status == SSLEngineResult.Status.OK || status == SSLEngineResult.Status.BUFFER_OVERFLOW) && (handshakeStatus == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING || handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP)) {
            }
        }
        return res;
    }

    private SSLEngineResult.HandshakeStatus doTasks() {
        while (true) {
            Runnable runnable = this.sslEngine.getDelegatedTask();
            if (runnable != null) {
                runnable.run();
            } else {
                return this.sslEngine.getHandshakeStatus();
            }
        }
    }

    static IoBuffer copy(ByteBuffer src) {
        IoBuffer copy = IoBuffer.allocate(src.remaining());
        copy.put(src);
        copy.flip();
        return copy;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SSLStatus <");
        if (this.handshakeComplete) {
            sb.append("SSL established");
        } else {
            sb.append("Processing Handshake").append("; ");
            sb.append("Status : ").append(this.handshakeStatus).append("; ");
        }
        sb.append(", ");
        sb.append("HandshakeComplete :").append(this.handshakeComplete).append(", ");
        sb.append(">");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release() {
        if (this.inNetBuffer != null) {
            this.inNetBuffer.free();
            this.inNetBuffer = null;
        }
        if (this.outNetBuffer != null) {
            this.outNetBuffer.free();
            this.outNetBuffer = null;
        }
    }
}
