package com.twitter.sdk.android.tweetui;

import android.os.Handler;
import android.os.Looper;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.tweetui.TimelineDelegate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
class FilterTimelineDelegate extends TimelineDelegate<Tweet> {
    static final String TOTAL_APPLIED_FILTERS_JSON_PROP = "total_filters";
    static final String TWEETS_COUNT_JSON_PROP = "tweet_count";
    static final String TWEETS_FILTERED_JSON_PROP = "tweets_filtered";
    final TimelineFilter timelineFilter;
    final Gson gson = new Gson();
    final TweetUi tweetUi = TweetUi.getInstance();

    public FilterTimelineDelegate(Timeline<Tweet> timeline, TimelineFilter timelineFilter) {
        super(timeline);
        this.timelineFilter = timelineFilter;
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineDelegate
    public void refresh(Callback<TimelineResult<Tweet>> developerCb) {
        this.timelineStateHolder.resetCursors();
        loadNext(this.timelineStateHolder.positionForNext(), new TimelineFilterCallback(new TimelineDelegate.RefreshCallback(developerCb, this.timelineStateHolder), this.timelineFilter));
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineDelegate
    public void next(Callback<TimelineResult<Tweet>> developerCb) {
        loadNext(this.timelineStateHolder.positionForNext(), new TimelineFilterCallback(new TimelineDelegate.NextCallback(developerCb, this.timelineStateHolder), this.timelineFilter));
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineDelegate
    public void previous() {
        loadPrevious(this.timelineStateHolder.positionForPrevious(), new TimelineFilterCallback(new TimelineDelegate.PreviousCallback(this.timelineStateHolder), this.timelineFilter));
    }

    /* loaded from: classes2.dex */
    class TimelineFilterCallback extends Callback<TimelineResult<Tweet>> {
        final TimelineDelegate<Tweet>.DefaultCallback callback;
        final TimelineFilter timelineFilter;
        final Handler handler = new Handler(Looper.getMainLooper());
        final ExecutorService executorService = Twitter.getInstance().getExecutorService();

        TimelineFilterCallback(TimelineDelegate<Tweet>.DefaultCallback callback, TimelineFilter timelineFilter) {
            this.callback = callback;
            this.timelineFilter = timelineFilter;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(final Result<TimelineResult<Tweet>> result) {
            Runnable timelineFilterRunnable = new Runnable() { // from class: com.twitter.sdk.android.tweetui.FilterTimelineDelegate.TimelineFilterCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    List<Tweet> filteredTweets = TimelineFilterCallback.this.timelineFilter.filter(((TimelineResult) result.data).items);
                    final TimelineResult<Tweet> filteredTimelineResult = TimelineFilterCallback.this.buildTimelineResult(((TimelineResult) result.data).timelineCursor, filteredTweets);
                    TimelineFilterCallback.this.handler.post(new Runnable() { // from class: com.twitter.sdk.android.tweetui.FilterTimelineDelegate.TimelineFilterCallback.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TimelineFilterCallback.this.callback.success(new Result<>(filteredTimelineResult, result.response));
                        }
                    });
                    FilterTimelineDelegate.this.scribeFilteredTimeline(((TimelineResult) result.data).items, filteredTweets);
                }
            };
            this.executorService.execute(timelineFilterRunnable);
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException ex) {
            if (this.callback != null) {
                this.callback.failure(ex);
            }
        }

        TimelineResult<Tweet> buildTimelineResult(TimelineCursor timelineCursor, List<Tweet> filteredTweets) {
            return new TimelineResult<>(timelineCursor, filteredTweets);
        }
    }

    void scribeFilteredTimeline(List<Tweet> tweets, List<Tweet> filteredTweets) {
        int tweetCount = tweets.size();
        int totalTweetsFiltered = tweetCount - filteredTweets.size();
        int totalFilters = this.timelineFilter.totalFilters();
        String jsonMessage = getJsonMessage(tweetCount, totalTweetsFiltered, totalFilters);
        ScribeItem scribeItem = ScribeItem.fromMessage(jsonMessage);
        List<ScribeItem> items = new ArrayList<>();
        items.add(scribeItem);
        String timelineType = TweetTimelineListAdapter.getTimelineType(this.timeline);
        this.tweetUi.scribe(ScribeConstants.getTfwClientFilterTimelineNamespace(timelineType), items);
    }

    private String getJsonMessage(int totalTweetsSize, int filteredTweetsSize, int totalFilters) {
        JsonObject message = new JsonObject();
        message.addProperty(TWEETS_COUNT_JSON_PROP, Integer.valueOf(totalTweetsSize));
        message.addProperty(TWEETS_FILTERED_JSON_PROP, Integer.valueOf(totalTweetsSize - filteredTweetsSize));
        message.addProperty(TOTAL_APPLIED_FILTERS_JSON_PROP, Integer.valueOf(totalFilters));
        return this.gson.toJson((JsonElement) message);
    }
}
