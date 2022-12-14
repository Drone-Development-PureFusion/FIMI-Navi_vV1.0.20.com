package org.apache.mina.core.session;

import android.support.p001v4.app.NotificationCompat;
import ch.qos.logback.classic.spi.CallerData;
import java.io.IOException;
import java.net.SocketAddress;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import org.apache.mina.core.file.FileRegion;
import org.apache.mina.core.filterchain.DefaultIoFilterChain;
import org.apache.mina.core.filterchain.IoFilterChain;
import org.apache.mina.core.service.AbstractIoAcceptor;
import org.apache.mina.core.service.DefaultTransportMetadata;
import org.apache.mina.core.service.IoHandler;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.service.IoProcessor;
import org.apache.mina.core.service.IoService;
import org.apache.mina.core.service.TransportMetadata;
import org.apache.mina.core.write.WriteRequest;
import org.apache.mina.core.write.WriteRequestQueue;
/* loaded from: classes2.dex */
public class DummySession extends AbstractIoSession {
    private static final TransportMetadata TRANSPORT_METADATA = new DefaultTransportMetadata("mina", "dummy", false, false, SocketAddress.class, IoSessionConfig.class, Object.class);
    private static final SocketAddress ANONYMOUS_ADDRESS = new SocketAddress() { // from class: org.apache.mina.core.session.DummySession.1
        private static final long serialVersionUID = -496112902353454179L;

        public String toString() {
            return CallerData.f38NA;
        }
    };
    private volatile IoSessionConfig config = new AbstractIoSessionConfig() { // from class: org.apache.mina.core.session.DummySession.2
    };
    private final IoFilterChain filterChain = new DefaultIoFilterChain(this);
    private volatile IoHandler handler = new IoHandlerAdapter();
    private volatile SocketAddress localAddress = ANONYMOUS_ADDRESS;
    private volatile SocketAddress remoteAddress = ANONYMOUS_ADDRESS;
    private volatile TransportMetadata transportMetadata = TRANSPORT_METADATA;
    private final IoProcessor<IoSession> processor = new IoProcessor<IoSession>() { // from class: org.apache.mina.core.session.DummySession.6
        @Override // org.apache.mina.core.service.IoProcessor
        public void add(IoSession session) {
        }

        @Override // org.apache.mina.core.service.IoProcessor
        public void flush(IoSession session) {
            DummySession s = (DummySession) session;
            WriteRequest req = s.getWriteRequestQueue().poll(session);
            if (req != null) {
                Object m = req.getMessage();
                if (m instanceof FileRegion) {
                    FileRegion file = (FileRegion) m;
                    try {
                        file.getFileChannel().position(file.getPosition() + file.getRemainingBytes());
                        file.update(file.getRemainingBytes());
                    } catch (IOException e) {
                        s.getFilterChain().fireExceptionCaught(e);
                    }
                }
                DummySession.this.getFilterChain().fireMessageSent(req);
            }
        }

        @Override // org.apache.mina.core.service.IoProcessor
        public void write(IoSession session, WriteRequest writeRequest) {
            WriteRequestQueue writeRequestQueue = session.getWriteRequestQueue();
            writeRequestQueue.offer(session, writeRequest);
            if (!session.isWriteSuspended()) {
                flush(session);
            }
        }

        @Override // org.apache.mina.core.service.IoProcessor
        public void remove(IoSession session) {
            if (!session.getCloseFuture().isClosed()) {
                session.getFilterChain().fireSessionClosed();
            }
        }

        @Override // org.apache.mina.core.service.IoProcessor
        public void updateTrafficControl(IoSession session) {
        }

        @Override // org.apache.mina.core.service.IoProcessor
        public void dispose() {
        }

        @Override // org.apache.mina.core.service.IoProcessor
        public boolean isDisposed() {
            return false;
        }

        @Override // org.apache.mina.core.service.IoProcessor
        public boolean isDisposing() {
            return false;
        }
    };
    private volatile IoService service = super.getService();

