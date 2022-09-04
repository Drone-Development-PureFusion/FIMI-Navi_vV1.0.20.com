package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.tweetui.BaseTimeline;
import java.util.List;
import retrofit2.Call;
/* loaded from: classes2.dex */
public class TwitterListTimeline extends BaseTimeline implements Timeline<Tweet> {
    private static final String SCRIBE_SECTION = "list";
    final Boolean includeRetweets;
    final Long listId;
    final Integer maxItemsPerRequest;
    final Long ownerId;
    final String ownerScreenName;
    final String slug;
    final TwitterCore twitterCore;

    TwitterListTimeline(TwitterCore twitterCore, Long listId, String slug, Long ownerId, String ownerScreenName, Integer maxItemsPerRequest, Boolean includeRetweets) {
        this.twitterCore = twitterCore;
        this.listId = listId;
        this.slug = slug;
        this.ownerId = ownerId;
        this.ownerScreenName = ownerScreenName;
        this.maxItemsPerRequest = maxItemsPerRequest;
        this.includeRetweets = includeRetweets;
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void next(Long sinceId, Callback<TimelineResult<Tweet>> cb) {
        createListTimelineRequest(sinceId, null).enqueue(new BaseTimeline.TweetsCallback(cb));
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void previous(Long maxId, Callback<TimelineResult<Tweet>> cb) {
        createListTimelineRequest(null, decrementMaxId(maxId)).enqueue(new BaseTimeline.TweetsCallback(cb));
    }

    Call<List<Tweet>> createListTimelineRequest(Long sinceId, Long maxId) {
        return this.twitterCore.getApiClient().getListService().statuses(this.listId, this.slug, this.ownerScreenName, this.ownerId, sinceId, maxId, this.maxItemsPerRequest, true, this.includeRetweets);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTimeline
    public String getTimelineType() {
        return SCRIBE_SECTION;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private Boolean includeRetweets;
        private Long listId;
        private Integer maxItemsPerRequest;
        private Long ownerId;
        private String ownerScreenName;
        private String slug;
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
        public Builder m1282id(Long id) {
            this.listId = id;
            return this;
        }

        public Builder slugWithOwnerId(String slug, Long ownerId) {
            this.slug = slug;
            this.ownerId = ownerId;
            return this;
        }

        public Builder slugWithOwnerScreenName(String slug, String ownerScreenName) {
            this.slug = slug;
            this.ownerScreenName = ownerScreenName;
            return this;
        }

        public Builder maxItemsPerRequest(Integer maxItemsPerRequest) {
            this.maxItemsPerRequest = maxItemsPerRequest;
            return this;
        }

        public Builder includeRetweets(Boolean includeRetweets) {
            this.includeRetweets = includeRetweets;
            return this;
        }

        public TwitterListTimeline build() {
            boolean z = true;
            boolean z2 = this.listId == null;
            if (this.slug != null) {
                z = false;
            }
            if (!(z2 ^ z)) {
                throw new IllegalStateException("must specify either a list id or slug/owner pair");
            }
            if (this.slug != null && this.ownerId == null && this.ownerScreenName == null) {
                throw new IllegalStateException("slug/owner pair must set owner via ownerId or ownerScreenName");
            }
            return new TwitterListTimeline(this.twitterCore, this.listId, this.slug, this.ownerId, this.ownerScreenName, this.maxItemsPerRequest, this.includeRetweets);
        }
    }
}
