package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzdnm {
    private static HashMap<String, String> zzlxj;
    private static Object zzlxo;
    private static boolean zzlxp;
    private static Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    private static Uri zzlxf = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    private static Pattern zzlxg = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    private static Pattern zzlxh = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zzlxi = new AtomicBoolean();
    private static HashMap<String, Boolean> zzlxk = new HashMap<>();
    private static HashMap<String, Integer> zzlxl = new HashMap<>();
    private static HashMap<String, Long> zzlxm = new HashMap<>();
    private static HashMap<String, Float> zzlxn = new HashMap<>();
    private static String[] zzlxq = new String[0];

    public static long getLong(ContentResolver contentResolver, String str, long j) {
        long j2 = 0;
        Object zzb = zzb(contentResolver);
        Long l = (Long) zza((HashMap<String, long>) zzlxm, str, 0L);
        if (l != null) {
            return l.longValue();
        }
        String zza = zza(contentResolver, str, (String) null);
        if (zza != null) {
            try {
                long parseLong = Long.parseLong(zza);
                l = Long.valueOf(parseLong);
                j2 = parseLong;
            } catch (NumberFormatException e) {
            }
        }
        zza(zzb, zzlxm, str, l);
        return j2;
    }

    private static <T> T zza(HashMap<String, T> hashMap, String str, T t) {
        synchronized (zzdnm.class) {
            if (hashMap.containsKey(str)) {
                T t2 = hashMap.get(str);
                if (t2 == null) {
                    t2 = t;
                }
                return t2;
            }
            return null;
        }
    }

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        String str3 = null;
        synchronized (zzdnm.class) {
            zza(contentResolver);
            Object obj = zzlxo;
            if (zzlxj.containsKey(str)) {
                String str4 = zzlxj.get(str);
                if (str4 != null) {
                    str3 = str4;
                }
            } else {
                String[] strArr = zzlxq;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        Cursor query = contentResolver.query(CONTENT_URI, null, null, new String[]{str}, null);
                        if (query != null) {
                            try {
                                if (query.moveToFirst()) {
                                    String string = query.getString(1);
                                    if (string != null && string.equals(null)) {
                                        string = null;
                                    }
                                    zza(obj, str, string);
                                    if (string != null) {
                                        str3 = string;
                                    }
                                    if (query != null) {
                                        query.close();
                                    }
                                }
                            } catch (Throwable th) {
                                if (query != null) {
                                    query.close();
                                }
                                throw th;
                            }
                        }
                        zza(obj, str, (String) null);
                        if (query != null) {
                            query.close();
                        }
                    } else if (!str.startsWith(strArr[i])) {
                        i++;
                    } else if (!zzlxp || zzlxj.isEmpty()) {
                        zzlxj.putAll(zza(contentResolver, zzlxq));
                        zzlxp = true;
                        if (zzlxj.containsKey(str)) {
                            String str5 = zzlxj.get(str);
                            if (str5 != null) {
                                str3 = str5;
                            }
                        }
                    }
                }
            }
        }
        return str3;
    }

    private static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(zzlxf, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    treeMap.put(query.getString(0), query.getString(1));
                } finally {
                    query.close();
                }
            }
        }
        return treeMap;
    }

    private static void zza(ContentResolver contentResolver) {
        if (zzlxj == null) {
            zzlxi.set(false);
            zzlxj = new HashMap<>();
            zzlxo = new Object();
            zzlxp = false;
            contentResolver.registerContentObserver(CONTENT_URI, true, new zzdnn(null));
        } else if (!zzlxi.getAndSet(false)) {
        } else {
            zzlxj.clear();
            zzlxk.clear();
            zzlxl.clear();
            zzlxm.clear();
            zzlxn.clear();
            zzlxo = new Object();
            zzlxp = false;
        }
    }

    private static void zza(Object obj, String str, String str2) {
        synchronized (zzdnm.class) {
            if (obj == zzlxo) {
                zzlxj.put(str, str2);
            }
        }
    }

    private static <T> void zza(Object obj, HashMap<String, T> hashMap, String str, T t) {
        synchronized (zzdnm.class) {
            if (obj == zzlxo) {
                hashMap.put(str, t);
                zzlxj.remove(str);
            }
        }
    }

    public static boolean zza(ContentResolver contentResolver, String str, boolean z) {
        Object zzb = zzb(contentResolver);
        Boolean bool = (Boolean) zza(zzlxk, str, Boolean.valueOf(z));
        if (bool != null) {
            return bool.booleanValue();
        }
        String zza = zza(contentResolver, str, (String) null);
        if (zza != null && !zza.equals("")) {
            if (zzlxg.matcher(zza).matches()) {
                bool = true;
                z = true;
            } else if (zzlxh.matcher(zza).matches()) {
                bool = false;
                z = false;
            } else {
                Log.w("Gservices", "attempt to read gservices key " + str + " (value \"" + zza + "\") as boolean");
            }
        }
        zza(zzb, zzlxk, str, bool);
        return z;
    }

    private static Object zzb(ContentResolver contentResolver) {
        Object obj;
        synchronized (zzdnm.class) {
            zza(contentResolver);
            obj = zzlxo;
        }
        return obj;
    }
}
