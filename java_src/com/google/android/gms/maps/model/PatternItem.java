package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class PatternItem extends zzbgl {
    private final int type;
    @Nullable
    private final Float zzjec;
    private static final String TAG = PatternItem.class.getSimpleName();
    @Hide
    public static final Parcelable.Creator<PatternItem> CREATOR = new zzi();

    @Hide
    public PatternItem(int i, @Nullable Float f) {
        boolean z = true;
        if (i != 1 && (f == null || f.floatValue() < 0.0f)) {
            z = false;
        }
        String valueOf = String.valueOf(f);
        zzbq.checkArgument(z, new StringBuilder(String.valueOf(valueOf).length() + 45).append("Invalid PatternItem: type=").append(i).append(" length=").append(valueOf).toString());
        this.type = i;
        this.zzjec = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    @Nullable
    public static List<PatternItem> zzah(@Nullable List<PatternItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (PatternItem patternItem : list) {
            if (patternItem == null) {
                patternItem = null;
            } else {
                switch (patternItem.type) {
                    case 0:
                        patternItem = new Dash(patternItem.zzjec.floatValue());
                        continue;
                    case 1:
                        patternItem = new Dot();
                        continue;
                    case 2:
                        patternItem = new Gap(patternItem.zzjec.floatValue());
                        continue;
                    default:
                        Log.w(TAG, new StringBuilder(37).append("Unknown PatternItem type: ").append(patternItem.type).toString());
                        continue;
                }
            }
            arrayList.add(patternItem);
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.type == patternItem.type && zzbg.equal(this.zzjec, patternItem.zzjec);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.type), this.zzjec});
    }

    public String toString() {
        int i = this.type;
        String valueOf = String.valueOf(this.zzjec);
        return new StringBuilder(String.valueOf(valueOf).length() + 39).append("[PatternItem: type=").append(i).append(" length=").append(valueOf).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 2, this.type);
        zzbgo.zza(parcel, 3, this.zzjec, false);
        zzbgo.zzai(parcel, zze);
    }
}
