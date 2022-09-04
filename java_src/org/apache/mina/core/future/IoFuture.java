package org.apache.mina.core.future;

import java.util.concurrent.TimeUnit;
import org.apache.mina.core.session.IoSession;
/* loaded from: classes.dex */
public interface IoFuture {
    /* renamed from: addListener */
    IoFuture mo1923addListener(IoFutureListener<?> ioFutureListener);

    /* renamed from: await */
    IoFuture mo1924await() throws InterruptedException;

    boolean await(long j) throws InterruptedException;

    boolean await(long j, TimeUnit timeUnit) throws InterruptedException;

    /* renamed from: awaitUninterruptibly */
    IoFuture mo1925awaitUninterruptibly();

    boolean awaitUninterruptibly(long j);

    boolean awaitUninterruptibly(long j, TimeUnit timeUnit);

    IoSession getSession();

    boolean isDone();

    @Deprecated
    void join();

    @Deprecated
    boolean join(long j);

    /* renamed from: removeListener */
    IoFuture mo1926removeListener(IoFutureListener<?> ioFutureListener);
}
