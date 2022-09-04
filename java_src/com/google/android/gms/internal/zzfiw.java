package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzfiw<K, V> extends LinkedHashMap<K, V> {
    private static final zzfiw zzprd;
    private boolean zzpnq = true;

    static {
        zzfiw zzfiwVar = new zzfiw();
        zzprd = zzfiwVar;
        zzfiwVar.zzpnq = false;
    }

    private zzfiw() {
    }

    private zzfiw(Map<K, V> map) {
        super(map);
    }

    private static int zzcs(Object obj) {
        if (obj instanceof byte[]) {
            return zzfhz.hashCode((byte[]) obj);
        }
        if (!(obj instanceof zzfia)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    public static <K, V> zzfiw<K, V> zzdat() {
        return zzprd;
    }

    private final void zzdav() {
        if (!this.zzpnq) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzdav();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean z;
        boolean equals;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this != map) {
                if (size() == map.size()) {
                    for (Map.Entry<K, V> entry : entrySet()) {
                        if (!map.containsKey(entry.getKey())) {
                            z = false;
                            break;
                        }
                        V value = entry.getValue();
                        Object obj2 = map.get(entry.getKey());
                        if (!(value instanceof byte[]) || !(obj2 instanceof byte[])) {
                            equals = value.equals(obj2);
                            continue;
                        } else {
                            equals = Arrays.equals((byte[]) value, (byte[]) obj2);
                            continue;
                        }
                        if (!equals) {
                            z = false;
                            break;
                        }
                    }
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
            z = true;
            if (z) {
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = (zzcs(next.getValue()) ^ zzcs(next.getKey())) + i2;
            } else {
                return i2;
            }
        }
    }

    public final boolean isMutable() {
        return this.zzpnq;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        zzdav();
        zzfhz.checkNotNull(k);
        zzfhz.checkNotNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzdav();
        for (K k : map.keySet()) {
            zzfhz.checkNotNull(k);
            zzfhz.checkNotNull(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzdav();
        return (V) super.remove(obj);
    }

    public final void zza(zzfiw<K, V> zzfiwVar) {
        zzdav();
        if (!zzfiwVar.isEmpty()) {
            putAll(zzfiwVar);
        }
    }

    public final void zzbkr() {
        this.zzpnq = false;
    }

    public final zzfiw<K, V> zzdau() {
        return isEmpty() ? new zzfiw<>() : new zzfiw<>(this);
    }
}
