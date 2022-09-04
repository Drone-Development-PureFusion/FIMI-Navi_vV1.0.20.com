package com.twitter.sdk.android.core.models;

import com.facebook.imagepipeline.producers.MediaVariationsIndexDatabase;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes.dex */
public class Media {
    @SerializedName("image")
    public final Image image;
    @SerializedName(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID)
    public final long mediaId;
    @SerializedName("media_id_string")
    public final String mediaIdString;
    @SerializedName("size")
    public final long size;

    public Media(long mediaID, String mediaIdString, long size, Image image) {
        this.mediaId = mediaID;
        this.mediaIdString = mediaIdString;
        this.size = size;
        this.image = image;
    }
}
