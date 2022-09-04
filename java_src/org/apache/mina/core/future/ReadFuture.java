package org.apache.mina.core.future;
/* loaded from: classes2.dex */
public interface ReadFuture extends IoFuture {
    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: addListener */
    ReadFuture mo1923addListener(IoFutureListener<?> ioFutureListener);

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: await */
    ReadFuture mo1924await() throws InterruptedException;

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: awaitUninterruptibly */
    ReadFuture mo1925awaitUninterruptibly();

    Throwable getException();

    Object getMessage();

    boolean isClosed();

    boolean isRead();

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener */
    ReadFuture mo1926removeListener(IoFutureListener<?> ioFutureListener);

    void setClosed();

    void setException(Throwable th);

    void setRead(Object obj);
}
