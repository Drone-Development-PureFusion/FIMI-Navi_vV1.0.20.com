package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes2.dex */
public final class zzdog {
    @NonNull
    public static <T> T checkNotNull(@Nullable T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }
}
