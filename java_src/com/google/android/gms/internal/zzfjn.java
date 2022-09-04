package com.google.android.gms.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2.dex */
final class zzfjn {
    private static final zzfjn zzprm = new zzfjn();
    private final zzfjw zzprn;
    private final ConcurrentMap<Class<?>, zzfjv<?>> zzpro = new ConcurrentHashMap();

    private zzfjn() {
        zzfjw zzfjwVar = null;
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        for (int i = 0; i <= 0; i++) {
            zzfjwVar = zzua(strArr[0]);
            if (zzfjwVar != null) {
                break;
            }
        }
        this.zzprn = zzfjwVar == null ? new zzfiq() : zzfjwVar;
    }

    public static zzfjn zzdbf() {
        return zzprm;
    }

    private static zzfjw zzua(String str) {
        try {
            return (zzfjw) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    public final <T> zzfjv<T> zzl(Class<T> cls) {
        zzfhz.zzc(cls, "messageType");
        zzfjv<T> zzfjvVar = (zzfjv<T>) this.zzpro.get(cls);
        if (zzfjvVar == null) {
            zzfjv<T> zzk = this.zzprn.zzk(cls);
            zzfhz.zzc(cls, "messageType");
            zzfhz.zzc(zzk, "schema");
            zzfjv<T> zzfjvVar2 = (zzfjv<T>) this.zzpro.putIfAbsent(cls, zzk);
            return zzfjvVar2 != null ? zzfjvVar2 : zzk;
        }
        return zzfjvVar;
    }
}
