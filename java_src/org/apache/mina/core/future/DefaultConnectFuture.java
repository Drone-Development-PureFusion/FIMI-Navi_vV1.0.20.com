package org.apache.mina.core.future;

import com.umeng.analytics.pro.C2216b;
import org.apache.mina.core.RuntimeIoException;
import org.apache.mina.core.session.IoSession;
/* loaded from: classes2.dex */
public class DefaultConnectFuture extends DefaultIoFuture implements ConnectFuture {
    private static final Object CANCELED = new Object();

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

    public DefaultConnectFuture() {
        super(null);
    }

    public static ConnectFuture newFailedFuture(Throwable exception) {
        DefaultConnectFuture failedFuture = new DefaultConnectFuture();
        failedFuture.setException(exception);
        return failedFuture;
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    public IoSession getSession() {
        Object v = getValue();
        if (v instanceof IoSession) {
            return (IoSession) v;
        }
        if (v instanceof RuntimeException) {
            throw ((RuntimeException) v);
        }
        if (v instanceof Error) {
            throw ((Error) v);
        }
        if (v instanceof Throwable) {
            throw ((RuntimeIoException) new RuntimeIoException("Failed to get the session.").initCause((Throwable) v));
        }
        return null;
    }

    @Override // org.apache.mina.core.future.ConnectFuture
    public Throwable getException() {
        Object v = getValue();
        if (v instanceof Throwable) {
            return (Throwable) v;
        }
        return null;
    }

    @Override // org.apache.mina.core.future.ConnectFuture
    public boolean isConnected() {
        return getValue() instanceof IoSession;
    }

    @Override // org.apache.mina.core.future.ConnectFuture
    public boolean isCanceled() {
        return getValue() == CANCELED;
    }

    @Override // org.apache.mina.core.future.ConnectFuture
    public void setSession(IoSession session) {
        if (session == null) {
            throw new IllegalArgumentException(C2216b.f436ac);
        }
        setValue(session);
    }

    @Override // org.apache.mina.core.future.ConnectFuture
    public void setException(Throwable exception) {
        if (exception == null) {
            throw new IllegalArgumentException(C2216b.f448ao);
        }
        setValue(exception);
    }

    @Override // org.apache.mina.core.future.ConnectFuture
    public boolean cancel() {
        return setValue(CANCELED);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: await */
    public ConnectFuture mo1924await() throws InterruptedException {
        return (ConnectFuture) super.mo1924await();
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: awaitUninterruptibly */
    public ConnectFuture mo1925awaitUninterruptibly() {
        return (ConnectFuture) super.mo1925awaitUninterruptibly();
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: addListener */
    public ConnectFuture mo1923addListener(IoFutureListener<?> listener) {
        return (ConnectFuture) super.mo1923addListener(listener);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener */
    public ConnectFuture mo1926removeListener(IoFutureListener<?> listener) {
        return (ConnectFuture) super.mo1926removeListener(listener);
    }
}
