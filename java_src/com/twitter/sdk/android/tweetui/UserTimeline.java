package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.services.StatusesService;
import com.twitter.sdk.android.tweetui.BaseTimeline;
import java.util.List;
import retrofit2.Call;
/* loaded from: classes2.dex */
public class UserTimeline extends BaseTimeline implements Timeline<Tweet> {
    private static final String SCRIBE_SECTION = "user";
    final Boolean includeReplies;
    final Boolean includeRetweets;
    final Integer maxItemsPerRequest;
    final String screenName;
    final TwitterCore twitterCore;
    final Long userId;

    UserTimeline(TwitterCore twitterCore, Long userId, String screenName, Integer maxItemsPerRequest, Boolean includeReplies, Boolean includeRetweets) {
        this.twitterCore = twitterCore;
        this.userId = userId;
        this.screenName = screenName;
        this.maxItemsPerRequest = maxItemsPerRequest;
        this.includeReplies = Boolean.valueOf(includeReplies == null ? false : includeReplies.booleanValue());
        this.includeRetweets = includeRetweets;
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void next(Long sinceId, Callback<TimelineResult<Tweet>> cb) {
        createUserTimelineRequest(sinceId, null).enqueue(new BaseTimeline.TweetsCallback(cb));
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void previous(Long maxId, Callback<TimelineResult<Tweet>> cb) {
        createUserTimelineRequest(null, decrementMaxId(maxId)).enqueue(new BaseTimeline.TweetsCallback(cb));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTimeline
    public String getTimelineType() {
        return SCRIBE_SECTION;
    }

    Call<List<Tweet>> createUserTimelineRequest(Long sinceId, Long maxId) {
        boolean z = false;
        StatusesService statusesService = this.twitterCore.getApiClient().getStatusesService();
        Long l = this.userId;
        String str = this.screenName;
        Integer num = this.maxItemsPerRequest;
        if (!this.includeReplies.booleanValue()) {
            z = true;
        }
        return statusesService.userTimeline(l, str, num, sinceId, maxId, false, Boolean.valueOf(z), null, this.includeRetweets);
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private Boolean includeReplies;
        private Boolean includeRetweets;
        private Integer maxItemsPerRequest;
        private String screenName;
        private final TwitterCore twitterCore;
        private Long userId;

        public Builder() {
            this.maxItemsPerRequest = 30;
            this.twitterCore = TwitterCore.getInstance();
        }

        Builder(TwitterCore twitterCore) {
            this.maxItemsPerRequest = 30;
            this.twitterCore = twitterCore;
        }

        public Builder userId(Long userId) {
            this.userId = userId;
            return this;
        }

        public Builder screenName(String screenName) {
            this.screenName = screenName;
            return this;
        }

        public Builder maxItemsPerRequest(Integer maxItemsPerRequest) {
            this.maxItemsPerRequest = maxItemsPerRequest;
            return this;
        }

        public Builder includeReplies(Boolean includeReplies) {
            this.includeReplies = includeReplies;
            return this;
        }

        public Builder includeRetweets(Boolean includeRetweets) {
            this.includeRetweets = includeRetweets;
            return this;
        }

        public UserTimeline build() {
            return new UserTimeline(this.twitterCore, this.userId, this.screenName, this.maxItemsPerRequest, this.includeReplies, this.includeRetweets);
        }
    }
}
