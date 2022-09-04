package com.google.android.gms.internal;

import android.os.StrictMode;
import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.Callable;
@Hide
/* loaded from: classes2.dex */
public final class zzccq {
    public static <T> T zzb(Callable<T> callable) throws Exception {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
            return callable.call();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
