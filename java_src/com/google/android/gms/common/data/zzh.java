package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Hide;
import java.util.NoSuchElementException;
@Hide
/* loaded from: classes2.dex */
public final class zzh<T> extends zzb<T> {
    private T zzgda;

    public zzh(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.zzb, java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.zzgcf).toString());
        }
        this.zzgcf++;
        if (this.zzgcf == 0) {
            this.zzgda = this.zzgce.get(0);
            if (!(this.zzgda instanceof zzc)) {
                String valueOf = String.valueOf(this.zzgda.getClass());
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 44).append("DataBuffer reference of type ").append(valueOf).append(" is not movable").toString());
            }
        } else {
            ((zzc) this.zzgda).zzbw(this.zzgcf);
        }
        return this.zzgda;
    }
}
