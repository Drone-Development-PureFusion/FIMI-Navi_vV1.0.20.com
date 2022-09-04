package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes.dex */
public class Search {
    @SerializedName("search_metadata")
    public final SearchMetadata searchMetadata;
    @SerializedName("statuses")
    public final List<Tweet> tweets;

    private Search() {
        this(null, null);
    }

    public Search(List<Tweet> tweets, SearchMetadata searchMetadata) {
        this.tweets = ModelUtils.getSafeList(tweets);
        this.searchMetadata = searchMetadata;
    }
}
