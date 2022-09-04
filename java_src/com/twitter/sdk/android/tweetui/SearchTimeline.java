package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.Search;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.services.params.Geocode;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import retrofit2.Call;
/* loaded from: classes2.dex */
public class SearchTimeline extends BaseTimeline implements Timeline<Tweet> {
    static final String FILTER_RETWEETS = " -filter:retweets";
    private static final SimpleDateFormat QUERY_DATE = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
    private static final String SCRIBE_SECTION = "search";
    final Geocode geocode;
    final String languageCode;
    final Integer maxItemsPerRequest;
    final String query;
    final String resultType;
    final TwitterCore twitterCore;
    final String untilDate;

    SearchTimeline(TwitterCore twitterCore, String query, Geocode geocode, String resultType, String languageCode, Integer maxItemsPerRequest, String untilDate) {
        this.twitterCore = twitterCore;
        this.languageCode = languageCode;
        this.maxItemsPerRequest = maxItemsPerRequest;
        this.untilDate = untilDate;
        this.resultType = resultType;
        this.query = query == null ? null : query + FILTER_RETWEETS;
        this.geocode = geocode;
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void next(Long sinceId, Callback<TimelineResult<Tweet>> cb) {
        createSearchRequest(sinceId, null).enqueue(new SearchCallback(cb));
    }

    @Override // com.twitter.sdk.android.tweetui.Timeline
    public void previous(Long maxId, Callback<TimelineResult<Tweet>> cb) {
        createSearchRequest(null, decrementMaxId(maxId)).enqueue(new SearchCallback(cb));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTimeline
    public String getTimelineType() {
        return SCRIBE_SECTION;
    }

    Call<Search> createSearchRequest(Long sinceId, Long maxId) {
        return this.twitterCore.getApiClient().getSearchService().tweets(this.query, this.geocode, this.languageCode, null, this.resultType, this.maxItemsPerRequest, this.untilDate, sinceId, maxId, true);
    }

    /* loaded from: classes2.dex */
    class SearchCallback extends Callback<Search> {

        /* renamed from: cb */
        final Callback<TimelineResult<Tweet>> f322cb;

        SearchCallback(Callback<TimelineResult<Tweet>> cb) {
            this.f322cb = cb;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<Search> result) {
            List<Tweet> tweets = result.data.tweets;
            TimelineResult<Tweet> timelineResult = new TimelineResult<>(new TimelineCursor(tweets), tweets);
            if (this.f322cb != null) {
                this.f322cb.success(new Result<>(timelineResult, result.response));
            }
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            if (this.f322cb != null) {
                this.f322cb.failure(exception);
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum ResultType {
        RECENT("recent"),
        POPULAR("popular"),
        MIXED("mixed"),
        FILTERED("filtered");
        
        final String type;

        ResultType(String type) {
            this.type = type;
        }
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private Geocode geocode;
        private String lang;
        private Integer maxItemsPerRequest;
        private String query;
        private String resultType;
        private final TwitterCore twitterCore;
        private String untilDate;

        public Builder() {
            this.resultType = ResultType.FILTERED.type;
            this.maxItemsPerRequest = 30;
            this.twitterCore = TwitterCore.getInstance();
        }

        Builder(TwitterCore twitterCore) {
            this.resultType = ResultType.FILTERED.type;
            this.maxItemsPerRequest = 30;
            this.twitterCore = twitterCore;
        }

        public Builder query(String query) {
            this.query = query;
            return this;
        }

        public Builder geocode(Geocode geocode) {
            this.geocode = geocode;
            return this;
        }

        public Builder resultType(ResultType resultType) {
            this.resultType = resultType.type;
            return this;
        }

        public Builder languageCode(String languageCode) {
            this.lang = languageCode;
            return this;
        }

        public Builder maxItemsPerRequest(Integer maxItemsPerRequest) {
            this.maxItemsPerRequest = maxItemsPerRequest;
            return this;
        }

        public Builder untilDate(Date date) {
            this.untilDate = SearchTimeline.QUERY_DATE.format(date);
            return this;
        }

        public SearchTimeline build() {
            if (this.query == null) {
                throw new IllegalStateException("query must not be null");
            }
            return new SearchTimeline(this.twitterCore, this.query, this.geocode, this.resultType, this.lang, this.maxItemsPerRequest, this.untilDate);
        }
    }
}