    public DummySession() {
        super(new AbstractIoAcceptor(new AbstractIoSessionConfig() { // from class: org.apache.mina.core.session.DummySession.3
        }, new Executor() { // from class: org.apache.mina.core.session.DummySession.4
            @Override // java.util.concurrent.Executor
            public void execute(Runnable command) {
            }
        }) { // from class: org.apache.mina.core.session.DummySession.5
            @Override // org.apache.mina.core.service.AbstractIoAcceptor
            protected Set<SocketAddress> bindInternal(List<? extends SocketAddress> localAddresses) throws Exception {
                throw new UnsupportedOperationException();
            }

            @Override // org.apache.mina.core.service.AbstractIoAcceptor
            protected void unbind0(List<? extends SocketAddress> localAddresses) throws Exception {
                throw new UnsupportedOperationException();
            }

            @Override // org.apache.mina.core.service.IoAcceptor
            public IoSession newSession(SocketAddress remoteAddress, SocketAddress localAddress) {
                throw new UnsupportedOperationException();
            }

            @Override // org.apache.mina.core.service.IoService
            public TransportMetadata getTransportMetadata() {
                return DummySession.TRANSPORT_METADATA;
            }

            @Override // org.apache.mina.core.service.AbstractIoService
            protected void dispose0() throws Exception {
            }

            @Override // org.apache.mina.core.service.IoService
            /* renamed from: getSessionConfig */
            public IoSessionConfig mo1950getSessionConfig() {
                return this.sessionConfig;
            }
        });
        try {
            IoSessionDataStructureFactory factory = new DefaultIoSessionDataStructureFactory();
            setAttributeMap(factory.getAttributeMap(this));
            setWriteRequestQueue(factory.getWriteRequestQueue(this));
        } catch (Exception e) {
            throw new InternalError();
        }
    }

    @Override // org.apache.mina.core.session.AbstractIoSession, org.apache.mina.core.session.IoSession
    /* renamed from: getConfig */
    public IoSessionConfig mo1951getConfig() {
        return this.config;
    }

    public void setConfig(IoSessionConfig config) {
        if (config == null) {
            throw new IllegalArgumentException("config");
        }
        this.config = config;
    }

    @Override // org.apache.mina.core.session.IoSession
    public IoFilterChain getFilterChain() {
        return this.filterChain;
    }

    @Override // org.apache.mina.core.session.AbstractIoSession, org.apache.mina.core.session.IoSession
    public IoHandler getHandler() {
        return this.handler;
    }

    public void setHandler(IoHandler handler) {
        if (handler == null) {
            throw new IllegalArgumentException("handler");
        }
        this.handler = handler;
    }

    @Override // org.apache.mina.core.session.IoSession
    /* renamed from: getLocalAddress */
    public SocketAddress mo1952getLocalAddress() {
        return this.localAddress;
    }

    @Override // org.apache.mina.core.session.IoSession
    /* renamed from: getRemoteAddress */
    public SocketAddress mo1953getRemoteAddress() {
        return this.remoteAddress;
    }

    public void setLocalAddress(SocketAddress localAddress) {
        if (localAddress == null) {
            throw new IllegalArgumentException("localAddress");
        }
        this.localAddress = localAddress;
    }

    public void setRemoteAddress(SocketAddress remoteAddress) {
        if (remoteAddress == null) {
            throw new IllegalArgumentException("remoteAddress");
        }
        this.remoteAddress = remoteAddress;
    }

    @Override // org.apache.mina.core.session.AbstractIoSession, org.apache.mina.core.session.IoSession
    public IoService getService() {
        return this.service;
    }

    public void setService(IoService service) {
        if (service == null) {
            throw new IllegalArgumentException(NotificationCompat.CATEGORY_SERVICE);
        }
        this.service = service;
    }

    @Override // org.apache.mina.core.session.AbstractIoSession
    public final IoProcessor<IoSession> getProcessor() {
        return this.processor;
    }

    @Override // org.apache.mina.core.session.IoSession
    public TransportMetadata getTransportMetadata() {
        return this.transportMetadata;
    }

    public void setTransportMetadata(TransportMetadata transportMetadata) {
        if (transportMetadata == null) {
            throw new IllegalArgumentException("transportMetadata");
        }
        this.transportMetadata = transportMetadata;
    }

    @Override // org.apache.mina.core.session.AbstractIoSession
    public void setScheduledWriteBytes(int byteCount) {
        super.setScheduledWriteBytes(byteCount);
    }

    @Override // org.apache.mina.core.session.AbstractIoSession
    public void setScheduledWriteMessages(int messages) {
        super.setScheduledWriteMessages(messages);
    }

    public void updateThroughput(boolean force) {
        super.updateThroughput(System.currentTimeMillis(), force);
    }
}
