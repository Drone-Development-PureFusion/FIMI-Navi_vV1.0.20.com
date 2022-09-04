package org.apache.mina.core.future;

import org.apache.mina.core.session.IoSession;
/* loaded from: classes2.dex */
public class DefaultCloseFuture extends DefaultIoFuture implements CloseFuture {
    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: addListener  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ IoFuture mo1923addListener(IoFutureListener ioFutureListener) {
        return mo1923addListener((IoFutureListener<?>) ioFutureListener);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ IoFuture mo1926removeListener(IoFutureListener ioFutureListener) {
        return mo1926removeListener((IoFutureListener<?>) ioFutureListener);
    }

    public DefaultCloseFuture(IoSession session) {
        super(session);
    }

    @Override // org.apache.mina.core.future.CloseFuture
    public boolean isClosed() {
        if (isDone()) {
            return ((Boolean) getValue()).booleanValue();
        }
        return false;
    }

    @Override // org.apache.mina.core.future.CloseFuture
    public void setClosed() {
        setValue(Boolean.TRUE);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: await */
    public CloseFuture mo1924await() throws InterruptedException {
        return (CloseFuture) super.mo1924await();
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: awaitUninterruptibly */
    public CloseFuture mo1925awaitUninterruptibly() {
        return (CloseFuture) super.mo1925awaitUninterruptibly();
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: addListener */
    public CloseFuture mo1923addListener(IoFutureListener<?> listener) {
        return (CloseFuture) super.mo1923addListener(listener);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener */
    public CloseFuture mo1926removeListener(IoFutureListener<?> listener) {
        return (CloseFuture) super.mo1926removeListener(listener);
    }
}
