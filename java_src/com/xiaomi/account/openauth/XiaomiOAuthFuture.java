package com.xiaomi.account.openauth;

import android.accounts.OperationCanceledException;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public interface XiaomiOAuthFuture<V> {
    /* renamed from: getResult */
    V mo1883getResult() throws OperationCanceledException, IOException, XMAuthericationException;

    /* renamed from: getResult */
    V mo1884getResult(long j, TimeUnit timeUnit) throws OperationCanceledException, IOException, XMAuthericationException;
}
