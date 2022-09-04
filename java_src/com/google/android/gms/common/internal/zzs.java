package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.support.p001v4.util.ArraySet;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzcyk;
import java.util.Collection;
/* loaded from: classes2.dex */
public final class zzs {
    private String zzehh;
    private Account zzeho;
    private String zzfta;
    private ArraySet<Scope> zzgfu;
    private int zzfsy = 0;
    private zzcyk zzgfs = zzcyk.zzklp;

    public final zzr zzamn() {
        return new zzr(this.zzeho, this.zzgfu, null, 0, null, this.zzehh, this.zzfta, this.zzgfs);
    }

    public final zzs zze(Account account) {
        this.zzeho = account;
        return this;
    }

    public final zzs zze(Collection<Scope> collection) {
        if (this.zzgfu == null) {
            this.zzgfu = new ArraySet<>();
        }
        this.zzgfu.addAll(collection);
        return this;
    }

    public final zzs zzgo(String str) {
        this.zzehh = str;
        return this;
    }

    public final zzs zzgp(String str) {
        this.zzfta = str;
        return this;
    }
}
