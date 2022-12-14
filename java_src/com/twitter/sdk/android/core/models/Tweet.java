package com.twitter.sdk.android.core.models;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes.dex */
public class Tweet implements Identifiable {
    public static final long INVALID_ID = -1;
    @SerializedName("card")
    public final Card card;
    @SerializedName("coordinates")
    public final Coordinates coordinates;
    @SerializedName("created_at")
    public final String createdAt;
    @SerializedName("current_user_retweet")
    public final Object currentUserRetweet;
    @SerializedName("display_text_range")
    public final List<Integer> displayTextRange;
    @SerializedName("entities")
    public final TweetEntities entities;
    @SerializedName("extended_entities")
    public final TweetEntities extendedEntities;
    @SerializedName("favorite_count")
    public final Integer favoriteCount;
    @SerializedName("favorited")
    public final boolean favorited;
    @SerializedName("filter_level")
    public final String filterLevel;
    @SerializedName("id")

    /* renamed from: id */
    public final long f312id;
    @SerializedName("id_str")
    public final String idStr;
    @SerializedName("in_reply_to_screen_name")
    public final String inReplyToScreenName;
    @SerializedName("in_reply_to_status_id")
    public final long inReplyToStatusId;
    @SerializedName("in_reply_to_status_id_str")
    public final String inReplyToStatusIdStr;
    @SerializedName("in_reply_to_user_id")
    public final long inReplyToUserId;
    @SerializedName("in_reply_to_user_id_str")
    public final String inReplyToUserIdStr;
    @SerializedName("lang")
    public final String lang;
    @SerializedName("place")
    public final Place place;
    @SerializedName("possibly_sensitive")
    public final boolean possiblySensitive;
    @SerializedName("quoted_status")
    public final Tweet quotedStatus;
    @SerializedName("quoted_status_id")
    public final long quotedStatusId;
    @SerializedName("quoted_status_id_str")
    public final String quotedStatusIdStr;
    @SerializedName("retweet_count")
    public final int retweetCount;
    @SerializedName("retweeted")
    public final boolean retweeted;
    @SerializedName("retweeted_status")
    public final Tweet retweetedStatus;
    @SerializedName("scopes")
    public final Object scopes;
    @SerializedName(ShareConstants.FEED_SOURCE_PARAM)
    public final String source;
    @SerializedName(alternate = {"full_text"}, value = "text")
    public final String text;
    @SerializedName("truncated")
    public final boolean truncated;
    @SerializedName("user")
    public final User user;
    @SerializedName("withheld_copyright")
    public final boolean withheldCopyright;
    @SerializedName("withheld_in_countries")
    public final List<String> withheldInCountries;
    @SerializedName("withheld_scope")
    public final String withheldScope;

    private Tweet() {
        this(null, null, null, TweetEntities.EMPTY, TweetEntities.EMPTY, 0, false, null, 0L, "0", null, 0L, "0", 0L, "0", null, null, false, null, 0L, "0", null, 0, false, null, null, null, null, false, null, false, null, null, null);
    }

    public Tweet(Coordinates coordinates, String createdAt, Object currentUserRetweet, TweetEntities entities, TweetEntities extendedEntities, Integer favoriteCount, boolean favorited, String filterLevel, long id, String idStr, String inReplyToScreenName, long inReplyToStatusId, String inReplyToStatusIdStr, long inReplyToUserId, String inReplyToUserIdStr, String lang, Place place, boolean possiblySensitive, Object scopes, long quotedStatusId, String quotedStatusIdStr, Tweet quotedStatus, int retweetCount, boolean retweeted, Tweet retweetedStatus, String source, String text, List<Integer> displayTextRange, boolean truncated, User user, boolean withheldCopyright, List<String> withheldInCountries, String withheldScope, Card card) {
        this.coordinates = coordinates;
        this.createdAt = createdAt;
        this.currentUserRetweet = currentUserRetweet;
        this.entities = entities == null ? TweetEntities.EMPTY : entities;
        this.extendedEntities = extendedEntities == null ? TweetEntities.EMPTY : extendedEntities;
        this.favoriteCount = favoriteCount;
        this.favorited = favorited;
        this.filterLevel = filterLevel;
        this.f312id = id;
        this.idStr = idStr;
        this.inReplyToScreenName = inReplyToScreenName;
        this.inReplyToStatusId = inReplyToStatusId;
        this.inReplyToStatusIdStr = inReplyToStatusIdStr;
        this.inReplyToUserId = inReplyToUserId;
        this.inReplyToUserIdStr = inReplyToUserIdStr;
        this.lang = lang;
        this.place = place;
        this.possiblySensitive = possiblySensitive;
        this.scopes = scopes;
        this.quotedStatusId = quotedStatusId;
        this.quotedStatusIdStr = quotedStatusIdStr;
        this.quotedStatus = quotedStatus;
        this.retweetCount = retweetCount;
        this.retweeted = retweeted;
        this.retweetedStatus = retweetedStatus;
        this.source = source;
        this.text = text;
        this.displayTextRange = ModelUtils.getSafeList(displayTextRange);
        this.truncated = truncated;
        this.user = user;
        this.withheldCopyright = withheldCopyright;
        this.withheldInCountries = ModelUtils.getSafeList(withheldInCountries);
        this.withheldScope = withheldScope;
        this.card = card;
    }

    @Override // com.twitter.sdk.android.core.models.Identifiable
    public long getId() {
        return this.f312id;
    }

    public boolean equals(Object o) {
        if (o != null && (o instanceof Tweet)) {
            Tweet other = (Tweet) o;
            return this.f312id == other.f312id;
        }
        return false;
    }

    public int hashCode() {
        return (int) this.f312id;
    }
}
