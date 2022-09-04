package com.google.android.gms.internal;

import android.content.Context;
import android.util.Log;
import com.facebook.common.time.Clock;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.phenotype.Phenotype;
import com.google.android.gms.phenotype.PhenotypeFlag;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbft implements ClearcutLogger.zza {
    private static final Charset UTF_8 = Charset.forName(SocketOption.DEFAULT_CHARSET);
    private static final PhenotypeFlag.Factory zzfqj = new PhenotypeFlag.Factory(Phenotype.getContentProviderUri("com.google.android.gms.clearcut.public")).withGservicePrefix("gms:playlog:service:sampling_").withPhenotypePrefix("LogSampling__");
    private static Map<String, PhenotypeFlag<String>> zzfqk = null;
    private static Boolean zzfql = null;
    private static Long zzfqm = null;
    private final Context zzaiq;

    public zzbft(Context context) {
        this.zzaiq = context;
        if (zzfqk == null) {
            zzfqk = new HashMap();
        }
        if (this.zzaiq != null) {
            PhenotypeFlag.maybeInit(this.zzaiq);
        }
    }

    private static boolean zzcc(Context context) {
        if (zzfql == null) {
            zzfql = Boolean.valueOf(zzbih.zzdd(context).checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return zzfql.booleanValue();
    }

    private static zzbfu zzge(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        String str2 = "";
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            i = indexOf + 1;
        }
        int indexOf2 = str.indexOf(47, i);
        if (indexOf2 <= 0) {
            String valueOf = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf.length() != 0 ? "Failed to parse the rule: ".concat(valueOf) : new String("Failed to parse the rule: "));
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong >= 0 && parseLong2 >= 0) {
                return new zzbfu(str2, parseLong, parseLong2);
            }
            Log.e("LogSamplerImpl", new StringBuilder(72).append("negative values not supported: ").append(parseLong).append("/").append(parseLong2).toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf2.length() != 0 ? "parseLong() failed while parsing: ".concat(valueOf2) : new String("parseLong() failed while parsing: "), e);
            return null;
        }
    }

    @Override // com.google.android.gms.clearcut.ClearcutLogger.zza
    public final boolean zzg(String str, int i) {
        String str2;
        long longValue;
        long zzi;
        long j;
        long j2;
        if (str == null || str.isEmpty()) {
            str = i >= 0 ? String.valueOf(i) : null;
        }
        if (str == null) {
            return true;
        }
        if (this.zzaiq == null || !zzcc(this.zzaiq)) {
            str2 = null;
        } else {
            PhenotypeFlag<String> phenotypeFlag = zzfqk.get(str);
            if (phenotypeFlag == null) {
                phenotypeFlag = zzfqj.createFlag(str, null);
                zzfqk.put(str, phenotypeFlag);
            }
            str2 = phenotypeFlag.get();
        }
        zzbfu zzge = zzge(str2);
        if (zzge == null) {
            return true;
        }
        String str3 = zzge.zzfqn;
        Context context = this.zzaiq;
        if (zzfqm == null) {
            if (context == null) {
                longValue = 0;
                if (str3 != null || str3.isEmpty()) {
                    zzi = zzbfo.zzi(ByteBuffer.allocate(8).putLong(longValue).array());
                } else {
                    byte[] bytes = str3.getBytes(UTF_8);
                    ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
                    allocate.put(bytes);
                    allocate.putLong(longValue);
                    zzi = zzbfo.zzi(allocate.array());
                }
                j = zzge.zzfqo;
                j2 = zzge.zzfqp;
                if (j >= 0 || j2 < 0) {
                    throw new IllegalArgumentException(new StringBuilder(72).append("negative values not supported: ").append(j).append("/").append(j2).toString());
                }
                if (j2 > 0) {
                    if ((zzi >= 0 ? zzi % j2 : (((zzi & Clock.MAX_TIME) % j2) + ((Clock.MAX_TIME % j2) + 1)) % j2) < j) {
                        return true;
                    }
                }
                return false;
            } else if (zzcc(context)) {
                zzfqm = Long.valueOf(zzdnm.getLong(context.getContentResolver(), "android_id", 0L));
            } else {
                zzfqm = 0L;
            }
        }
        longValue = zzfqm.longValue();
        if (str3 != null) {
        }
        zzi = zzbfo.zzi(ByteBuffer.allocate(8).putLong(longValue).array());
        j = zzge.zzfqo;
        j2 = zzge.zzfqp;
        if (j >= 0) {
        }
        throw new IllegalArgumentException(new StringBuilder(72).append("negative values not supported: ").append(j).append("/").append(j2).toString());
    }
}
