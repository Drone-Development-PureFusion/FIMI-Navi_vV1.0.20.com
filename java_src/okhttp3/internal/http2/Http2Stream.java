package okhttp3.internal.http2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;
/* loaded from: classes2.dex */
public final class Http2Stream {
    static final /* synthetic */ boolean $assertionsDisabled;
    long bytesLeftInWriteWindow;
    final Http2Connection connection;
    private boolean hasResponseHeaders;

    /* renamed from: id */
    final int f1464id;
    private final List<Header> requestHeaders;
    private List<Header> responseHeaders;
    final FramingSink sink;
    private final FramingSource source;
    long unacknowledgedBytesRead = 0;
    final StreamTimeout readTimeout = new StreamTimeout();
    final StreamTimeout writeTimeout = new StreamTimeout();
    ErrorCode errorCode = null;

    static {
        $assertionsDisabled = !Http2Stream.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Http2Stream(int id, Http2Connection connection, boolean outFinished, boolean inFinished, List<Header> requestHeaders) {
        if (connection == null) {
            throw new NullPointerException("connection == null");
        }
        if (requestHeaders == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f1464id = id;
        this.connection = connection;
        this.bytesLeftInWriteWindow = connection.peerSettings.getInitialWindowSize();
        this.source = new FramingSource(connection.okHttpSettings.getInitialWindowSize());
        this.sink = new FramingSink();
        this.source.finished = inFinished;
        this.sink.finished = outFinished;
        this.requestHeaders = requestHeaders;
    }

    public int getId() {
        return this.f1464id;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0022, code lost:
        if (r2.hasResponseHeaders == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean isOpen() {
        boolean z = false;
        synchronized (this) {
            if (this.errorCode == null) {
                if ((this.source.finished || this.source.closed) && (this.sink.finished || this.sink.closed)) {
                }
                z = true;
            }
        }
        return z;
    }

    public boolean isLocallyInitiated() {
        boolean streamIsClient = (this.f1464id & 1) == 1;
        return this.connection.client == streamIsClient;
    }

    public Http2Connection getConnection() {
        return this.connection;
    }

    public List<Header> getRequestHeaders() {
        return this.requestHeaders;
    }

    public synchronized List<Header> takeResponseHeaders() throws IOException {
        List<Header> result;
        if (!isLocallyInitiated()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.readTimeout.enter();
        while (this.responseHeaders == null && this.errorCode == null) {
            waitForIo();
        }
        this.readTimeout.exitAndThrowIfTimedOut();
        result = this.responseHeaders;
        if (result != null) {
            this.responseHeaders = null;
        } else {
            throw new StreamResetException(this.errorCode);
        }
        return result;
    }

    public synchronized ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public void sendResponseHeaders(List<Header> responseHeaders, boolean out) throws IOException {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            if (responseHeaders == null) {
                throw new NullPointerException("responseHeaders == null");
            }
            boolean outFinished = false;
            synchronized (this) {
                this.hasResponseHeaders = true;
                if (!out) {
                    this.sink.finished = true;
                    outFinished = true;
                }
            }
            this.connection.writeSynReply(this.f1464id, outFinished, responseHeaders);
            if (outFinished) {
                this.connection.flush();
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    public Timeout readTimeout() {
        return this.readTimeout;
    }

    public Timeout writeTimeout() {
        return this.writeTimeout;
    }

    public Source getSource() {
        return this.source;
    }

    public Sink getSink() {
        synchronized (this) {
            if (!this.hasResponseHeaders && !isLocallyInitiated()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.sink;
    }

    public void close(ErrorCode rstStatusCode) throws IOException {
        if (closeInternal(rstStatusCode)) {
            this.connection.writeSynReset(this.f1464id, rstStatusCode);
        }
    }

    public void closeLater(ErrorCode errorCode) {
        if (closeInternal(errorCode)) {
            this.connection.writeSynResetLater(this.f1464id, errorCode);
        }
    }

    private boolean closeInternal(ErrorCode errorCode) {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.errorCode != null) {
                    return false;
                }
                if (this.source.finished && this.sink.finished) {
                    return false;
                }
                this.errorCode = errorCode;
                notifyAll();
                this.connection.removeStream(this.f1464id);
                return true;
            }
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void receiveHeaders(List<Header> headers) {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            boolean open = true;
            synchronized (this) {
                this.hasResponseHeaders = true;
                if (this.responseHeaders == null) {
                    this.responseHeaders = headers;
                    open = isOpen();
                    notifyAll();
                } else {
                    List<Header> newHeaders = new ArrayList<>();
                    newHeaders.addAll(this.responseHeaders);
                    newHeaders.add(null);
                    newHeaders.addAll(headers);
                    this.responseHeaders = newHeaders;
                }
            }
            if (!open) {
                this.connection.removeStream(this.f1464id);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void receiveData(BufferedSource in, int length) throws IOException {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            this.source.receive(in, length);
            return;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void receiveFin() {
        boolean open;
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.source.finished = true;
                open = isOpen();
                notifyAll();
            }
            if (!open) {
                this.connection.removeStream(this.f1464id);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void receiveRstStream(ErrorCode errorCode) {
        if (this.errorCode == null) {
            this.errorCode = errorCode;
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class FramingSource implements Source {
        static final /* synthetic */ boolean $assertionsDisabled;
        boolean closed;
        boolean finished;
        private final long maxByteCount;
        private final Buffer receiveBuffer = new Buffer();
        private final Buffer readBuffer = new Buffer();

        static {
            $assertionsDisabled = !Http2Stream.class.desiredAssertionStatus();
        }

        FramingSource(long maxByteCount) {
            this.maxByteCount = maxByteCount;
        }

        @Override // okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            long read;
            if (byteCount < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + byteCount);
            }
            synchronized (Http2Stream.this) {
                waitUntilReadable();
                checkNotClosed();
                if (this.readBuffer.size() == 0) {
                    read = -1;
                } else {
                    read = this.readBuffer.read(sink, Math.min(byteCount, this.readBuffer.size()));
                    Http2Stream.this.unacknowledgedBytesRead += read;
                    if (Http2Stream.this.unacknowledgedBytesRead >= Http2Stream.this.connection.okHttpSettings.getInitialWindowSize() / 2) {
                        Http2Stream.this.connection.writeWindowUpdateLater(Http2Stream.this.f1464id, Http2Stream.this.unacknowledgedBytesRead);
                        Http2Stream.this.unacknowledgedBytesRead = 0L;
                    }
                    synchronized (Http2Stream.this.connection) {
                        Http2Stream.this.connection.unacknowledgedBytesRead += read;
                        if (Http2Stream.this.connection.unacknowledgedBytesRead >= Http2Stream.this.connection.okHttpSettings.getInitialWindowSize() / 2) {
                            Http2Stream.this.connection.writeWindowUpdateLater(0, Http2Stream.this.connection.unacknowledgedBytesRead);
                            Http2Stream.this.connection.unacknowledgedBytesRead = 0L;
                        }
                    }
                }
            }
            return read;
        }

        private void waitUntilReadable() throws IOException {
            Http2Stream.this.readTimeout.enter();
            while (this.readBuffer.size() == 0 && !this.finished && !this.closed && Http2Stream.this.errorCode == null) {
                try {
                    Http2Stream.this.waitForIo();
                } finally {
                    Http2Stream.this.readTimeout.exitAndThrowIfTimedOut();
                }
            }
        }

        void receive(BufferedSource in, long byteCount) throws IOException {
            boolean finished;
            boolean flowControlError;
            if ($assertionsDisabled || !Thread.holdsLock(Http2Stream.this)) {
                while (byteCount > 0) {
                    synchronized (Http2Stream.this) {
                        finished = this.finished;
                        flowControlError = this.readBuffer.size() + byteCount > this.maxByteCount;
                    }
                    if (flowControlError) {
                        in.skip(byteCount);
                        Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                        return;
                    } else if (finished) {
                        in.skip(byteCount);
                        return;
                    } else {
                        long read = in.read(this.receiveBuffer, byteCount);
                        if (read == -1) {
                            throw new EOFException();
                        }
                        byteCount -= read;
                        synchronized (Http2Stream.this) {
                            boolean wasEmpty = this.readBuffer.size() == 0;
                            this.readBuffer.writeAll(this.receiveBuffer);
                            if (wasEmpty) {
                                Http2Stream.this.notifyAll();
                            }
                        }
                    }
                }
                return;
            }
            throw new AssertionError();
        }

        @Override // okio.Source
        public Timeout timeout() {
            return Http2Stream.this.readTimeout;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (Http2Stream.this) {
                this.closed = true;
                this.readBuffer.clear();
                Http2Stream.this.notifyAll();
            }
            Http2Stream.this.cancelStreamIfNecessary();
        }

        private void checkNotClosed() throws IOException {
            if (this.closed) {
                throw new IOException("stream closed");
            }
            if (Http2Stream.this.errorCode != null) {
                throw new StreamResetException(Http2Stream.this.errorCode);
            }
        }
    }

    void cancelStreamIfNecessary() throws IOException {
        boolean cancel;
        boolean open;
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                cancel = !this.source.finished && this.source.closed && (this.sink.finished || this.sink.closed);
                open = isOpen();
            }
            if (cancel) {
                close(ErrorCode.CANCEL);
                return;
            } else if (!open) {
                this.connection.removeStream(this.f1464id);
                return;
            } else {
                return;
            }
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class FramingSink implements Sink {
        static final /* synthetic */ boolean $assertionsDisabled;
        private static final long EMIT_BUFFER_SIZE = 16384;
        boolean closed;
        boolean finished;
        private final Buffer sendBuffer = new Buffer();

        static {
            $assertionsDisabled = !Http2Stream.class.desiredAssertionStatus();
        }

        FramingSink() {
        }

        @Override // okio.Sink
        public void write(Buffer source, long byteCount) throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(Http2Stream.this)) {
                this.sendBuffer.write(source, byteCount);
                while (this.sendBuffer.size() >= 16384) {
                    emitFrame(false);
                }
                return;
            }
            throw new AssertionError();
        }

        private void emitFrame(boolean outFinished) throws IOException {
            long toWrite;
            synchronized (Http2Stream.this) {
                Http2Stream.this.writeTimeout.enter();
                while (Http2Stream.this.bytesLeftInWriteWindow <= 0 && !this.finished && !this.closed && Http2Stream.this.errorCode == null) {
                    Http2Stream.this.waitForIo();
                }
                Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
                Http2Stream.this.checkOutNotClosed();
                toWrite = Math.min(Http2Stream.this.bytesLeftInWriteWindow, this.sendBuffer.size());
                Http2Stream.this.bytesLeftInWriteWindow -= toWrite;
            }
            Http2Stream.this.writeTimeout.enter();
            try {
                Http2Stream.this.connection.writeData(Http2Stream.this.f1464id, outFinished && toWrite == this.sendBuffer.size(), this.sendBuffer, toWrite);
            } finally {
                Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(Http2Stream.this)) {
                synchronized (Http2Stream.this) {
                    Http2Stream.this.checkOutNotClosed();
                }
                while (this.sendBuffer.size() > 0) {
                    emitFrame(false);
                    Http2Stream.this.connection.flush();
                }
                return;
            }
            throw new AssertionError();
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return Http2Stream.this.writeTimeout;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(Http2Stream.this)) {
                synchronized (Http2Stream.this) {
                    if (!this.closed) {
                        if (!Http2Stream.this.sink.finished) {
                            if (this.sendBuffer.size() > 0) {
                                while (this.sendBuffer.size() > 0) {
                                    emitFrame(true);
                                }
                            } else {
                                Http2Stream.this.connection.writeData(Http2Stream.this.f1464id, true, null, 0L);
                            }
                        }
                        synchronized (Http2Stream.this) {
                            this.closed = true;
                        }
                        Http2Stream.this.connection.flush();
                        Http2Stream.this.cancelStreamIfNecessary();
                        return;
                    }
                    return;
                }
            }
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addBytesToWriteWindow(long delta) {
        this.bytesLeftInWriteWindow += delta;
        if (delta > 0) {
            notifyAll();
        }
    }

    void checkOutNotClosed() throws IOException {
        if (this.sink.closed) {
            throw new IOException("stream closed");
        }
        if (this.sink.finished) {
            throw new IOException("stream finished");
        }
        if (this.errorCode != null) {
            throw new StreamResetException(this.errorCode);
        }
    }

    void waitForIo() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class StreamTimeout extends AsyncTimeout {
        StreamTimeout() {
        }

        @Override // okio.AsyncTimeout
        protected void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
        }

        @Override // okio.AsyncTimeout
        protected IOException newTimeoutException(IOException cause) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (cause != null) {
                socketTimeoutException.initCause(cause);
            }
            return socketTimeoutException;
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }
    }
}
