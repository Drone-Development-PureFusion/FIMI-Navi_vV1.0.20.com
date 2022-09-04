package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
final class zzfke implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private /* synthetic */ zzfjy zzpss;
    private boolean zzpst;
    private Iterator<Map.Entry<K, V>> zzpsu;

    private zzfke(zzfjy zzfjyVar) {
        this.zzpss = zzfjyVar;
        this.pos = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfke(zzfjy zzfjyVar, zzfjz zzfjzVar) {
        this(zzfjyVar);
    }

    private final Iterator<Map.Entry<K, V>> zzdbv() {
        Map map;
        if (this.zzpsu == null) {
            map = this.zzpss.zzpsm;
            this.zzpsu = map.entrySet().iterator();
        }
        return this.zzpsu;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = this.zzpss.zzpsl;
        if (i >= list.size()) {
            map = this.zzpss.zzpsm;
            if (map.isEmpty() || !zzdbv().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzpst = true;
        int i = this.pos + 1;
        this.pos = i;
        list = this.zzpss.zzpsl;
        if (i < list.size()) {
            list2 = this.zzpss.zzpsl;
            return (Map.Entry) list2.get(this.pos);
        }
        return (Map.Entry) zzdbv().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (!this.zzpst) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzpst = false;
        this.zzpss.zzdbr();
        int i = this.pos;
        list = this.zzpss.zzpsl;
        if (i >= list.size()) {
            zzdbv().remove();
            return;
        }
        zzfjy zzfjyVar = this.zzpss;
        int i2 = this.pos;
        this.pos = i2 - 1;
        zzfjyVar.zzms(i2);
    }
}
