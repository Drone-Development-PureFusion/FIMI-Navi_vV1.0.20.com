package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.TweetBuilder;
import com.twitter.sdk.android.core.models.TwitterCollection;
import com.twitter.sdk.android.core.models.User;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
/* loaded from: classes2.dex */
public class CollectionTimeline extends BaseTimeline implements Timeline<Tweet> {
    static final String COLLECTION_PREFIX = "custom-";
    private static final String SCRIBE_SECTION = "collection";
    final String collectionIdentifier;
    final Integer maxItemsPerRequest;
    final TwitterCore twitterCore;

    CollectionTimeline(TwitterCore twitterCore, Long collectionId, Integer maxItemsPerRequest) {
        if (collectionId == null) {
            this.collectionIdentifier = null;
        } else {
            this.collectionIdentifier = COLLECTION_PREFIX + Long.toString(collectionId.longValue());
        }
        this.twitterCore = twitterCore;
        this.maxItemsPerRequest = maxItemsPerRequest;
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void next(Long minPosition, Callback<TimelineResult<Tweet>> cb) {
        createCollectionRequest(minPosition, null).enqueue(new CollectionCallback(cb));
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void previous(Long maxPosition, Callback<TimelineResult<Tweet>> cb) {
        createCollectionRequest(null, maxPosition).enqueue(new CollectionCallback(cb));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTimeline
    public String getTimelineType() {
        return SCRIBE_SECTION;
    }

    Call<TwitterCollection> createCollectionRequest(Long minPosition, Long maxPosition) {
        return this.twitterCore.getApiClient().getCollectionService().collection(this.collectionIdentifier, this.maxItemsPerRequest, maxPosition, minPosition);
    }

    /* loaded from: classes2.dex */
    class CollectionCallback extends Callback<TwitterCollection> {

        /* renamed from: cb */
        final Callback<TimelineResult<Tweet>> f318cb;

        CollectionCallback(Callback<TimelineResult<Tweet>> cb) {
            this.f318cb = cb;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<TwitterCollection> result) {
            TimelineResult<Tweet> timelineResult;
            TimelineCursor timelineCursor = CollectionTimeline.getTimelineCursor(result.data);
            List<Tweet> tweets = CollectionTimeline.getOrderedTweets(result.data);
            if (timelineCursor != null) {
                timelineResult = new TimelineResult<>(timelineCursor, tweets);
            } else {
                timelineResult = new TimelineResult<>(null, Collections.emptyList());
            }
            if (this.f318cb != null) {
                this.f318cb.success(new Result<>(timelineResult, result.response));
            }
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            if (this.f318cb != null) {
                this.f318cb.failure(exception);
            }
        }
    }

    static List<Tweet> getOrderedTweets(TwitterCollection collection) {
        if (collection == null || collection.contents == null || collection.contents.tweetMap == null || collection.contents.userMap == null || collection.contents.tweetMap.isEmpty() || collection.contents.userMap.isEmpty() || collection.metadata == null || collection.metadata.timelineItems == null || collection.metadata.position == null) {
            return Collections.emptyList();
        }
        List<Tweet> tweets = new ArrayList<>();
        for (TwitterCollection.TimelineItem item : collection.metadata.timelineItems) {
            Tweet trimmedTweet = collection.contents.tweetMap.get(item.tweetItem.f314id);
            Tweet tweet = mapTweetToUsers(trimmedTweet, collection.contents.userMap);
            tweets.add(tweet);
        }
        return tweets;
    }

    static Tweet mapTweetToUsers(Tweet trimmedTweet, Map<Long, User> userMap) {
        Long userId = Long.valueOf(trimmedTweet.user.f315id);
        User user = userMap.get(userId);
        TweetBuilder builder = new TweetBuilder().copy(trimmedTweet).setUser(user);
        if (trimmedTweet.quotedStatus != null) {
            Tweet quoteStatus = mapTweetToUsers(trimmedTweet.quotedStatus, userMap);
            builder.setQuotedStatus(quoteStatus);
        }
        return builder.build();
    }

    static TimelineCursor getTimelineCursor(TwitterCollection twitterCollection) {
        if (twitterCollection == null || twitterCollection.metadata == null || twitterCollection.metadata.position == null) {
            return null;
        }
        Long minPosition = twitterCollection.metadata.position.minPosition;
        Long maxPosition = twitterCollection.metadata.position.maxPosition;
        return new TimelineCursor(minPosition, maxPosition);
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private Long collectionId;
        private Integer maxItemsPerRequest;
        private final TwitterCore twitterCore;

        public Builder() {
            this.maxItemsPerRequest = 30;
            this.twitterCore = TwitterCore.getInstance();
        }

        Builder(TwitterCore twitterCore) {
            this.maxItemsPerRequest = 30;
            this.twitterCore = twitterCore;
        }

        /* renamed from: id */
        public Builder m1283id(Long collectionId) {
            this.collectionId = collectionId;
            return this;
        }

        public Builder maxItemsPerRequest(Integer maxItemsPerRequest) {
            this.maxItemsPerRequest = maxItemsPerRequest;
            return this;
        }

        public CollectionTimeline build() {
            if (this.collectionId == null) {
                throw new IllegalStateException("collection id must not be null");
            }
            return new CollectionTimeline(this.twitterCore, this.collectionId, this.maxItemsPerRequest);
        }
    }
}
