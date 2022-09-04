package org.apache.mina.core.future;

import org.apache.mina.core.session.IoSession;
/* loaded from: classes2.dex */
public interface ConnectFuture extends IoFuture {
    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: addListener */
    ConnectFuture mo1923addListener(IoFutureListener<?> ioFutureListener);

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: await */
    ConnectFuture mo1924await() throws InterruptedException;

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: awaitUninterruptibly */
    ConnectFuture mo1925awaitUninterruptibly();

    boolean cancel();

    Throwable getException();

    @Override // org.apache.mina.core.future.IoFuture
    IoSession getSession();

    boolean isCanceled();

    boolean isConnected();

    @Override // org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener */
    ConnectFuture mo1926removeListener(IoFutureListener<?> ioFutureListener);

    void setException(Throwable th);

    void setSession(IoSession ioSession);
}
