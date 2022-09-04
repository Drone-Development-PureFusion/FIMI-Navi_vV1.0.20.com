package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes.dex */
public class MediaEntity extends UrlEntity {
    @SerializedName("ext_alt_text")
    public final String altText;
    @SerializedName("id")

    /* renamed from: id */
    public final long f307id;
    @SerializedName("id_str")
    public final String idStr;
    @SerializedName("media_url")
    public final String mediaUrl;
    @SerializedName("media_url_https")
    public final String mediaUrlHttps;
    @SerializedName("sizes")
    public final Sizes sizes;
    @SerializedName("source_status_id")
    public final long sourceStatusId;
    @SerializedName("source_status_id_str")
    public final String sourceStatusIdStr;
    @SerializedName("type")
    public final String type;
    @SerializedName("video_info")
    public final VideoInfo videoInfo;

    public MediaEntity(String url, String expandedUrl, String displayUrl, int start, int end, long id, String idStr, String mediaUrl, String mediaUrlHttps, Sizes sizes, long sourceStatusId, String sourceStatusIdStr, String type, VideoInfo videoInfo, String altText) {
        super(url, expandedUrl, displayUrl, start, end);
        this.f307id = id;
        this.idStr = idStr;
        this.mediaUrl = mediaUrl;
        this.mediaUrlHttps = mediaUrlHttps;
        this.sizes = sizes;
        this.sourceStatusId = sourceStatusId;
        this.sourceStatusIdStr = sourceStatusIdStr;
        this.type = type;
        this.videoInfo = videoInfo;
        this.altText = altText;
    }

    /* loaded from: classes.dex */
    public static class Sizes implements Serializable {
        @SerializedName("large")
        public final Size large;
        @SerializedName("medium")
        public final Size medium;
        @SerializedName("small")
        public final Size small;
        @SerializedName("thumb")
        public final Size thumb;

        public Sizes(Size thumb, Size small, Size medium, Size large) {
            this.thumb = thumb;
            this.small = small;
            this.medium = medium;
            this.large = large;
        }
    }

    /* loaded from: classes.dex */
    public static class Size implements Serializable {
        @SerializedName("h")

        /* renamed from: h */
        public final int f308h;
        @SerializedName("resize")
        public final String resize;
        @SerializedName("w")

        /* renamed from: w */
        public final int f309w;

        public Size(int w, int h, String resize) {
            this.f309w = w;
            this.f308h = h;
            this.resize = resize;
        }
    }
}
