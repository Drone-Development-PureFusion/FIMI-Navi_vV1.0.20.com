package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
@Hide
/* loaded from: classes2.dex */
public final class zza extends zzao {
    public static Account zza(zzan zzanVar) {
        Account account = null;
        if (zzanVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = zzanVar.getAccount();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    public final boolean equals(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.internal.zzan
    public final Account getAccount() {
        throw new NoSuchMethodError();
    }
}
