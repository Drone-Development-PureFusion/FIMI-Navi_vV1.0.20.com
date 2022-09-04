package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes.dex */
public class VideoInfo implements Serializable {
    @SerializedName("aspect_ratio")
    public final List<Integer> aspectRatio;
    @SerializedName("duration_millis")
    public final long durationMillis;
    @SerializedName("variants")
    public final List<Variant> variants;

    private VideoInfo() {
        this(null, 0L, null);
    }

    public VideoInfo(List<Integer> aspectRatio, long durationMillis, List<Variant> variants) {
        this.aspectRatio = ModelUtils.getSafeList(aspectRatio);
        this.durationMillis = durationMillis;
        this.variants = ModelUtils.getSafeList(variants);
    }

    /* loaded from: classes.dex */
    public static class Variant implements Serializable {
        @SerializedName("bitrate")
        public final long bitrate;
        @SerializedName("content_type")
        public final String contentType;
        @SerializedName("url")
        public final String url;

        public Variant(long bitrate, String contentType, String url) {
            this.bitrate = bitrate;
            this.contentType = contentType;
            this.url = url;
        }
    }
}
