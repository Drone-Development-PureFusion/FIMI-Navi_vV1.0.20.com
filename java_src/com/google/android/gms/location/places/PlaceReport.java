package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbi;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class PlaceReport extends zzbgl implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new zzl();
    private final String mTag;
    private final String zzdwr;
    private int zzehz;
    private final String zzivz;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public PlaceReport(int i, String str, String str2, String str3) {
        this.zzehz = i;
        this.zzivz = str;
        this.mTag = str2;
        this.zzdwr = str3;
    }

    public static PlaceReport create(String str, String str2) {
        boolean z = false;
        zzbq.checkNotNull(str);
        zzbq.zzgv(str2);
        zzbq.zzgv("unknown");
        char c = 65535;
        switch ("unknown".hashCode()) {
            case -1436706272:
                if ("unknown".equals("inferredGeofencing")) {
                    c = 2;
                    break;
                }
                break;
            case -1194968642:
                if ("unknown".equals("userReported")) {
                    c = 1;
                    break;
                }
                break;
            case -284840886:
                if ("unknown".equals("unknown")) {
                    c = 0;
                    break;
                }
                break;
            case -262743844:
                if ("unknown".equals("inferredReverseGeocoding")) {
                    c = 4;
                    break;
                }
                break;
            case 1164924125:
                if ("unknown".equals("inferredSnappedToRoad")) {
                    c = 5;
                    break;
                }
                break;
            case 1287171955:
                if ("unknown".equals("inferredRadioSignals")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                z = true;
                break;
        }
        zzbq.checkArgument(z, "Invalid source");
        return new PlaceReport(1, str, str2, "unknown");
    }

    @Hide
    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return zzbg.equal(this.zzivz, placeReport.zzivz) && zzbg.equal(this.mTag, placeReport.mTag) && zzbg.equal(this.zzdwr, placeReport.zzdwr);
    }

    public String getPlaceId() {
        return this.zzivz;
    }

    public String getTag() {
        return this.mTag;
    }

    @Hide
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzivz, this.mTag, this.zzdwr});
    }

    @Hide
    public String toString() {
        zzbi zzx = zzbg.zzx(this);
        zzx.zzg("placeId", this.zzivz);
        zzx.zzg("tag", this.mTag);
        if (!"unknown".equals(this.zzdwr)) {
            zzx.zzg(ShareConstants.FEED_SOURCE_PARAM, this.zzdwr);
        }
        return zzx.toString();
    }

    @Override // android.os.Parcelable
    @Hide
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzehz);
        zzbgo.zza(parcel, 2, getPlaceId(), false);
        zzbgo.zza(parcel, 3, getTag(), false);
        zzbgo.zza(parcel, 4, this.zzdwr, false);
        zzbgo.zzai(parcel, zze);
    }
}
