package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class zzcm {
    private final Set<zzci<?>> zzfgd = Collections.newSetFromMap(new WeakHashMap());

    public static <L> zzci<L> zzb(@NonNull L l, @NonNull Looper looper, @NonNull String str) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(l, "Listener must not be null");
        com.google.android.gms.common.internal.zzbq.checkNotNull(looper, "Looper must not be null");
        com.google.android.gms.common.internal.zzbq.checkNotNull(str, "Listener type must not be null");
        return new zzci<>(looper, l, str);
    }

    public static <L> zzck<L> zzb(@NonNull L l, @NonNull String str) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(l, "Listener must not be null");
        com.google.android.gms.common.internal.zzbq.checkNotNull(str, "Listener type must not be null");
        com.google.android.gms.common.internal.zzbq.zzh(str, "Listener type must not be empty");
        return new zzck<>(l, str);
    }

    public final void release() {
        for (zzci<?> zzciVar : this.zzfgd) {
            zzciVar.clear();
        }
        this.zzfgd.clear();
    }

    public final <L> zzci<L> zza(@NonNull L l, @NonNull Looper looper, @NonNull String str) {
        zzci<L> zzb = zzb(l, looper, str);
        this.zzfgd.add(zzb);
        return zzb;
    }
}
