package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class TwitterCollection {
    @SerializedName("objects")
    public final Content contents;
    @SerializedName("response")
    public final Metadata metadata;

    public TwitterCollection(Content contents, Metadata metadata) {
        this.contents = contents;
        this.metadata = metadata;
    }

    /* loaded from: classes.dex */
    public static final class Content {
        @SerializedName("tweets")
        public final Map<Long, Tweet> tweetMap;
        @SerializedName("users")
        public final Map<Long, User> userMap;

        public Content(Map<Long, Tweet> tweetMap, Map<Long, User> userMap) {
            this.tweetMap = ModelUtils.getSafeMap(tweetMap);
            this.userMap = ModelUtils.getSafeMap(userMap);
        }
    }

    /* loaded from: classes.dex */
    public static final class Metadata {
        @SerializedName("position")
        public final Position position;
        @SerializedName("timeline_id")
        public final String timelineId;
        @SerializedName("timeline")
        public final List<TimelineItem> timelineItems;

        public Metadata(String timelineId, Position position, List<TimelineItem> timelines) {
            this.timelineId = timelineId;
            this.position = position;
            this.timelineItems = timelines;
        }

        /* loaded from: classes.dex */
        public static final class Position {
            @SerializedName("max_position")
            public final Long maxPosition;
            @SerializedName("min_position")
            public final Long minPosition;

            public Position(Long maxPosition, Long minPosition) {
                this.maxPosition = maxPosition;
                this.minPosition = minPosition;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class TimelineItem {
        @SerializedName("tweet")
        public final TweetItem tweetItem;

        public TimelineItem(TweetItem tweetItem) {
            this.tweetItem = tweetItem;
        }

        /* loaded from: classes.dex */
        public static final class TweetItem {
            @SerializedName("id")

            /* renamed from: id */
            public final Long f314id;

            public TweetItem(Long id) {
                this.f314id = id;
            }
        }
    }
}
