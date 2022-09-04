package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes.dex */
public class Image {
    @SerializedName("h")

    /* renamed from: h */
    public final int f305h;
    @SerializedName("image_type")
    public final String imageType;
    @SerializedName("w")

    /* renamed from: w */
    public final int f306w;

    public Image(int w, int h, String imageType) {
        this.f306w = w;
        this.f305h = h;
        this.imageType = imageType;
    }
}
