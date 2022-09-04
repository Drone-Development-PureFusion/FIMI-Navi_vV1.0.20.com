package org.apache.mina.core.future;
/* loaded from: classes2.dex */
public interface WriteFuture extends IoFuture {
    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: addListener */
    WriteFuture mo1923addListener(IoFutureListener<?> ioFutureListener);

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: await */
    WriteFuture mo1924await() throws InterruptedException;

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: awaitUninterruptibly */
    WriteFuture mo1925awaitUninterruptibly();

    Throwable getException();

    boolean isWritten();

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener */
    WriteFuture mo1926removeListener(IoFutureListener<?> ioFutureListener);

    void setException(Throwable th);

    void setWritten();
}
