package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import com.twitter.sdk.android.core.models.Tweet;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class TweetTimelineListAdapter extends TimelineListAdapter<Tweet> {
    static final String DEFAULT_FILTERS_JSON_MSG = "{\"total_filters\":0}";
    static final String TOTAL_FILTERS_JSON_PROP = "total_filters";
    protected Callback<Tweet> actionCallback;
    final Gson gson;
    protected final int styleResId;
    protected TweetUi tweetUi;

    @Override // com.twitter.sdk.android.tweetui.TimelineListAdapter, android.widget.Adapter
    public /* bridge */ /* synthetic */ int getCount() {
        return super.getCount();
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineListAdapter, android.widget.Adapter
    public /* bridge */ /* synthetic */ long getItemId(int i) {
        return super.getItemId(i);
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineListAdapter, android.widget.BaseAdapter
    public /* bridge */ /* synthetic */ void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineListAdapter, android.widget.BaseAdapter
    public /* bridge */ /* synthetic */ void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineListAdapter
    public /* bridge */ /* synthetic */ void refresh(Callback<TimelineResult<Tweet>> callback) {
        super.refresh(callback);
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineListAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public /* bridge */ /* synthetic */ void registerDataSetObserver(DataSetObserver dataSetObserver) {
        super.registerDataSetObserver(dataSetObserver);
    }

    @Override // com.twitter.sdk.android.tweetui.TimelineListAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public /* bridge */ /* synthetic */ void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        super.unregisterDataSetObserver(dataSetObserver);
    }

    public TweetTimelineListAdapter(Context context, Timeline<Tweet> timeline) {
        this(context, timeline, C2168R.style.tw__TweetLightStyle, null);
    }

    TweetTimelineListAdapter(Context context, Timeline<Tweet> timeline, int styleResId, Callback<Tweet> cb) {
        this(context, new TimelineDelegate(timeline), styleResId, cb, TweetUi.getInstance());
    }

    TweetTimelineListAdapter(Context context, TimelineDelegate<Tweet> delegate, int styleResId, Callback<Tweet> cb, TweetUi tweetUi) {
        super(context, delegate);
        this.gson = new Gson();
        this.styleResId = styleResId;
        this.actionCallback = new ReplaceTweetCallback(delegate, cb);
        this.tweetUi = tweetUi;
        scribeTimelineImpression();
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        Tweet tweet = getItem(position);
        if (convertView == null) {
            BaseTweetView tv = new CompactTweetView(this.context, tweet, this.styleResId);
            tv.setOnActionCallback(this.actionCallback);
            return tv;
        }
        ((BaseTweetView) convertView).setTweet(tweet);
        return convertView;
    }

    private void scribeTimelineImpression() {
        String jsonMessage;
        if (this.delegate instanceof FilterTimelineDelegate) {
            FilterTimelineDelegate filterTimelineDelegate = (FilterTimelineDelegate) this.delegate;
            TimelineFilter timelineFilter = filterTimelineDelegate.timelineFilter;
            jsonMessage = getJsonMessage(timelineFilter.totalFilters());
        } else {
            jsonMessage = DEFAULT_FILTERS_JSON_MSG;
        }
        ScribeItem scribeItem = ScribeItem.fromMessage(jsonMessage);
        List<ScribeItem> items = new ArrayList<>();
        items.add(scribeItem);
        String timelineType = getTimelineType(this.delegate.getTimeline());
        this.tweetUi.scribe(ScribeConstants.getSyndicatedSdkTimelineNamespace(timelineType));
        this.tweetUi.scribe(ScribeConstants.getTfwClientTimelineNamespace(timelineType), items);
    }

    private String getJsonMessage(int totalFilters) {
        JsonObject message = new JsonObject();
        message.addProperty(TOTAL_FILTERS_JSON_PROP, Integer.valueOf(totalFilters));
        return this.gson.toJson((JsonElement) message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getTimelineType(Timeline timeline) {
        return timeline instanceof BaseTimeline ? ((BaseTimeline) timeline).getTimelineType() : FacebookRequestErrorClassification.KEY_OTHER;
    }

    /* loaded from: classes2.dex */
    static class ReplaceTweetCallback extends Callback<Tweet> {

        /* renamed from: cb */
        Callback<Tweet> f325cb;
        TimelineDelegate<Tweet> delegate;

        ReplaceTweetCallback(TimelineDelegate<Tweet> delegate, Callback<Tweet> cb) {
            this.delegate = delegate;
            this.f325cb = cb;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<Tweet> result) {
            this.delegate.setItemById(result.data);
            if (this.f325cb != null) {
                this.f325cb.success(result);
            }
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            if (this.f325cb != null) {
                this.f325cb.failure(exception);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private Callback<Tweet> actionCallback;
        private Context context;
        private int styleResId = C2168R.style.tw__TweetLightStyle;
        private Timeline<Tweet> timeline;
        private TimelineFilter timelineFilter;

        public Builder(Context context) {
            this.context = context;
        }

        public Builder setTimeline(Timeline<Tweet> timeline) {
            this.timeline = timeline;
            return this;
        }

        public Builder setViewStyle(int styleResId) {
            this.styleResId = styleResId;
            return this;
        }

        public Builder setOnActionCallback(Callback<Tweet> actionCallback) {
            this.actionCallback = actionCallback;
            return this;
        }

        public Builder setTimelineFilter(TimelineFilter timelineFilter) {
            this.timelineFilter = timelineFilter;
            return this;
        }

        public TweetTimelineListAdapter build() {
            if (this.timelineFilter == null) {
                return new TweetTimelineListAdapter(this.context, this.timeline, this.styleResId, this.actionCallback);
            }
            FilterTimelineDelegate delegate = new FilterTimelineDelegate(this.timeline, this.timelineFilter);
            return new TweetTimelineListAdapter(this.context, delegate, this.styleResId, this.actionCallback, TweetUi.getInstance());
        }
    }
}
