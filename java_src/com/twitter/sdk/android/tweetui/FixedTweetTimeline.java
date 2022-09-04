package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.models.Tweet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class FixedTweetTimeline extends BaseTimeline implements Timeline<Tweet> {
    private static final String SCRIBE_SECTION = "fixed";
    final List<Tweet> tweets;

    FixedTweetTimeline(List<Tweet> tweets) {
        this.tweets = tweets == null ? new ArrayList<>() : tweets;
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void next(Long minPosition, Callback<TimelineResult<Tweet>> cb) {
        TimelineResult<Tweet> timelineResult = new TimelineResult<>(new TimelineCursor(this.tweets), this.tweets);
        cb.success(new Result<>(timelineResult, null));
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void previous(Long maxPosition, Callback<TimelineResult<Tweet>> cb) {
        List<Tweet> empty = Collections.emptyList();
        TimelineResult<Tweet> timelineResult = new TimelineResult<>(new TimelineCursor(empty), empty);
        cb.success(new Result<>(timelineResult, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTimeline
    public String getTimelineType() {
        return SCRIBE_SECTION;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private List<Tweet> tweets;

        public Builder setTweets(List<Tweet> tweets) {
            this.tweets = tweets;
            return this;
        }

        public FixedTweetTimeline build() {
            return new FixedTweetTimeline(this.tweets);
        }
    }
}
