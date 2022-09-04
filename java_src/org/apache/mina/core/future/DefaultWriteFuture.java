package org.apache.mina.core.future;

import com.umeng.analytics.pro.C2216b;
import org.apache.mina.core.session.IoSession;
/* loaded from: classes2.dex */
public class DefaultWriteFuture extends DefaultIoFuture implements WriteFuture {
    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: addListener */
    public /* bridge */ /* synthetic */ IoFuture mo1923addListener(IoFutureListener ioFutureListener) {
        return mo1923addListener((IoFutureListener<?>) ioFutureListener);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener */
    public /* bridge */ /* synthetic */ IoFuture mo1926removeListener(IoFutureListener ioFutureListener) {
        return mo1926removeListener((IoFutureListener<?>) ioFutureListener);
    }

    public static WriteFuture newWrittenFuture(IoSession session) {
        DefaultWriteFuture writtenFuture = new DefaultWriteFuture(session);
        writtenFuture.setWritten();
        return writtenFuture;
    }

    public static WriteFuture newNotWrittenFuture(IoSession session, Throwable cause) {
        DefaultWriteFuture unwrittenFuture = new DefaultWriteFuture(session);
        unwrittenFuture.setException(cause);
        return unwrittenFuture;
    }

    public DefaultWriteFuture(IoSession session) {
        super(session);
    }

    @Override // org.apache.mina.core.future.WriteFuture
    public boolean isWritten() {
        if (isDone()) {
            Object v = getValue();
            if (v instanceof Boolean) {
                return ((Boolean) v).booleanValue();
            }
        }
        return false;
    }

    @Override // org.apache.mina.core.future.WriteFuture
    public Throwable getException() {
        if (isDone()) {
            Object v = getValue();
            if (v instanceof Throwable) {
                return (Throwable) v;
            }
        }
        return null;
    }

    @Override // org.apache.mina.core.future.WriteFuture
    public void setWritten() {
        setValue(Boolean.TRUE);
    }

    @Override // org.apache.mina.core.future.WriteFuture
    public void setException(Throwable exception) {
        if (exception == null) {
            throw new IllegalArgumentException(C2216b.f448ao);
        }
        setValue(exception);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: await  reason: collision with other method in class */
    public WriteFuture mo1924await() throws InterruptedException {
        return (WriteFuture) super.mo1924await();
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: awaitUninterruptibly  reason: collision with other method in class */
    public WriteFuture mo1925awaitUninterruptibly() {
        return (WriteFuture) super.mo1925awaitUninterruptibly();
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: addListener  reason: collision with other method in class */
    public WriteFuture mo1923addListener(IoFutureListener<?> listener) {
        return (WriteFuture) super.mo1923addListener(listener);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener  reason: collision with other method in class */
    public WriteFuture mo1926removeListener(IoFutureListener<?> listener) {
        return (WriteFuture) super.mo1926removeListener(listener);
    }
}
