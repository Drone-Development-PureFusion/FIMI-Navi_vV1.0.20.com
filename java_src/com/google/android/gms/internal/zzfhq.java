package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhs;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
final class zzfhq<FieldDescriptorType extends zzfhs<FieldDescriptorType>> {
    private static final zzfhq zzppc = new zzfhq(true);
    private boolean zzldh;
    private boolean zzppb = false;
    private final zzfjy<FieldDescriptorType, Object> zzppa = zzfjy.zzmq(16);

    private zzfhq() {
    }

    private zzfhq(boolean z) {
        if (!this.zzldh) {
            this.zzppa.zzbkr();
            this.zzldh = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzfky zzfkyVar, int i, Object obj) {
        int i2;
        int zzlw = zzfhg.zzlw(i);
        if (zzfkyVar == zzfky.GROUP) {
            zzfhz.zzh((zzfjc) obj);
            i2 = zzlw << 1;
        } else {
            i2 = zzlw;
        }
        return i2 + zzb(zzfkyVar, obj);
    }

    public static Object zza(zzfhb zzfhbVar, zzfky zzfkyVar, boolean z) throws IOException {
        zzfle zzfleVar = zzfle.STRICT;
        switch (zzfkyVar) {
            case DOUBLE:
                return Double.valueOf(zzfhbVar.readDouble());
            case FLOAT:
                return Float.valueOf(zzfhbVar.readFloat());
            case INT64:
                return Long.valueOf(zzfhbVar.zzcxz());
            case UINT64:
                return Long.valueOf(zzfhbVar.zzcxy());
            case INT32:
                return Integer.valueOf(zzfhbVar.zzcya());
            case FIXED64:
                return Long.valueOf(zzfhbVar.zzcyb());
            case FIXED32:
                return Integer.valueOf(zzfhbVar.zzcyc());
            case BOOL:
                return Boolean.valueOf(zzfhbVar.zzcyd());
            case BYTES:
                return zzfhbVar.zzcyf();
            case UINT32:
                return Integer.valueOf(zzfhbVar.zzcyg());
            case SFIXED32:
                return Integer.valueOf(zzfhbVar.zzcyi());
            case SFIXED64:
                return Long.valueOf(zzfhbVar.zzcyj());
            case SINT32:
                return Integer.valueOf(zzfhbVar.zzcyk());
            case SINT64:
                return Long.valueOf(zzfhbVar.zzcyl());
            case STRING:
                return zzfleVar.zza(zzfhbVar);
            case GROUP:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case MESSAGE:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case ENUM:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzfhg zzfhgVar, zzfky zzfkyVar, int i, Object obj) throws IOException {
        if (zzfkyVar == zzfky.GROUP) {
            zzfhz.zzh((zzfjc) obj);
            zzfhgVar.zze(i, (zzfjc) obj);
            return;
        }
        zzfhgVar.zzac(i, zzfkyVar.zzdcj());
        switch (zzfhr.zzppe[zzfkyVar.ordinal()]) {
            case 1:
                zzfhgVar.zzn(((Double) obj).doubleValue());
                return;
            case 2:
                zzfhgVar.zzf(((Float) obj).floatValue());
                return;
            case 3:
                zzfhgVar.zzcu(((Long) obj).longValue());
                return;
            case 4:
                zzfhgVar.zzcu(((Long) obj).longValue());
                return;
            case 5:
                zzfhgVar.zzls(((Integer) obj).intValue());
                return;
            case 6:
                zzfhgVar.zzcw(((Long) obj).longValue());
                return;
            case 7:
                zzfhgVar.zzlv(((Integer) obj).intValue());
                return;
            case 8:
                zzfhgVar.zzdl(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzfjc) obj).zza(zzfhgVar);
                return;
            case 10:
                zzfhgVar.zze((zzfjc) obj);
                return;
            case 11:
                if (obj instanceof zzfgs) {
                    zzfhgVar.zzay((zzfgs) obj);
                    return;
                } else {
                    zzfhgVar.zztw((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzfgs) {
                    zzfhgVar.zzay((zzfgs) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzfhgVar.zzj(bArr, 0, bArr.length);
                return;
            case 13:
                zzfhgVar.zzlt(((Integer) obj).intValue());
                return;
            case 14:
                zzfhgVar.zzlv(((Integer) obj).intValue());
                return;
            case 15:
                zzfhgVar.zzcw(((Long) obj).longValue());
                return;
            case 16:
                zzfhgVar.zzlu(((Integer) obj).intValue());
                return;
            case 17:
                zzfhgVar.zzcv(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzfia) {
                    zzfhgVar.zzls(((zzfia) obj).zzhu());
                    return;
                } else {
                    zzfhgVar.zzls(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    private void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        ArrayList arrayList;
        if (!fielddescriptortype.zzczn()) {
            zza(fielddescriptortype.zzczl(), obj);
            arrayList = obj;
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                zza(fielddescriptortype.zzczl(), obj2);
            }
        }
        if (arrayList instanceof zzfig) {
            this.zzppb = true;
        }
        ((zzfjy<FieldDescriptorType, Object>) this.zzppa).zza((zzfjy) fielddescriptortype, (FieldDescriptorType) arrayList);
    }

    private static void zza(zzfky zzfkyVar, Object obj) {
        boolean z = false;
        zzfhz.checkNotNull(obj);
        switch (zzfhr.zzppd[zzfkyVar.zzdci().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                if ((obj instanceof zzfgs) || (obj instanceof byte[])) {
                    z = true;
                    break;
                }
                break;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof zzfia)) {
                    z = true;
                    break;
                }
                break;
            case 9:
                if ((obj instanceof zzfjc) || (obj instanceof zzfig)) {
                    z = true;
                    break;
                }
                break;
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    private static int zzb(zzfhs<?> zzfhsVar, Object obj) {
        int i = 0;
        zzfky zzczl = zzfhsVar.zzczl();
        int zzhu = zzfhsVar.zzhu();
        if (zzfhsVar.zzczn()) {
            if (!zzfhsVar.zzczo()) {
                for (Object obj2 : (List) obj) {
                    i += zza(zzczl, zzhu, obj2);
                }
                return i;
            }
            for (Object obj3 : (List) obj) {
                i += zzb(zzczl, obj3);
            }
            return zzfhg.zzmf(i) + zzfhg.zzlw(zzhu) + i;
        }
        return zza(zzczl, zzhu, obj);
    }

    private static int zzb(zzfky zzfkyVar, Object obj) {
        switch (zzfhr.zzppe[zzfkyVar.ordinal()]) {
            case 1:
                return zzfhg.zzo(((Double) obj).doubleValue());
            case 2:
                return zzfhg.zzg(((Float) obj).floatValue());
            case 3:
                return zzfhg.zzcx(((Long) obj).longValue());
            case 4:
                return zzfhg.zzcy(((Long) obj).longValue());
            case 5:
                return zzfhg.zzlx(((Integer) obj).intValue());
            case 6:
                return zzfhg.zzda(((Long) obj).longValue());
            case 7:
                return zzfhg.zzma(((Integer) obj).intValue());
            case 8:
                return zzfhg.zzdm(((Boolean) obj).booleanValue());
            case 9:
                return zzfhg.zzg((zzfjc) obj);
            case 10:
                return obj instanceof zzfig ? zzfhg.zza((zzfig) obj) : zzfhg.zzf((zzfjc) obj);
            case 11:
                return obj instanceof zzfgs ? zzfhg.zzaz((zzfgs) obj) : zzfhg.zztx((String) obj);
            case 12:
                return obj instanceof zzfgs ? zzfhg.zzaz((zzfgs) obj) : zzfhg.zzbd((byte[]) obj);
            case 13:
                return zzfhg.zzly(((Integer) obj).intValue());
            case 14:
                return zzfhg.zzmb(((Integer) obj).intValue());
            case 15:
                return zzfhg.zzdb(((Long) obj).longValue());
            case 16:
                return zzfhg.zzlz(((Integer) obj).intValue());
            case 17:
                return zzfhg.zzcz(((Long) obj).longValue());
            case 18:
                return obj instanceof zzfia ? zzfhg.zzmc(((zzfia) obj).zzhu()) : zzfhg.zzmc(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static int zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzczm() != zzfld.MESSAGE || key.zzczn() || key.zzczo()) ? zzb((zzfhs<?>) key, value) : value instanceof zzfig ? zzfhg.zzb(entry.getKey().zzhu(), (zzfig) value) : zzfhg.zzd(entry.getKey().zzhu(), (zzfjc) value);
    }

    public static <T extends zzfhs<T>> zzfhq<T> zzczj() {
        return zzppc;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzfhq zzfhqVar = new zzfhq();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzppa.zzdbp()) {
                break;
            }
            Map.Entry<FieldDescriptorType, Object> zzmr = this.zzppa.zzmr(i2);
            zzfhqVar.zza((zzfhq) zzmr.getKey(), zzmr.getValue());
            i = i2 + 1;
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzppa.zzdbq()) {
            zzfhqVar.zza((zzfhq) entry.getKey(), entry.getValue());
        }
        zzfhqVar.zzppb = this.zzppb;
        return zzfhqVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzfhq) {
            return this.zzppa.equals(((zzfhq) obj).zzppa);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzppa.hashCode();
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        return this.zzppb ? new zzfij(this.zzppa.entrySet().iterator()) : this.zzppa.entrySet().iterator();
    }

    public final int zzczk() {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i2;
            if (i3 >= this.zzppa.zzdbp()) {
                break;
            }
            i2 = zzb(this.zzppa.zzmr(i3)) + i;
            i3++;
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzppa.zzdbq()) {
            i += zzb(entry);
        }
        return i;
    }
}
