package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
import java.util.ArrayList;
@Hide
/* loaded from: classes2.dex */
public final class zzl implements Parcelable.Creator<PolylineOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolylineOptions createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        ArrayList arrayList = null;
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        Cap cap = null;
        Cap cap2 = null;
        int i2 = 0;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    arrayList = zzbgm.zzc(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    f = zzbgm.zzl(parcel, readInt);
                    break;
                case 4:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 5:
                    f2 = zzbgm.zzl(parcel, readInt);
                    break;
                case 6:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 7:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 8:
                    z3 = zzbgm.zzc(parcel, readInt);
                    break;
                case 9:
                    cap = (Cap) zzbgm.zza(parcel, readInt, Cap.CREATOR);
                    break;
                case 10:
                    cap2 = (Cap) zzbgm.zza(parcel, readInt, Cap.CREATOR);
                    break;
                case 11:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 12:
                    arrayList2 = zzbgm.zzc(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new PolylineOptions(arrayList, f, i, f2, z, z2, z3, cap, cap2, i2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolylineOptions[] newArray(int i) {
        return new PolylineOptions[i];
    }
}
