package com.google.android.gms.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
final class zzdys {
    private final ConcurrentHashMap<zzdyt, List<Throwable>> zzmmi = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzmmj = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzmmj.poll();
        while (poll != null) {
            this.zzmmi.remove(poll);
            poll = this.zzmmj.poll();
        }
        return this.zzmmi.get(new zzdyt(th, null));
    }
}
