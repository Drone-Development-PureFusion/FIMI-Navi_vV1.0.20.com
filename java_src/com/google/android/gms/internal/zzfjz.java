package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfjz extends zzfjy<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfjz(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.zzfjy
    public final void zzbkr() {
        if (!isImmutable()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= zzdbp()) {
                    break;
                }
                Map.Entry<FieldDescriptorType, Object> zzmr = zzmr(i2);
                if (((zzfhs) zzmr.getKey()).zzczn()) {
                    zzmr.setValue(Collections.unmodifiableList((List) zzmr.getValue()));
                }
                i = i2 + 1;
            }
            Iterator it = zzdbq().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzfhs) entry.getKey()).zzczn()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzbkr();
    }
}
