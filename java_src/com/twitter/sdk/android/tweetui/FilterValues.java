package com.twitter.sdk.android.tweetui;

import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.models.ModelUtils;
import java.util.List;
/* loaded from: classes.dex */
public class FilterValues {
    @SerializedName("handles")
    public final List<String> handles;
    @SerializedName("hashtags")
    public final List<String> hashtags;
    @SerializedName("keywords")
    public final List<String> keywords;
    @SerializedName("urls")
    public final List<String> urls;

    private FilterValues() {
        this(null, null, null, null);
    }

    public FilterValues(List<String> keywords, List<String> hashtags, List<String> handles, List<String> urls) {
        this.keywords = ModelUtils.getSafeList(keywords);
        this.hashtags = ModelUtils.getSafeList(hashtags);
        this.handles = ModelUtils.getSafeList(handles);
        this.urls = ModelUtils.getSafeList(urls);
    }
}
