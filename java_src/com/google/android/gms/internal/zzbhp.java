package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class zzbhp {
    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static <O, I> I zza(zzbhq<I, O> zzbhqVar, Object obj) {
        zzbhr zzbhrVar;
        zzbhrVar = ((zzbhq) zzbhqVar).zzgix;
        return zzbhrVar != null ? zzbhqVar.convertBack(obj) : obj;
    }

    private static void zza(StringBuilder sb, zzbhq zzbhqVar, Object obj) {
        if (zzbhqVar.zzgio == 11) {
            sb.append(zzbhqVar.zzgiu.cast(obj).toString());
        } else if (zzbhqVar.zzgio != 7) {
            sb.append(obj);
        } else {
            sb.append("\"");
            sb.append(com.google.android.gms.common.util.zzq.zzha((String) obj));
            sb.append("\"");
        }
    }

    private static void zza(StringBuilder sb, zzbhq zzbhqVar, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(sb, zzbhqVar, obj);
            }
        }
        sb.append("]");
    }

    public String toString() {
        Map<String, zzbhq<?, ?>> zzabz = zzabz();
        StringBuilder sb = new StringBuilder(100);
        for (String str : zzabz.keySet()) {
            zzbhq<?, ?> zzbhqVar = zzabz.get(str);
            if (zza(zzbhqVar)) {
                Object zza = zza(zzbhqVar, zzb(zzbhqVar));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"").append(str).append("\":");
                if (zza == null) {
                    sb.append("null");
                } else {
                    switch (zzbhqVar.zzgiq) {
                        case 8:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzj((byte[]) zza)).append("\"");
                            continue;
                        case 9:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzk((byte[]) zza)).append("\"");
                            continue;
                        case 10:
                            com.google.android.gms.common.util.zzr.zza(sb, (HashMap) zza);
                            continue;
                        default:
                            if (zzbhqVar.zzgip) {
                                zza(sb, (zzbhq) zzbhqVar, (ArrayList<Object>) zza);
                                break;
                            } else {
                                zza(sb, zzbhqVar, zza);
                                continue;
                            }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zza(zzbhq zzbhqVar) {
        if (zzbhqVar.zzgiq == 11) {
            if (zzbhqVar.zzgir) {
                String str = zzbhqVar.zzgis;
                throw new UnsupportedOperationException("Concrete type arrays not supported");
            }
            String str2 = zzbhqVar.zzgis;
            throw new UnsupportedOperationException("Concrete types not supported");
        }
        return zzgy(zzbhqVar.zzgis);
    }

    public abstract Map<String, zzbhq<?, ?>> zzabz();

    /* JADX INFO: Access modifiers changed from: protected */
    public Object zzb(zzbhq zzbhqVar) {
        String str = zzbhqVar.zzgis;
        if (zzbhqVar.zzgiu != null) {
            zzgx(zzbhqVar.zzgis);
            zzbq.zza(true, "Concrete field shouldn't be value object: %s", zzbhqVar.zzgis);
            boolean z = zzbhqVar.zzgir;
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                return getClass().getMethod(new StringBuilder(String.valueOf(substring).length() + 4).append("get").append(upperCase).append(substring).toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return zzgx(zzbhqVar.zzgis);
    }

    protected abstract Object zzgx(String str);

    protected abstract boolean zzgy(String str);
}
