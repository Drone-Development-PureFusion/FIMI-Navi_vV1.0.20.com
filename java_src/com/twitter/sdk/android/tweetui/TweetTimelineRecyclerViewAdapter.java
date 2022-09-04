package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.database.DataSetObserver;
import android.support.p004v7.widget.RecyclerView;
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
import com.twitter.sdk.android.core.models.TweetBuilder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class TweetTimelineRecyclerViewAdapter extends RecyclerView.Adapter<TweetViewHolder> {
    static final String DEFAULT_FILTERS_JSON_MSG = "{\"total_filters\":0}";
    static final String TOTAL_FILTERS_JSON_PROP = "total_filters";
    protected Callback<Tweet> actionCallback;
    protected final Context context;
    final Gson gson;
    private int previousCount;
    protected final int styleResId;
    protected final TimelineDelegate<Tweet> timelineDelegate;
    protected TweetUi tweetUi;

    public TweetTimelineRecyclerViewAdapter(Context context, Timeline<Tweet> timeline) {
        this(context, timeline, C2168R.style.tw__TweetLightStyle, null);
    }

    protected TweetTimelineRecyclerViewAdapter(Context context, Timeline<Tweet> timeline, int styleResId, Callback<Tweet> cb) {
        this(context, new TimelineDelegate(timeline), styleResId, cb, TweetUi.getInstance());
    }

    TweetTimelineRecyclerViewAdapter(Context context, TimelineDelegate<Tweet> timelineDelegate, int styleResId, Callback<Tweet> cb, TweetUi tweetUi) {
        this(context, timelineDelegate, styleResId);
        this.actionCallback = new ReplaceTweetCallback(timelineDelegate, cb);
        this.tweetUi = tweetUi;
        scribeTimelineImpression();
    }

    TweetTimelineRecyclerViewAdapter(Context context, TimelineDelegate<Tweet> timelineDelegate, int styleResId) {
        this.gson = new Gson();
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        this.context = context;
        this.timelineDelegate = timelineDelegate;
        this.styleResId = styleResId;
        this.timelineDelegate.refresh(new Callback<TimelineResult<Tweet>>() { // from class: com.twitter.sdk.android.tweetui.TweetTimelineRecyclerViewAdapter.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<TimelineResult<Tweet>> result) {
                TweetTimelineRecyclerViewAdapter.this.notifyDataSetChanged();
                TweetTimelineRecyclerViewAdapter.this.previousCount = TweetTimelineRecyclerViewAdapter.this.timelineDelegate.getCount();
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException exception) {
            }
        });
        DataSetObserver dataSetObserver = new DataSetObserver() { // from class: com.twitter.sdk.android.tweetui.TweetTimelineRecyclerViewAdapter.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                if (TweetTimelineRecyclerViewAdapter.this.previousCount == 0) {
                    TweetTimelineRecyclerViewAdapter.this.notifyDataSetChanged();
                } else {
                    TweetTimelineRecyclerViewAdapter.this.notifyItemRangeInserted(TweetTimelineRecyclerViewAdapter.this.previousCount, TweetTimelineRecyclerViewAdapter.this.timelineDelegate.getCount() - TweetTimelineRecyclerViewAdapter.this.previousCount);
                }
                TweetTimelineRecyclerViewAdapter.this.previousCount = TweetTimelineRecyclerViewAdapter.this.timelineDelegate.getCount();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                TweetTimelineRecyclerViewAdapter.this.notifyDataSetChanged();
                super.onInvalidated();
            }
        };
        this.timelineDelegate.registerDataSetObserver(dataSetObserver);
    }

    public void refresh(Callback<TimelineResult<Tweet>> cb) {
        this.timelineDelegate.refresh(cb);
        this.previousCount = 0;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    /* renamed from: onCreateViewHolder  reason: collision with other method in class */
    public TweetViewHolder mo1873onCreateViewHolder(ViewGroup parent, int viewType) {
        Tweet tweet = new TweetBuilder().build();
        CompactTweetView compactTweetView = new CompactTweetView(this.context, tweet, this.styleResId);
        compactTweetView.setOnActionCallback(this.actionCallback);
        return new TweetViewHolder(compactTweetView);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(TweetViewHolder holder, int position) {
        Tweet tweet = this.timelineDelegate.getItem(position);
        CompactTweetView compactTweetView = (CompactTweetView) holder.itemView;
        compactTweetView.setTweet(tweet);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.timelineDelegate.getCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class TweetViewHolder extends RecyclerView.ViewHolder {
        public TweetViewHolder(CompactTweetView itemView) {
            super(itemView);
        }
    }

    private void scribeTimelineImpression() {
        String jsonMessage;
        if (this.timelineDelegate instanceof FilterTimelineDelegate) {
            FilterTimelineDelegate filterTimelineDelegate = (FilterTimelineDelegate) this.timelineDelegate;
            TimelineFilter timelineFilter = filterTimelineDelegate.timelineFilter;
            jsonMessage = getJsonMessage(timelineFilter.totalFilters());
        } else {
            jsonMessage = DEFAULT_FILTERS_JSON_MSG;
        }
        ScribeItem scribeItem = ScribeItem.fromMessage(jsonMessage);
        List<ScribeItem> items = new ArrayList<>();
        items.add(scribeItem);
        String timelineType = getTimelineType(this.timelineDelegate.getTimeline());
        this.tweetUi.scribe(ScribeConstants.getSyndicatedSdkTimelineNamespace(timelineType));
        this.tweetUi.scribe(ScribeConstants.getTfwClientTimelineNamespace(timelineType), items);
    }

    private String getJsonMessage(int totalFilters) {
        JsonObject message = new JsonObject();
        message.addProperty(TOTAL_FILTERS_JSON_PROP, Integer.valueOf(totalFilters));
        return this.gson.toJson((JsonElement) message);
    }

    static String getTimelineType(Timeline timeline) {
        return timeline instanceof BaseTimeline ? ((BaseTimeline) timeline).getTimelineType() : FacebookRequestErrorClassification.KEY_OTHER;
    }

    /* loaded from: classes2.dex */
    static class ReplaceTweetCallback extends Callback<Tweet> {

        /* renamed from: cb */
        Callback<Tweet> f326cb;
        TimelineDelegate<Tweet> delegate;

        ReplaceTweetCallback(TimelineDelegate<Tweet> delegate, Callback<Tweet> cb) {
            this.delegate = delegate;
            this.f326cb = cb;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<Tweet> result) {
            this.delegate.setItemById(result.data);
            if (this.f326cb != null) {
                this.f326cb.success(result);
            }
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            if (this.f326cb != null) {
                this.f326cb.failure(exception);
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

        public TweetTimelineRecyclerViewAdapter build() {
            if (this.timelineFilter == null) {
                return new TweetTimelineRecyclerViewAdapter(this.context, this.timeline, this.styleResId, this.actionCallback);
            }
            FilterTimelineDelegate delegate = new FilterTimelineDelegate(this.timeline, this.timelineFilter);
            return new TweetTimelineRecyclerViewAdapter(this.context, delegate, this.styleResId, this.actionCallback, TweetUi.getInstance());
        }
    }
}
