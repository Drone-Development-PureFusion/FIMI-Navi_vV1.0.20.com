package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.zzaf;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class zzr<T> implements Comparable<zzr<T>> {
    private final Object mLock;
    private final zzaf.zza zzae;
    private final int zzaf;
    private final String zzag;
    private final int zzah;
    private zzy zzai;
    private Integer zzaj;
    private zzv zzak;
    private boolean zzal;
    private boolean zzam;
    private boolean zzan;
    private boolean zzao;
    private zzab zzap;
    private zzc zzaq;
    private zzt zzar;

    public zzr(int i, String str, zzy zzyVar) {
        Uri parse;
        String host;
        this.zzae = zzaf.zza.zzbk ? new zzaf.zza() : null;
        this.mLock = new Object();
        this.zzal = true;
        this.zzam = false;
        this.zzan = false;
        this.zzao = false;
        this.zzaq = null;
        this.zzaf = i;
        this.zzag = str;
        this.zzai = zzyVar;
        this.zzap = new zzh();
        this.zzah = (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) ? 0 : host.hashCode();
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        zzr zzrVar = (zzr) obj;
        zzu zzuVar = zzu.NORMAL;
        zzu zzuVar2 = zzu.NORMAL;
        return zzuVar == zzuVar2 ? this.zzaj.intValue() - zzrVar.zzaj.intValue() : zzuVar2.ordinal() - zzuVar.ordinal();
    }

    public Map<String, String> getHeaders() throws zza {
        return Collections.emptyMap();
    }

    public final int getMethod() {
        return this.zzaf;
    }

    public final String getUrl() {
        return this.zzag;
    }

    public final boolean isCanceled() {
        synchronized (this.mLock) {
        }
        return false;
    }

    public String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.zzah));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        String str = this.zzag;
        String valueOf2 = String.valueOf(zzu.NORMAL);
        String valueOf3 = String.valueOf(this.zzaj);
        return new StringBuilder(String.valueOf("[ ] ").length() + 3 + String.valueOf(str).length() + String.valueOf(concat).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("[ ] ").append(str).append(" ").append(concat).append(" ").append(valueOf2).append(" ").append(valueOf3).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzr<?> zza(int i) {
        this.zzaj = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzr<?> zza(zzc zzcVar) {
        this.zzaq = zzcVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzr<?> zza(zzv zzvVar) {
        this.zzak = zzvVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract zzx<T> zza(zzp zzpVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzt zztVar) {
        synchronized (this.mLock) {
            this.zzar = zztVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzx<?> zzxVar) {
        zzt zztVar;
        synchronized (this.mLock) {
            zztVar = this.zzar;
        }
        if (zztVar != null) {
            zztVar.zza(this, zzxVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zza(T t);

    public final void zzb(zzae zzaeVar) {
        zzy zzyVar;
        synchronized (this.mLock) {
            zzyVar = this.zzai;
        }
        if (zzyVar != null) {
            zzyVar.zzd(zzaeVar);
        }
    }

    public final void zzb(String str) {
        if (zzaf.zza.zzbk) {
            this.zzae.zza(str, Thread.currentThread().getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(String str) {
        if (this.zzak != null) {
            this.zzak.zzf(this);
        }
        if (zzaf.zza.zzbk) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzs(this, str, id));
                return;
            }
            this.zzae.zza(str, id);
            this.zzae.zzc(toString());
        }
    }

    public final int zzd() {
        return this.zzah;
    }

    public final zzc zze() {
        return this.zzaq;
    }

    public byte[] zzf() throws zza {
        return null;
    }

    public final boolean zzg() {
        return this.zzal;
    }

    public final int zzh() {
        return this.zzap.zzb();
    }

    public final zzab zzi() {
        return this.zzap;
    }

    public final void zzj() {
        synchronized (this.mLock) {
            this.zzan = true;
        }
    }

    public final boolean zzk() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzan;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzl() {
        zzt zztVar;
        synchronized (this.mLock) {
            zztVar = this.zzar;
        }
        if (zztVar != null) {
            zztVar.zza(this);
        }
    }
}
