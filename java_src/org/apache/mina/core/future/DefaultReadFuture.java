package org.apache.mina.core.future;

import com.facebook.share.internal.ShareConstants;
import com.umeng.analytics.pro.C2216b;
import java.io.IOException;
import org.apache.mina.core.RuntimeIoException;
import org.apache.mina.core.session.IoSession;
/* loaded from: classes2.dex */
public class DefaultReadFuture extends DefaultIoFuture implements ReadFuture {
    private static final Object CLOSED = new Object();

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

    public DefaultReadFuture(IoSession session) {
        super(session);
    }

    @Override // org.apache.mina.core.future.ReadFuture
    public Object getMessage() {
        Object v;
        if (isDone() && (v = getValue()) != CLOSED) {
            if (v instanceof RuntimeException) {
                throw ((RuntimeException) v);
            }
            if (v instanceof Error) {
                throw ((Error) v);
            }
            if ((v instanceof IOException) || (v instanceof Exception)) {
                throw new RuntimeIoException((Exception) v);
            }
            return v;
        }
        return null;
    }

    @Override // org.apache.mina.core.future.ReadFuture
    public boolean isRead() {
        Object v;
        return isDone() && (v = getValue()) != CLOSED && !(v instanceof Throwable);
    }

    @Override // org.apache.mina.core.future.ReadFuture
    public boolean isClosed() {
        return isDone() && getValue() == CLOSED;
    }

    @Override // org.apache.mina.core.future.ReadFuture
    public Throwable getException() {
        if (isDone()) {
            Object v = getValue();
            if (v instanceof Throwable) {
                return (Throwable) v;
            }
        }
        return null;
    }

    @Override // org.apache.mina.core.future.ReadFuture
    public void setClosed() {
        setValue(CLOSED);
    }

    @Override // org.apache.mina.core.future.ReadFuture
    public void setRead(Object message) {
        if (message == null) {
            throw new IllegalArgumentException(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        }
        setValue(message);
    }

    @Override // org.apache.mina.core.future.ReadFuture
    public void setException(Throwable exception) {
        if (exception == null) {
            throw new IllegalArgumentException(C2216b.f448ao);
        }
        setValue(exception);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: await  reason: collision with other method in class */
    public ReadFuture mo1924await() throws InterruptedException {
        return (ReadFuture) super.mo1924await();
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: awaitUninterruptibly  reason: collision with other method in class */
    public ReadFuture mo1925awaitUninterruptibly() {
        return (ReadFuture) super.mo1925awaitUninterruptibly();
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: addListener  reason: collision with other method in class */
    public ReadFuture mo1923addListener(IoFutureListener<?> listener) {
        return (ReadFuture) super.mo1923addListener(listener);
    }

    @Override // org.apache.mina.core.future.DefaultIoFuture, org.apache.mina.core.future.IoFuture
    /* renamed from: removeListener  reason: collision with other method in class */
    public ReadFuture mo1926removeListener(IoFutureListener<?> listener) {
        return (ReadFuture) super.mo1926removeListener(listener);
    }
}
