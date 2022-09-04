package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class Cap extends zzbgl {
    @Nullable
    private final BitmapDescriptor bitmapDescriptor;
    private final int type;
    @Nullable
    private final Float zzjcv;
    private static final String TAG = Cap.class.getSimpleName();
    @Hide
    public static final Parcelable.Creator<Cap> CREATOR = new zzb();

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public Cap(int i) {
        this(i, (BitmapDescriptor) null, (Float) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public Cap(int i, @Nullable IBinder iBinder, @Nullable Float f) {
        this(i, iBinder == null ? null : new BitmapDescriptor(IObjectWrapper.zza.zzaq(iBinder)), f);
    }

    private Cap(int i, @Nullable BitmapDescriptor bitmapDescriptor, @Nullable Float f) {
        zzbq.checkArgument(i != 3 || (bitmapDescriptor != null && (f != null && (f.floatValue() > 0.0f ? 1 : (f.floatValue() == 0.0f ? 0 : -1)) > 0)), String.format("Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s", Integer.valueOf(i), bitmapDescriptor, f));
        this.type = i;
        this.bitmapDescriptor = bitmapDescriptor;
        this.zzjcv = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public Cap(@NonNull BitmapDescriptor bitmapDescriptor, float f) {
        this(3, bitmapDescriptor, Float.valueOf(f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.type == cap.type && zzbg.equal(this.bitmapDescriptor, cap.bitmapDescriptor) && zzbg.equal(this.zzjcv, cap.zzjcv);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.type), this.bitmapDescriptor, this.zzjcv});
    }

    public String toString() {
        return new StringBuilder(23).append("[Cap: type=").append(this.type).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 2, this.type);
        zzbgo.zza(parcel, 3, this.bitmapDescriptor == null ? null : this.bitmapDescriptor.zzaxq().asBinder(), false);
        zzbgo.zza(parcel, 4, this.zzjcv, false);
        zzbgo.zzai(parcel, zze);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public final Cap zzaxw() {
        switch (this.type) {
            case 0:
                return new ButtCap();
            case 1:
                return new SquareCap();
            case 2:
                return new RoundCap();
            case 3:
                return new CustomCap(this.bitmapDescriptor, this.zzjcv.floatValue());
            default:
                Log.w(TAG, new StringBuilder(29).append("Unknown Cap type: ").append(this.type).toString());
                return this;
        }
    }
}
