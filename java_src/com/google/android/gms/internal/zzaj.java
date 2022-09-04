package com.google.android.gms.internal;

import android.os.SystemClock;
import com.coremedia.iso.boxes.AuthorBox;
import com.github.moduth.blockcanary.internal.BlockInfo;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes.dex */
public class zzaj implements zzm {
    private static boolean DEBUG = zzaf.DEBUG;
    @Deprecated
    private zzar zzbo;
    private final zzai zzbp;
    private zzak zzbq;

    public zzaj(zzai zzaiVar) {
        this(zzaiVar, new zzak(4096));
    }

    private zzaj(zzai zzaiVar, zzak zzakVar) {
        this.zzbp = zzaiVar;
        this.zzbo = zzaiVar;
        this.zzbq = zzakVar;
    }

    @Deprecated
    public zzaj(zzar zzarVar) {
        this(zzarVar, new zzak(4096));
    }

    @Deprecated
    private zzaj(zzar zzarVar, zzak zzakVar) {
        this.zzbo = zzarVar;
        this.zzbp = new zzah(zzarVar);
        this.zzbq = zzakVar;
    }

    private static List<zzl> zza(List<zzl> list, zzc zzcVar) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            for (zzl zzlVar : list) {
                treeSet.add(zzlVar.getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        if (zzcVar.zzg != null) {
            if (!zzcVar.zzg.isEmpty()) {
                for (zzl zzlVar2 : zzcVar.zzg) {
                    if (!treeSet.contains(zzlVar2.getName())) {
                        arrayList.add(zzlVar2);
                    }
                }
            }
        } else if (!zzcVar.zzf.isEmpty()) {
            for (Map.Entry<String, String> entry : zzcVar.zzf.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new zzl(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    private static void zza(String str, zzr<?> zzrVar, zzae zzaeVar) throws zzae {
        zzab zzi = zzrVar.zzi();
        int zzh = zzrVar.zzh();
        try {
            zzi.zza(zzaeVar);
            zzrVar.zzb(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzh)));
        } catch (zzae e) {
            zzrVar.zzb(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzh)));
            throw e;
        }
    }

    private final byte[] zza(InputStream inputStream, int i) throws IOException, zzac {
        zzau zzauVar = new zzau(this.zzbq, i);
        try {
            if (inputStream == null) {
                throw new zzac();
            }
            byte[] zzb = this.zzbq.zzb(1024);
            while (true) {
                int read = inputStream.read(zzb);
                if (read == -1) {
                    break;
                }
                zzauVar.write(zzb, 0, read);
            }
            byte[] byteArray = zzauVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    zzaf.zza("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbq.zza(zzb);
            zzauVar.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zzaf.zza("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbq.zza(null);
            zzauVar.close();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.zzm
    public zzp zzc(zzr<?> zzrVar) throws zzae {
        byte[] bArr;
        Map<String, String> hashMap;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            zzaq zzaqVar = null;
            List<zzl> emptyList = Collections.emptyList();
            try {
                try {
                    zzc zze = zzrVar.zze();
                    if (zze == null) {
                        hashMap = Collections.emptyMap();
                    } else {
                        hashMap = new HashMap<>();
                        if (zze.zza != null) {
                            hashMap.put("If-None-Match", zze.zza);
                        }
                        if (zze.zzc > 0) {
                            hashMap.put("If-Modified-Since", zzap.zzb(zze.zzc));
                        }
                    }
                    zzaq zza = this.zzbp.zza(zzrVar, hashMap);
                    try {
                        int statusCode = zza.getStatusCode();
                        emptyList = zza.zzp();
                        if (statusCode == 304) {
                            zzc zze2 = zzrVar.zze();
                            return zze2 == null ? new zzp(304, (byte[]) null, true, SystemClock.elapsedRealtime() - elapsedRealtime, emptyList) : new zzp(304, zze2.data, true, SystemClock.elapsedRealtime() - elapsedRealtime, zza(emptyList, zze2));
                        }
                        InputStream content = zza.getContent();
                        bArr = content != null ? zza(content, zza.getContentLength()) : new byte[0];
                        try {
                            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                            if (DEBUG || elapsedRealtime2 > 3000) {
                                Object[] objArr = new Object[5];
                                objArr[0] = zzrVar;
                                objArr[1] = Long.valueOf(elapsedRealtime2);
                                objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
                                objArr[3] = Integer.valueOf(statusCode);
                                objArr[4] = Integer.valueOf(zzrVar.zzi().zzc());
                                zzaf.zzb("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
                            }
                            if (statusCode >= 200 && statusCode <= 299) {
                                return new zzp(statusCode, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, emptyList);
                            }
                            throw new IOException();
                        } catch (IOException e) {
                            e = e;
                            zzaqVar = zza;
                            if (zzaqVar == null) {
                                throw new zzq(e);
                            }
                            int statusCode2 = zzaqVar.getStatusCode();
                            zzaf.zzc("Unexpected response code %d for %s", Integer.valueOf(statusCode2), zzrVar.getUrl());
                            if (bArr != null) {
                                zzp zzpVar = new zzp(statusCode2, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, emptyList);
                                if (statusCode2 != 401 && statusCode2 != 403) {
                                    if (statusCode2 >= 400 && statusCode2 <= 499) {
                                        throw new zzg(zzpVar);
                                    }
                                    if (statusCode2 >= 500 && statusCode2 <= 599) {
                                        throw new zzac(zzpVar);
                                    }
                                    throw new zzac(zzpVar);
                                }
                                zza(AuthorBox.TYPE, zzrVar, new zza(zzpVar));
                            } else {
                                zza(BlockInfo.KEY_NETWORK, zzrVar, new zzo());
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        bArr = null;
                        zzaqVar = zza;
                    }
                } catch (IOException e3) {
                    e = e3;
                    bArr = null;
                }
            } catch (MalformedURLException e4) {
                String valueOf = String.valueOf(zzrVar.getUrl());
                throw new RuntimeException(valueOf.length() != 0 ? "Bad URL ".concat(valueOf) : new String("Bad URL "), e4);
            } catch (SocketTimeoutException e5) {
                zza("socket", zzrVar, new zzad());
            }
        }
    }
}
