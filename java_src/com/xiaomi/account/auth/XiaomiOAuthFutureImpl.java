package com.xiaomi.account.auth;

import android.accounts.OperationCanceledException;
import android.os.Looper;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public class XiaomiOAuthFutureImpl<V> extends FutureTask<V> implements XiaomiOAuthFuture<V> {
    private static final long DEFAULT_TIMEOUT_MINUTE = 10;
    private IXiaomiAuthResponse mResponse;

    private void ensureNotOnMainThread() {
        Looper looper = Looper.myLooper();
        if (looper != null && looper == Looper.getMainLooper()) {
            throw new IllegalStateException("calling this from your main thread can lead to deadlock");
        }
    }

    public XiaomiOAuthFutureImpl() {
        super(new Callable<V>() { // from class: com.xiaomi.account.auth.XiaomiOAuthFutureImpl.1
            @Override // java.util.concurrent.Callable
            public V call() throws Exception {
                throw new IllegalStateException("this should never be called");
            }
        });
    }

    @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
    /* renamed from: getResult */
    public V mo1883getResult() throws IOException, OperationCanceledException, XMAuthericationException {
        return internalGetResult(Long.valueOf((long) DEFAULT_TIMEOUT_MINUTE), TimeUnit.MINUTES);
    }

    @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
    /* renamed from: getResult */
    public V mo1884getResult(long timeout, TimeUnit unit) throws IOException, OperationCanceledException, XMAuthericationException {
        return internalGetResult(Long.valueOf(timeout), unit);
    }

    @Override // java.util.concurrent.FutureTask
    public void setException(Throwable t) {
        super.setException(t);
    }

    @Override // java.util.concurrent.FutureTask
    public void set(V v) {
        super.set(v);
    }

    private V internalGetResult(Long timeout, TimeUnit unit) throws OperationCanceledException, IOException, XMAuthericationException {
        V v;
        if (!isDone()) {
            ensureNotOnMainThread();
        }
        try {
            try {
                try {
                    if (timeout == null) {
                        v = get();
                        cancel(true);
                    } else {
                        v = get(timeout.longValue(), unit);
                        cancel(true);
                    }
                    return v;
                } catch (InterruptedException e) {
                    cancel(true);
                    throw new OperationCanceledException();
                } catch (CancellationException e2) {
                    throw new OperationCanceledException();
                }
            } catch (ExecutionException e3) {
                Throwable cause = e3.getCause();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                if (cause instanceof XMAuthericationException) {
                    throw ((XMAuthericationException) cause);
                }
                if (!(cause instanceof OperationCanceledException)) {
                    throw new XMAuthericationException(cause);
                }
                throw ((OperationCanceledException) cause);
            } catch (TimeoutException e4) {
                cancel(true);
                throw new OperationCanceledException();
            }
        } catch (Throwable th) {
            cancel(true);
            throw th;
        }
    }
}
