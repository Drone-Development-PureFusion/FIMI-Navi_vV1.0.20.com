package org.apache.mina.core.write;

import com.facebook.share.internal.ShareConstants;
import java.net.SocketAddress;
import java.util.concurrent.TimeUnit;
import org.apache.mina.core.future.IoFuture;
import org.apache.mina.core.future.IoFutureListener;
import org.apache.mina.core.future.WriteFuture;
import org.apache.mina.core.session.IoSession;
/* loaded from: classes2.dex */
public class DefaultWriteRequest implements WriteRequest {
    public static final byte[] EMPTY_MESSAGE = new byte[0];
    private static final WriteFuture UNUSED_FUTURE = new WriteFuture() { // from class: org.apache.mina.core.write.DefaultWriteRequest.1
        @Override // org.apache.mina.core.future.WriteFuture, org.apache.mina.core.future.IoFuture
        /* renamed from: addListener */
        public /* bridge */ /* synthetic */ IoFuture mo1923addListener(IoFutureListener ioFutureListener) {
            return mo1923addListener((IoFutureListener<?>) ioFutureListener);
        }

        @Override // org.apache.mina.core.future.WriteFuture, org.apache.mina.core.future.IoFuture
        /* renamed from: removeListener */
        public /* bridge */ /* synthetic */ IoFuture mo1926removeListener(IoFutureListener ioFutureListener) {
            return mo1926removeListener((IoFutureListener<?>) ioFutureListener);
        }

        @Override // org.apache.mina.core.future.WriteFuture
        public boolean isWritten() {
            return false;
        }

        @Override // org.apache.mina.core.future.WriteFuture
        public void setWritten() {
        }

        @Override // org.apache.mina.core.future.IoFuture
        public IoSession getSession() {
            return null;
        }

        @Override // org.apache.mina.core.future.IoFuture
        public void join() {
        }

        @Override // org.apache.mina.core.future.IoFuture
        public boolean join(long timeoutInMillis) {
            return true;
        }

        @Override // org.apache.mina.core.future.IoFuture
        public boolean isDone() {
            return true;
        }

        @Override // org.apache.mina.core.future.WriteFuture, org.apache.mina.core.future.IoFuture
        /* renamed from: addListener  reason: collision with other method in class */
        public WriteFuture mo1923addListener(IoFutureListener<?> listener) {
            throw new IllegalStateException("You can't add a listener to a dummy future.");
        }

        @Override // org.apache.mina.core.future.WriteFuture, org.apache.mina.core.future.IoFuture
        /* renamed from: removeListener  reason: collision with other method in class */
        public WriteFuture mo1926removeListener(IoFutureListener<?> listener) {
            throw new IllegalStateException("You can't add a listener to a dummy future.");
        }

        @Override // org.apache.mina.core.future.WriteFuture, org.apache.mina.core.future.IoFuture
        /* renamed from: await  reason: collision with other method in class */
        public WriteFuture mo1924await() throws InterruptedException {
            return this;
        }

        @Override // org.apache.mina.core.future.IoFuture
        public boolean await(long timeout, TimeUnit unit) throws InterruptedException {
            return true;
        }

        @Override // org.apache.mina.core.future.IoFuture
        public boolean await(long timeoutMillis) throws InterruptedException {
            return true;
        }

        @Override // org.apache.mina.core.future.WriteFuture, org.apache.mina.core.future.IoFuture
        /* renamed from: awaitUninterruptibly  reason: collision with other method in class */
        public WriteFuture mo1925awaitUninterruptibly() {
            return this;
        }

        @Override // org.apache.mina.core.future.IoFuture
        public boolean awaitUninterruptibly(long timeout, TimeUnit unit) {
            return true;
        }

        @Override // org.apache.mina.core.future.IoFuture
        public boolean awaitUninterruptibly(long timeoutMillis) {
            return true;
        }

        @Override // org.apache.mina.core.future.WriteFuture
        public Throwable getException() {
            return null;
        }

        @Override // org.apache.mina.core.future.WriteFuture
        public void setException(Throwable cause) {
        }
    };
    private final SocketAddress destination;
    private final WriteFuture future;
    private final Object message;

    public DefaultWriteRequest(Object message) {
        this(message, null, null);
    }

    public DefaultWriteRequest(Object message, WriteFuture future) {
        this(message, future, null);
    }

    public DefaultWriteRequest(Object message, WriteFuture future, SocketAddress destination) {
        if (message == null) {
            throw new IllegalArgumentException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        future = future == null ? UNUSED_FUTURE : future;
        this.message = message;
        this.future = future;
        this.destination = destination;
    }

    @Override // org.apache.mina.core.write.WriteRequest
    public WriteFuture getFuture() {
        return this.future;
    }

    @Override // org.apache.mina.core.write.WriteRequest
    public Object getMessage() {
        return this.message;
    }

    @Override // org.apache.mina.core.write.WriteRequest
    public WriteRequest getOriginalRequest() {
        return this;
    }

    @Override // org.apache.mina.core.write.WriteRequest
    public SocketAddress getDestination() {
        return this.destination;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("WriteRequest: ");
        if (this.message.getClass().getName().equals(Object.class.getName())) {
            sb.append("CLOSE_REQUEST");
        } else if (getDestination() == null) {
            sb.append(this.message);
        } else {
            sb.append(this.message);
            sb.append(" => ");
            sb.append(getDestination());
        }
        return sb.toString();
    }

    @Override // org.apache.mina.core.write.WriteRequest
    public boolean isEncoded() {
        return false;
    }
}
