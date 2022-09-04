package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes.dex */
public class TweetEntities {
    static final TweetEntities EMPTY = new TweetEntities(null, null, null, null, null);
    @SerializedName("hashtags")
    public final List<HashtagEntity> hashtags;
    @SerializedName("media")
    public final List<MediaEntity> media;
    @SerializedName("symbols")
    public final List<SymbolEntity> symbols;
    @SerializedName("urls")
    public final List<UrlEntity> urls;
    @SerializedName("user_mentions")
    public final List<MentionEntity> userMentions;

    private TweetEntities() {
        this(null, null, null, null, null);
    }

    public TweetEntities(List<UrlEntity> urls, List<MentionEntity> userMentions, List<MediaEntity> media, List<HashtagEntity> hashtags, List<SymbolEntity> symbols) {
        this.urls = ModelUtils.getSafeList(urls);
        this.userMentions = ModelUtils.getSafeList(userMentions);
        this.media = ModelUtils.getSafeList(media);
        this.hashtags = ModelUtils.getSafeList(hashtags);
        this.symbols = ModelUtils.getSafeList(symbols);
    }
}
