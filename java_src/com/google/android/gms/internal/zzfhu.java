package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import com.google.android.gms.internal.zzfhu.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public abstract class zzfhu<MessageType extends zzfhu<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzfgj<MessageType, BuilderType> {
    private static Map<Object, zzfhu<?, ?>> zzppj = new ConcurrentHashMap();
    protected zzfko zzpph = zzfko.zzdca();
    protected int zzppi = -1;

    /* loaded from: classes2.dex */
    public static abstract class zza<MessageType extends zzfhu<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzfgk<MessageType, BuilderType> {
        private final MessageType zzppk;
        protected MessageType zzppl;
        private boolean zzppm = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public zza(MessageType messagetype) {
            this.zzppk = messagetype;
            this.zzppl = (MessageType) messagetype.zza(zzg.zzppx, null, null);
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzf zzfVar = zzf.zzppq;
            messagetype.zza(zzg.zzpps, zzfVar, messagetype2);
            messagetype.zzpph = zzfVar.zza(messagetype.zzpph, messagetype2.zzpph);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.google.android.gms.internal.zzfgk, com.google.android.gms.internal.zzfjd
        /* renamed from: zzd */
        public final BuilderType zzb(zzfhb zzfhbVar, zzfhm zzfhmVar) throws IOException {
            zzczv();
            try {
                this.zzppl.zza(zzg.zzppv, zzfhbVar, zzfhmVar);
                return this;
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof IOException)) {
                    throw e;
                }
                throw ((IOException) e.getCause());
            }
        }

        @Override // com.google.android.gms.internal.zzfgk
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            MessageType messagetype;
            zza zzaVar = (zza) this.zzppk.zza(zzg.zzppy, null, null);
            if (this.zzppm) {
                messagetype = this.zzppl;
            } else {
                MessageType messagetype2 = this.zzppl;
                messagetype2.zza(zzg.zzppw, null, null);
                messagetype2.zzpph.zzbkr();
                this.zzppm = true;
                messagetype = this.zzppl;
            }
            zzaVar.zza((zza) messagetype);
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.zzfje
        public final boolean isInitialized() {
            return zzfhu.zza(this.zzppl, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzfgk
        protected final /* synthetic */ zzfgk zza(zzfgj zzfgjVar) {
            return zza((zza<MessageType, BuilderType>) ((zzfhu) zzfgjVar));
        }

        @Override // com.google.android.gms.internal.zzfgk
        public final /* synthetic */ zzfgk zza(zzfhb zzfhbVar, zzfhm zzfhmVar) throws IOException {
            return (zza) zzb(zzfhbVar, zzfhmVar);
        }

        public final BuilderType zza(MessageType messagetype) {
            zzczv();
            zza(this.zzppl, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.zzfgk
        public final /* synthetic */ zzfgk zzcxj() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.zzfje
        public final /* synthetic */ zzfjc zzczu() {
            return this.zzppk;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void zzczv() {
            if (this.zzppm) {
                MessageType messagetype = (MessageType) this.zzppl.zza(zzg.zzppx, null, null);
                zza(messagetype, this.zzppl);
                this.zzppl = messagetype;
                this.zzppm = false;
            }
        }

        public final MessageType zzczw() {
            if (this.zzppm) {
                return this.zzppl;
            }
            MessageType messagetype = this.zzppl;
            messagetype.zza(zzg.zzppw, null, null);
            messagetype.zzpph.zzbkr();
            this.zzppm = true;
            return this.zzppl;
        }

        public final MessageType zzczx() {
            MessageType messagetype;
            boolean z;
            boolean z2 = true;
            if (this.zzppm) {
                messagetype = this.zzppl;
            } else {
                MessageType messagetype2 = this.zzppl;
                messagetype2.zza(zzg.zzppw, null, null);
                messagetype2.zzpph.zzbkr();
                this.zzppm = true;
                messagetype = this.zzppl;
            }
            MessageType messagetype3 = messagetype;
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype3.zza(zzg.zzppt, null, null)).byteValue();
            if (byteValue == 1) {
                z = true;
            } else if (byteValue == 0) {
                z = false;
            } else {
                if (messagetype3.zza(zzg.zzppr, Boolean.FALSE, null) == null) {
                    z2 = false;
                }
                if (booleanValue) {
                    messagetype3.zza(zzg.zzppu, z2 ? messagetype3 : null, null);
                }
                z = z2;
            }
            if (!z) {
                throw new zzfkm(messagetype3);
            }
            return messagetype3;
        }

        @Override // com.google.android.gms.internal.zzfjd
        public final /* synthetic */ zzfjc zzczy() {
            if (this.zzppm) {
                return this.zzppl;
            }
            MessageType messagetype = this.zzppl;
            messagetype.zza(zzg.zzppw, null, null);
            messagetype.zzpph.zzbkr();
            this.zzppm = true;
            return this.zzppl;
        }

        @Override // com.google.android.gms.internal.zzfjd
        public final /* synthetic */ zzfjc zzczz() {
            MessageType messagetype;
            boolean z;
            boolean z2 = true;
            if (this.zzppm) {
                messagetype = this.zzppl;
            } else {
                MessageType messagetype2 = this.zzppl;
                messagetype2.zza(zzg.zzppw, null, null);
                messagetype2.zzpph.zzbkr();
                this.zzppm = true;
                messagetype = this.zzppl;
            }
            MessageType messagetype3 = messagetype;
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype3.zza(zzg.zzppt, null, null)).byteValue();
            if (byteValue == 1) {
                z = true;
            } else if (byteValue == 0) {
                z = false;
            } else {
                if (messagetype3.zza(zzg.zzppr, Boolean.FALSE, null) == null) {
                    z2 = false;
                }
                if (booleanValue) {
                    messagetype3.zza(zzg.zzppu, z2 ? messagetype3 : null, null);
                }
                z = z2;
            }
            if (!z) {
                throw new zzfkm(messagetype3);
            }
            return messagetype3;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb<T extends zzfhu<T, ?>> extends zzfgm<T> {
        private T zzppk;

        public zzb(T t) {
            this.zzppk = t;
        }

        @Override // com.google.android.gms.internal.zzfjl
        public final /* synthetic */ Object zze(zzfhb zzfhbVar, zzfhm zzfhmVar) throws zzfie {
            return zzfhu.zza(this.zzppk, zzfhbVar, zzfhmVar);
        }
    }

    /* loaded from: classes2.dex */
    static class zzc implements zzh {
        static final zzc zzppn = new zzc();
        private static zzfhv zzppo = new zzfhv();

        private zzc() {
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final double zza(boolean z, double d, boolean z2, double d2) {
            if (z == z2 && d == d2) {
                return d;
            }
            throw zzppo;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final int zza(boolean z, int i, boolean z2, int i2) {
            if (z == z2 && i == i2) {
                return i;
            }
            throw zzppo;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final long zza(boolean z, long j, boolean z2, long j2) {
            if (z == z2 && j == j2) {
                return j;
            }
            throw zzppo;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfgs zza(boolean z, zzfgs zzfgsVar, boolean z2, zzfgs zzfgsVar2) {
            if (z != z2 || !zzfgsVar.equals(zzfgsVar2)) {
                throw zzppo;
            }
            return zzfgsVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfic zza(zzfic zzficVar, zzfic zzficVar2) {
            if (!zzficVar.equals(zzficVar2)) {
                throw zzppo;
            }
            return zzficVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <T> zzfid<T> zza(zzfid<T> zzfidVar, zzfid<T> zzfidVar2) {
            if (!zzfidVar.equals(zzfidVar2)) {
                throw zzppo;
            }
            return zzfidVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <K, V> zzfiw<K, V> zza(zzfiw<K, V> zzfiwVar, zzfiw<K, V> zzfiwVar2) {
            if (!zzfiwVar.equals(zzfiwVar2)) {
                throw zzppo;
            }
            return zzfiwVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <T extends zzfjc> T zza(T t, T t2) {
            if (t == null && t2 == null) {
                return null;
            }
            if (t == null || t2 == null) {
                throw zzppo;
            }
            zzfhu zzfhuVar = (zzfhu) t;
            if (zzfhuVar == t2 || !((zzfhu) zzfhuVar.zza(zzg.zzppz, (Object) null, (Object) null)).getClass().isInstance(t2)) {
                return t;
            }
            zzfhu zzfhuVar2 = (zzfhu) t2;
            zzfhuVar.zza(zzg.zzpps, this, zzfhuVar2);
            zzfhuVar.zzpph = zza(zzfhuVar.zzpph, zzfhuVar2.zzpph);
            return t;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfko zza(zzfko zzfkoVar, zzfko zzfkoVar2) {
            if (!zzfkoVar.equals(zzfkoVar2)) {
                throw zzppo;
            }
            return zzfkoVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zza(boolean z, Object obj, Object obj2) {
            if (!z || !obj.equals(obj2)) {
                throw zzppo;
            }
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final String zza(boolean z, String str, boolean z2, String str2) {
            if (z != z2 || !str.equals(str2)) {
                throw zzppo;
            }
            return str;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final boolean zza(boolean z, boolean z2, boolean z3, boolean z4) {
            if (z == z3 && z2 == z4) {
                return z2;
            }
            throw zzppo;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzb(boolean z, Object obj, Object obj2) {
            if (!z || !obj.equals(obj2)) {
                throw zzppo;
            }
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzc(boolean z, Object obj, Object obj2) {
            if (!z || !obj.equals(obj2)) {
                throw zzppo;
            }
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzd(boolean z, Object obj, Object obj2) {
            if (!z || !obj.equals(obj2)) {
                throw zzppo;
            }
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final void zzdn(boolean z) {
            if (z) {
                throw zzppo;
            }
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zze(boolean z, Object obj, Object obj2) {
            if (!z || !obj.equals(obj2)) {
                throw zzppo;
            }
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzf(boolean z, Object obj, Object obj2) {
            if (!z || !obj.equals(obj2)) {
                throw zzppo;
            }
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzg(boolean z, Object obj, Object obj2) {
            boolean z2;
            if (z) {
                zzfhu zzfhuVar = (zzfhu) obj;
                zzfjc zzfjcVar = (zzfjc) obj2;
                if (zzfhuVar == zzfjcVar) {
                    z2 = true;
                } else if (!((zzfhu) zzfhuVar.zza(zzg.zzppz, (Object) null, (Object) null)).getClass().isInstance(zzfjcVar)) {
                    z2 = false;
                } else {
                    zzfhu zzfhuVar2 = (zzfhu) zzfjcVar;
                    zzfhuVar.zza(zzg.zzpps, this, zzfhuVar2);
                    zzfhuVar.zzpph = zza(zzfhuVar.zzpph, zzfhuVar2.zzpph);
                    z2 = true;
                }
                if (z2) {
                    return obj;
                }
            }
            throw zzppo;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzfhu<MessageType, BuilderType> implements zzfje {
        protected zzfhq<Object> zzppp = zzfhq.zzczj();
    }

    /* loaded from: classes2.dex */
    static class zze implements zzh {
        int zzmci = 0;

        zze() {
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final double zza(boolean z, double d, boolean z2, double d2) {
            this.zzmci = (this.zzmci * 53) + zzfhz.zzdf(Double.doubleToLongBits(d));
            return d;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final int zza(boolean z, int i, boolean z2, int i2) {
            this.zzmci = (this.zzmci * 53) + i;
            return i;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final long zza(boolean z, long j, boolean z2, long j2) {
            this.zzmci = (this.zzmci * 53) + zzfhz.zzdf(j);
            return j;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfgs zza(boolean z, zzfgs zzfgsVar, boolean z2, zzfgs zzfgsVar2) {
            this.zzmci = (this.zzmci * 53) + zzfgsVar.hashCode();
            return zzfgsVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfic zza(zzfic zzficVar, zzfic zzficVar2) {
            this.zzmci = (this.zzmci * 53) + zzficVar.hashCode();
            return zzficVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <T> zzfid<T> zza(zzfid<T> zzfidVar, zzfid<T> zzfidVar2) {
            this.zzmci = (this.zzmci * 53) + zzfidVar.hashCode();
            return zzfidVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <K, V> zzfiw<K, V> zza(zzfiw<K, V> zzfiwVar, zzfiw<K, V> zzfiwVar2) {
            this.zzmci = (this.zzmci * 53) + zzfiwVar.hashCode();
            return zzfiwVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <T extends zzfjc> T zza(T t, T t2) {
            int i;
            if (t == null) {
                i = 37;
            } else if (t instanceof zzfhu) {
                zzfhu zzfhuVar = (zzfhu) t;
                if (zzfhuVar.zzpno == 0) {
                    int i2 = this.zzmci;
                    this.zzmci = 0;
                    zzfhuVar.zza(zzg.zzpps, this, zzfhuVar);
                    zzfhuVar.zzpph = zza(zzfhuVar.zzpph, zzfhuVar.zzpph);
                    zzfhuVar.zzpno = this.zzmci;
                    this.zzmci = i2;
                }
                i = zzfhuVar.zzpno;
            } else {
                i = t.hashCode();
            }
            this.zzmci = i + (this.zzmci * 53);
            return t;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfko zza(zzfko zzfkoVar, zzfko zzfkoVar2) {
            this.zzmci = (this.zzmci * 53) + zzfkoVar.hashCode();
            return zzfkoVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zza(boolean z, Object obj, Object obj2) {
            this.zzmci = zzfhz.zzdo(((Boolean) obj).booleanValue()) + (this.zzmci * 53);
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final String zza(boolean z, String str, boolean z2, String str2) {
            this.zzmci = (this.zzmci * 53) + str.hashCode();
            return str;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final boolean zza(boolean z, boolean z2, boolean z3, boolean z4) {
            this.zzmci = (this.zzmci * 53) + zzfhz.zzdo(z2);
            return z2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzb(boolean z, Object obj, Object obj2) {
            this.zzmci = ((Integer) obj).intValue() + (this.zzmci * 53);
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzc(boolean z, Object obj, Object obj2) {
            this.zzmci = zzfhz.zzdf(Double.doubleToLongBits(((Double) obj).doubleValue())) + (this.zzmci * 53);
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzd(boolean z, Object obj, Object obj2) {
            this.zzmci = zzfhz.zzdf(((Long) obj).longValue()) + (this.zzmci * 53);
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final void zzdn(boolean z) {
            if (z) {
                throw new IllegalStateException();
            }
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zze(boolean z, Object obj, Object obj2) {
            this.zzmci = (this.zzmci * 53) + obj.hashCode();
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzf(boolean z, Object obj, Object obj2) {
            this.zzmci = (this.zzmci * 53) + obj.hashCode();
            return obj;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzg(boolean z, Object obj, Object obj2) {
            return zza((zzfjc) obj, (zzfjc) obj2);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzf implements zzh {
        public static final zzf zzppq = new zzf();

        private zzf() {
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final double zza(boolean z, double d, boolean z2, double d2) {
            return z2 ? d2 : d;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final int zza(boolean z, int i, boolean z2, int i2) {
            return z2 ? i2 : i;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final long zza(boolean z, long j, boolean z2, long j2) {
            return z2 ? j2 : j;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfgs zza(boolean z, zzfgs zzfgsVar, boolean z2, zzfgs zzfgsVar2) {
            return z2 ? zzfgsVar2 : zzfgsVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfic zza(zzfic zzficVar, zzfic zzficVar2) {
            int size = zzficVar.size();
            int size2 = zzficVar2.size();
            if (size > 0 && size2 > 0) {
                if (!zzficVar.zzcxk()) {
                    zzficVar = zzficVar.zzmk(size2 + size);
                }
                zzficVar.addAll(zzficVar2);
            }
            return size > 0 ? zzficVar : zzficVar2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <T> zzfid<T> zza(zzfid<T> zzfidVar, zzfid<T> zzfidVar2) {
            int size = zzfidVar.size();
            int size2 = zzfidVar2.size();
            if (size > 0 && size2 > 0) {
                if (!zzfidVar.zzcxk()) {
                    zzfidVar = zzfidVar.zzmo(size2 + size);
                }
                zzfidVar.addAll(zzfidVar2);
            }
            return size > 0 ? zzfidVar : zzfidVar2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <K, V> zzfiw<K, V> zza(zzfiw<K, V> zzfiwVar, zzfiw<K, V> zzfiwVar2) {
            if (!zzfiwVar2.isEmpty()) {
                if (!zzfiwVar.isMutable()) {
                    zzfiwVar = zzfiwVar.zzdau();
                }
                zzfiwVar.zza(zzfiwVar2);
            }
            return zzfiwVar;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final <T extends zzfjc> T zza(T t, T t2) {
            return (t == null || t2 == null) ? t == null ? t2 : t : (T) t.zzczt().zzd(t2).zzczz();
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final zzfko zza(zzfko zzfkoVar, zzfko zzfkoVar2) {
            return zzfkoVar2 == zzfko.zzdca() ? zzfkoVar : zzfko.zzb(zzfkoVar, zzfkoVar2);
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zza(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final String zza(boolean z, String str, boolean z2, String str2) {
            return z2 ? str2 : str;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final boolean zza(boolean z, boolean z2, boolean z3, boolean z4) {
            return z3 ? z4 : z2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzb(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzc(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzd(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final void zzdn(boolean z) {
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zze(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzf(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        @Override // com.google.android.gms.internal.zzfhu.zzh
        public final Object zzg(boolean z, Object obj, Object obj2) {
            return z ? zza((zzfjc) obj, (zzfjc) obj2) : obj2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes2.dex */
    public static final class zzg {
        public static final int zzppr = 1;
        public static final int zzpps = 2;
        public static final int zzppt = 3;
        public static final int zzppu = 4;
        public static final int zzppv = 5;
        public static final int zzppw = 6;
        public static final int zzppx = 7;
        public static final int zzppy = 8;
        public static final int zzppz = 9;
        public static final int zzpqa = 10;
        private static final /* synthetic */ int[] zzpqb = {zzppr, zzpps, zzppt, zzppu, zzppv, zzppw, zzppx, zzppy, zzppz, zzpqa};
        public static final int zzpqc = 1;
        private static int zzpqd = 2;
        private static final /* synthetic */ int[] zzpqe = {zzpqc, zzpqd};
        public static final int zzpqf = 1;
        public static final int zzpqg = 2;
        private static final /* synthetic */ int[] zzpqh = {zzpqf, zzpqg};

        /* renamed from: values$50KLMJ33DTMIUPRFDTJMOP9FE1P6UT3FC9QMCBQ7CLN6ASJ1EHIM8JB5EDPM2PR59HKN8P949LIN8Q3FCHA6UIBEEPNMMP9R0 */
        public static int[] m1300x126d66cb() {
            return (int[]) zzpqb.clone();
        }
    }

    /* loaded from: classes2.dex */
    public interface zzh {
        double zza(boolean z, double d, boolean z2, double d2);

        int zza(boolean z, int i, boolean z2, int i2);

        long zza(boolean z, long j, boolean z2, long j2);

        zzfgs zza(boolean z, zzfgs zzfgsVar, boolean z2, zzfgs zzfgsVar2);

        zzfic zza(zzfic zzficVar, zzfic zzficVar2);

        <T> zzfid<T> zza(zzfid<T> zzfidVar, zzfid<T> zzfidVar2);

        <K, V> zzfiw<K, V> zza(zzfiw<K, V> zzfiwVar, zzfiw<K, V> zzfiwVar2);

        <T extends zzfjc> T zza(T t, T t2);

        zzfko zza(zzfko zzfkoVar, zzfko zzfkoVar2);

        Object zza(boolean z, Object obj, Object obj2);

        String zza(boolean z, String str, boolean z2, String str2);

        boolean zza(boolean z, boolean z2, boolean z3, boolean z4);

        Object zzb(boolean z, Object obj, Object obj2);

        Object zzc(boolean z, Object obj, Object obj2);

        Object zzd(boolean z, Object obj, Object obj2);

        void zzdn(boolean z);

        Object zze(boolean z, Object obj, Object obj2);

        Object zzf(boolean z, Object obj, Object obj2);

        Object zzg(boolean z, Object obj, Object obj2);
    }

    protected static <T extends zzfhu<T, ?>> T zza(T t, zzfgs zzfgsVar) throws zzfie {
        boolean z;
        boolean z2;
        boolean z3 = true;
        T t2 = (T) zza(t, zzfgsVar, zzfhm.zzczf());
        if (t2 != null) {
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) t2.zza(zzg.zzppt, null, null)).byteValue();
            if (byteValue == 1) {
                z2 = true;
            } else if (byteValue == 0) {
                z2 = false;
            } else {
                boolean z4 = t2.zza(zzg.zzppr, Boolean.FALSE, null) != null;
                if (booleanValue) {
                    t2.zza(zzg.zzppu, z4 ? t2 : null, null);
                }
                z2 = z4;
            }
            if (!z2) {
                throw new zzfkm(t2).zzdbz().zzi(t2);
            }
        }
        if (t2 != null) {
            boolean booleanValue2 = Boolean.TRUE.booleanValue();
            byte byteValue2 = ((Byte) t2.zza(zzg.zzppt, null, null)).byteValue();
            if (byteValue2 == 1) {
                z = true;
            } else if (byteValue2 == 0) {
                z = false;
            } else {
                if (t2.zza(zzg.zzppr, Boolean.FALSE, null) == null) {
                    z3 = false;
                }
                if (booleanValue2) {
                    t2.zza(zzg.zzppu, z3 ? t2 : null, null);
                }
                z = z3;
            }
            if (!z) {
                throw new zzfkm(t2).zzdbz().zzi(t2);
            }
        }
        return t2;
    }

    private static <T extends zzfhu<T, ?>> T zza(T t, zzfgs zzfgsVar, zzfhm zzfhmVar) throws zzfie {
        try {
            zzfhb zzcxq = zzfgsVar.zzcxq();
            T t2 = (T) zza(t, zzcxq, zzfhmVar);
            try {
                zzcxq.zzlf(0);
                return t2;
            } catch (zzfie e) {
                throw e.zzi(t2);
            }
        } catch (zzfie e2) {
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends zzfhu<T, ?>> T zza(T t, zzfhb zzfhbVar, zzfhm zzfhmVar) throws zzfie {
        T t2 = (T) t.zza(zzg.zzppx, null, null);
        try {
            t2.zza(zzg.zzppv, zzfhbVar, zzfhmVar);
            t2.zza(zzg.zzppw, null, null);
            t2.zzpph.zzbkr();
            return t2;
        } catch (RuntimeException e) {
            if (!(e.getCause() instanceof zzfie)) {
                throw e;
            }
            throw ((zzfie) e.getCause());
        }
    }

    protected static <T extends zzfhu<T, ?>> T zza(T t, byte[] bArr) throws zzfie {
        boolean z;
        boolean z2 = true;
        T t2 = (T) zza(t, bArr, zzfhm.zzczf());
        if (t2 != null) {
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) t2.zza(zzg.zzppt, null, null)).byteValue();
            if (byteValue == 1) {
                z = true;
            } else if (byteValue == 0) {
                z = false;
            } else {
                if (t2.zza(zzg.zzppr, Boolean.FALSE, null) == null) {
                    z2 = false;
                }
                if (booleanValue) {
                    t2.zza(zzg.zzppu, z2 ? t2 : null, null);
                }
                z = z2;
            }
            if (!z) {
                throw new zzfkm(t2).zzdbz().zzi(t2);
            }
        }
        return t2;
    }

    private static <T extends zzfhu<T, ?>> T zza(T t, byte[] bArr, zzfhm zzfhmVar) throws zzfie {
        try {
            zzfhb zzbb = zzfhb.zzbb(bArr);
            T t2 = (T) zza(t, zzbb, zzfhmVar);
            try {
                zzbb.zzlf(0);
                return t2;
            } catch (zzfie e) {
                throw e.zzi(t2);
            }
        } catch (zzfie e2) {
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (!(cause instanceof Error)) {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((Error) cause);
        }
    }

    protected static final <T extends zzfhu<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zzg.zzppt, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        return t.zza(zzg.zzppr, Boolean.FALSE, null) != null;
    }

    protected static zzfic zzczr() {
        return zzfhy.zzdad();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzfid<E> zzczs() {
        return zzfjo.zzdbg();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzfhu) zza(zzg.zzppz, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        try {
            zzc zzcVar = zzc.zzppn;
            zzfhu zzfhuVar = (zzfhu) obj;
            zza(zzg.zzpps, zzcVar, zzfhuVar);
            this.zzpph = zzcVar.zza(this.zzpph, zzfhuVar.zzpph);
            return true;
        } catch (zzfhv e) {
            return false;
        }
    }

    public int hashCode() {
        if (this.zzpno != 0) {
            return this.zzpno;
        }
        zze zzeVar = new zze();
        zza(zzg.zzpps, zzeVar, this);
        this.zzpph = zzeVar.zza(this.zzpph, this.zzpph);
        this.zzpno = zzeVar.zzmci;
        return this.zzpno;
    }

    @Override // com.google.android.gms.internal.zzfje
    public final boolean isInitialized() {
        boolean z = true;
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) zza(zzg.zzppt, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        if (zza(zzg.zzppr, Boolean.FALSE, (Object) null) == null) {
            z = false;
        }
        if (booleanValue) {
            zza(zzg.zzppu, z ? this : null, (Object) null);
        }
        return z;
    }

    public String toString() {
        return zzfjf.zza(this, super.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.zzfjc
    public void zza(zzfhg zzfhgVar) throws IOException {
        zzfjn.zzdbf().zzl(getClass()).zza(this, zzfhi.zzb(zzfhgVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zza(int i, zzfhb zzfhbVar) throws IOException {
        if ((i & 7) == 4) {
            return false;
        }
        if (this.zzpph == zzfko.zzdca()) {
            this.zzpph = zzfko.zzdcb();
        }
        return this.zzpph.zzb(i, zzfhbVar);
    }

    @Override // com.google.android.gms.internal.zzfjc
    public final zzfjl<MessageType> zzczq() {
        return (zzfjl) zza(zzg.zzpqa, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.zzfjc
    public final /* synthetic */ zzfjd zzczt() {
        zza zzaVar = (zza) zza(zzg.zzppy, (Object) null, (Object) null);
        zzaVar.zza((zza) this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.zzfje
    public final /* synthetic */ zzfjc zzczu() {
        return (zzfhu) zza(zzg.zzppz, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.zzfjc
    public int zzhs() {
        if (this.zzppi == -1) {
            this.zzppi = zzfjn.zzdbf().zzl(getClass()).zzct(this);
        }
        return this.zzppi;
    }
}
