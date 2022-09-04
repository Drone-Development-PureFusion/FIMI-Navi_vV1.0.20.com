package com.google.android.gms.common.internal;

import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzbi {
    private final Object zzdht;
    private final List<String> zzgho;

    private zzbi(Object obj) {
        this.zzdht = zzbq.checkNotNull(obj);
        this.zzgho = new ArrayList();
    }

    public final String toString() {
        StringBuilder append = new StringBuilder(100).append(this.zzdht.getClass().getSimpleName()).append(CoreConstants.CURLY_LEFT);
        int size = this.zzgho.size();
        for (int i = 0; i < size; i++) {
            append.append(this.zzgho.get(i));
            if (i < size - 1) {
                append.append(", ");
            }
        }
        return append.append(CoreConstants.CURLY_RIGHT).toString();
    }

    public final zzbi zzg(String str, Object obj) {
        List<String> list = this.zzgho;
        String str2 = (String) zzbq.checkNotNull(str);
        String valueOf = String.valueOf(obj);
        list.add(new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length()).append(str2).append("=").append(valueOf).toString());
        return this;
    }
}
