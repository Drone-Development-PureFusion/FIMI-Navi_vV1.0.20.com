package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes.dex */
public class UserEntities {
    @SerializedName("description")
    public final UrlEntities description;
    @SerializedName("url")
    public final UrlEntities url;

    public UserEntities(UrlEntities url, UrlEntities description) {
        this.url = url;
        this.description = description;
    }

    /* loaded from: classes.dex */
    public static class UrlEntities {
        @SerializedName("urls")
        public final List<UrlEntity> urls;

        private UrlEntities() {
            this(null);
        }

        public UrlEntities(List<UrlEntity> urls) {
            this.urls = ModelUtils.getSafeList(urls);
        }
    }
}
