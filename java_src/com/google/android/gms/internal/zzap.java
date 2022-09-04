package com.google.android.gms.internal;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class zzap {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<zzl> zza(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new zzl(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> zza(List<zzl> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (zzl zzlVar : list) {
            treeMap.put(zzlVar.getName(), zzlVar.getValue());
        }
        return treeMap;
    }

    public static zzc zzb(zzp zzpVar) {
        boolean z;
        long j;
        long j2;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = zzpVar.zzab;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        boolean z2 = false;
        String str = map.get("Date");
        if (str != null) {
            j3 = zzf(str);
        }
        String str2 = map.get("Cache-Control");
        if (str2 != null) {
            String[] split = str2.split(",");
            int i = 0;
            z = false;
            while (i < split.length) {
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j4 = Long.parseLong(trim.substring(8));
                    } catch (Exception e) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    try {
                        j5 = Long.parseLong(trim.substring(23));
                    } catch (Exception e2) {
                    }
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z = true;
                }
                i++;
                j5 = j5;
            }
            z2 = true;
        } else {
            z = false;
        }
        String str3 = map.get("Expires");
        long zzf = str3 != null ? zzf(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long zzf2 = str4 != null ? zzf(str4) : 0L;
        String str5 = map.get("ETag");
        if (z2) {
            j2 = currentTimeMillis + (1000 * j4);
            j = z ? j2 : (1000 * j5) + j2;
        } else if (j3 <= 0 || zzf < j3) {
            j = 0;
            j2 = 0;
        } else {
            long j6 = currentTimeMillis + (zzf - j3);
            j = j6;
            j2 = j6;
        }
        zzc zzcVar = new zzc();
        zzcVar.data = zzpVar.data;
        zzcVar.zza = str5;
        zzcVar.zze = j2;
        zzcVar.zzd = j;
        zzcVar.zzb = j3;
        zzcVar.zzc = zzf2;
        zzcVar.zzf = map;
        zzcVar.zzg = zzpVar.allHeaders;
        return zzcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(long j) {
        return zzo().format(new Date(j));
    }

    public static String zzb(Map<String, String> map) {
        String str = map.get("Content-Type");
        if (str != null) {
            String[] split = str.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return "ISO-8859-1";
    }

    private static long zzf(String str) {
        try {
            return zzo().parse(str).getTime();
        } catch (ParseException e) {
            zzaf.zza(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    private static SimpleDateFormat zzo() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
