package org.apache.mina.core.future;
/* loaded from: classes2.dex */
public interface CloseFuture extends IoFuture {
    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: addListener */
    CloseFuture mo1923addListener(IoFutureListener<?> ioFutureListener);

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: await */
    CloseFuture mo1924await() throws InterruptedException;

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: awaitUninterruptibly */
    CloseFuture mo1925awaitUninterruptibly();

    boolean isClosed();

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener */
    CloseFuture mo1926removeListener(IoFutureListener<?> ioFutureListener);

    void setClosed();
}
