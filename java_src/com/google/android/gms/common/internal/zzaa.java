package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzbgm;
@Hide
/* loaded from: classes2.dex */
public final class zzaa implements Parcelable.Creator<zzz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        com.google.android.gms.common.zzc[] zzcVarArr = null;
        Account account = null;
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i3 = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 3:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 4:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 5:
                    iBinder = zzbgm.zzr(parcel, readInt);
                    break;
                case 6:
                    scopeArr = (Scope[]) zzbgm.zzb(parcel, readInt, Scope.CREATOR);
                    break;
                case 7:
                    bundle = zzbgm.zzs(parcel, readInt);
                    break;
                case 8:
                    account = (Account) zzbgm.zza(parcel, readInt, Account.CREATOR);
                    break;
                case 9:
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
                case 10:
                    zzcVarArr = (com.google.android.gms.common.zzc[]) zzbgm.zzb(parcel, readInt, com.google.android.gms.common.zzc.CREATOR);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzz(i3, i2, i, str, iBinder, scopeArr, bundle, account, zzcVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz[] newArray(int i) {
        return new zzz[i];
    }
}
