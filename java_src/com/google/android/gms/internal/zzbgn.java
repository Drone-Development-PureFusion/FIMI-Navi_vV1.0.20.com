package com.google.android.gms.internal;

import android.os.Parcel;
/* loaded from: classes2.dex */
public final class zzbgn extends RuntimeException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbgn(String str, Parcel parcel) {
        super(new StringBuilder(String.valueOf(str).length() + 41).append(str).append(" Parcel: pos=").append(r0).append(" size=").append(parcel.dataSize()).toString());
        int dataPosition = parcel.dataPosition();
    }
}
