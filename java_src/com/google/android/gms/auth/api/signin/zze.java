package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.zzo;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
import java.util.ArrayList;
@Hide
/* loaded from: classes2.dex */
public final class zze implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        ArrayList arrayList = null;
        String str = null;
        String str2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        Account account = null;
        ArrayList arrayList2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    arrayList2 = zzbgm.zzc(parcel, readInt, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) zzbgm.zza(parcel, readInt, Account.CREATOR);
                    break;
                case 4:
                    z3 = zzbgm.zzc(parcel, readInt);
                    break;
                case 5:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 6:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 7:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 8:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 9:
                    arrayList = zzbgm.zzc(parcel, readInt, zzo.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new GoogleSignInOptions(i, arrayList2, account, z3, z2, z, str2, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
