package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
@Hide
/* loaded from: classes2.dex */
public abstract class zzg<T> extends AbstractDataBuffer<T> {
    private boolean zzgcy = false;
    private ArrayList<Integer> zzgcz;

    protected zzg(DataHolder dataHolder) {
        super(dataHolder);
    }

    private final void zzalk() {
        synchronized (this) {
            if (!this.zzgcy) {
                int i = this.zzfxb.zzgcq;
                this.zzgcz = new ArrayList<>();
                if (i > 0) {
                    this.zzgcz.add(0);
                    String zzalj = zzalj();
                    String zzd = this.zzfxb.zzd(zzalj, 0, this.zzfxb.zzby(0));
                    int i2 = 1;
                    while (i2 < i) {
                        int zzby = this.zzfxb.zzby(i2);
                        String zzd2 = this.zzfxb.zzd(zzalj, i2, zzby);
                        if (zzd2 == null) {
                            throw new NullPointerException(new StringBuilder(String.valueOf(zzalj).length() + 78).append("Missing value for markerColumn: ").append(zzalj).append(", at row: ").append(i2).append(", for window: ").append(zzby).toString());
                        }
                        if (!zzd2.equals(zzd)) {
                            this.zzgcz.add(Integer.valueOf(i2));
                        } else {
                            zzd2 = zzd;
                        }
                        i2++;
                        zzd = zzd2;
                    }
                }
                this.zzgcy = true;
            }
        }
    }

    private final int zzcb(int i) {
        if (i < 0 || i >= this.zzgcz.size()) {
            throw new IllegalArgumentException(new StringBuilder(53).append("Position ").append(i).append(" is out of bounds for this buffer").toString());
        }
        return this.zzgcz.get(i).intValue();
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public final T get(int i) {
        int i2;
        zzalk();
        int zzcb = zzcb(i);
        if (i < 0 || i == this.zzgcz.size()) {
            i2 = 0;
        } else {
            i2 = i == this.zzgcz.size() + (-1) ? this.zzfxb.zzgcq - this.zzgcz.get(i).intValue() : this.zzgcz.get(i + 1).intValue() - this.zzgcz.get(i).intValue();
            if (i2 == 1) {
                this.zzfxb.zzby(zzcb(i));
            }
        }
        return zzl(zzcb, i2);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        zzalk();
        return this.zzgcz.size();
    }

    @Hide
    protected abstract String zzalj();

    @Hide
    protected abstract T zzl(int i, int i2);
}
