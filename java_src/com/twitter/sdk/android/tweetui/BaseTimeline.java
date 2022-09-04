package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
/* loaded from: classes2.dex */
abstract class BaseTimeline {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String getTimelineType();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long decrementMaxId(Long maxId) {
        if (maxId == null) {
            return null;
        }
        return Long.valueOf(maxId.longValue() - 1);
    }

    /* loaded from: classes2.dex */
    static class TweetsCallback extends Callback<List<Tweet>> {

        /* renamed from: cb */
        final Callback<TimelineResult<Tweet>> f317cb;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TweetsCallback(Callback<TimelineResult<Tweet>> cb) {
            this.f317cb = cb;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<List<Tweet>> result) {
            List<Tweet> tweets = result.data;
            TimelineResult<Tweet> timelineResult = new TimelineResult<>(new TimelineCursor(tweets), tweets);
            if (this.f317cb != null) {
                this.f317cb.success(new Result<>(timelineResult, result.response));
            }
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            if (this.f317cb != null) {
                this.f317cb.failure(exception);
            }
        }
    }
}
