package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import java.util.Iterator;
import java.util.NoSuchElementException;
@Hide
/* loaded from: classes2.dex */
public class zzb<T> implements Iterator<T> {
    protected final DataBuffer<T> zzgce;
    protected int zzgcf = -1;

    public zzb(DataBuffer<T> dataBuffer) {
        this.zzgce = (DataBuffer) zzbq.checkNotNull(dataBuffer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.zzgcf < this.zzgce.getCount() + (-1);
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.zzgcf).toString());
        }
        DataBuffer<T> dataBuffer = this.zzgce;
        int i = this.zzgcf + 1;
        this.zzgcf = i;
        return dataBuffer.get(i);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
