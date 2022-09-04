package com.twitter.sdk.android.tweetui;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.Identifiable;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TimelineDelegate<T extends Identifiable> {
    static final long CAPACITY = 200;
    List<T> itemList;
    final DataSetObservable listAdapterObservable;
    final Timeline<T> timeline;
    final TimelineStateHolder timelineStateHolder;

    public TimelineDelegate(Timeline<T> timeline) {
        this(timeline, null, null);
    }

    TimelineDelegate(Timeline<T> timeline, DataSetObservable observable, List<T> items) {
        if (timeline == null) {
            throw new IllegalArgumentException("Timeline must not be null");
        }
        this.timeline = timeline;
        this.timelineStateHolder = new TimelineStateHolder();
        if (observable == null) {
            this.listAdapterObservable = new DataSetObservable();
        } else {
            this.listAdapterObservable = observable;
        }
        if (items == null) {
            this.itemList = new ArrayList();
        } else {
            this.itemList = items;
        }
    }

    public void refresh(Callback<TimelineResult<T>> developerCb) {
        this.timelineStateHolder.resetCursors();
        loadNext(this.timelineStateHolder.positionForNext(), new RefreshCallback(developerCb, this.timelineStateHolder));
    }

    public void next(Callback<TimelineResult<T>> developerCb) {
        loadNext(this.timelineStateHolder.positionForNext(), new NextCallback(developerCb, this.timelineStateHolder));
    }

    public void previous() {
        loadPrevious(this.timelineStateHolder.positionForPrevious(), new PreviousCallback(this.timelineStateHolder));
    }

    public int getCount() {
        return this.itemList.size();
    }

    public Timeline getTimeline() {
        return this.timeline;
    }

    public T getItem(int position) {
        if (isLastPosition(position)) {
            previous();
        }
        return this.itemList.get(position);
    }

    public long getItemId(int position) {
        Identifiable item = this.itemList.get(position);
        return item.getId();
    }

    public void setItemById(T item) {
        for (int i = 0; i < this.itemList.size(); i++) {
            if (item.getId() == this.itemList.get(i).getId()) {
                this.itemList.set(i, item);
            }
        }
        notifyDataSetChanged();
    }

    boolean withinMaxCapacity() {
        return ((long) this.itemList.size()) < 200;
    }

    boolean isLastPosition(int position) {
        return position == this.itemList.size() + (-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadNext(Long minPosition, Callback<TimelineResult<T>> cb) {
        if (withinMaxCapacity()) {
            if (this.timelineStateHolder.startTimelineRequest()) {
                this.timeline.next(minPosition, cb);
                return;
            } else {
                cb.failure(new TwitterException("Request already in flight"));
                return;
            }
        }
        cb.failure(new TwitterException("Max capacity reached"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadPrevious(Long maxPosition, Callback<TimelineResult<T>> cb) {
        if (withinMaxCapacity()) {
            if (this.timelineStateHolder.startTimelineRequest()) {
                this.timeline.previous(maxPosition, cb);
                return;
            } else {
                cb.failure(new TwitterException("Request already in flight"));
                return;
            }
        }
        cb.failure(new TwitterException("Max capacity reached"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class DefaultCallback extends Callback<TimelineResult<T>> {
        final Callback<TimelineResult<T>> developerCallback;
        final TimelineStateHolder timelineStateHolder;

        DefaultCallback(Callback<TimelineResult<T>> developerCb, TimelineStateHolder timelineStateHolder) {
            this.developerCallback = developerCb;
            this.timelineStateHolder = timelineStateHolder;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<TimelineResult<T>> result) {
            this.timelineStateHolder.finishTimelineRequest();
            if (this.developerCallback != null) {
                this.developerCallback.success(result);
            }
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            this.timelineStateHolder.finishTimelineRequest();
            if (this.developerCallback != null) {
                this.developerCallback.failure(exception);
            }
        }
    }

    /* loaded from: classes2.dex */
    class NextCallback extends TimelineDelegate<T>.DefaultCallback {
        /* JADX INFO: Access modifiers changed from: package-private */
        public NextCallback(Callback<TimelineResult<T>> developerCb, TimelineStateHolder timelineStateHolder) {
            super(developerCb, timelineStateHolder);
        }

        @Override // com.twitter.sdk.android.tweetui.TimelineDelegate.DefaultCallback, com.twitter.sdk.android.core.Callback
        public void success(Result<TimelineResult<T>> result) {
            if (result.data.items.size() > 0) {
                ArrayList<T> receivedItems = new ArrayList<>(result.data.items);
                receivedItems.addAll(TimelineDelegate.this.itemList);
                TimelineDelegate.this.itemList = receivedItems;
                TimelineDelegate.this.notifyDataSetChanged();
                this.timelineStateHolder.setNextCursor(result.data.timelineCursor);
            }
            super.success(result);
        }
    }

    /* loaded from: classes2.dex */
    class RefreshCallback extends TimelineDelegate<T>.NextCallback {
        /* JADX INFO: Access modifiers changed from: package-private */
        public RefreshCallback(Callback<TimelineResult<T>> developerCb, TimelineStateHolder timelineStateHolder) {
            super(developerCb, timelineStateHolder);
        }

        @Override // com.twitter.sdk.android.tweetui.TimelineDelegate.NextCallback, com.twitter.sdk.android.tweetui.TimelineDelegate.DefaultCallback, com.twitter.sdk.android.core.Callback
        public void success(Result<TimelineResult<T>> result) {
            if (result.data.items.size() > 0) {
                TimelineDelegate.this.itemList.clear();
            }
            super.success(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class PreviousCallback extends TimelineDelegate<T>.DefaultCallback {
        /* JADX INFO: Access modifiers changed from: package-private */
        public PreviousCallback(TimelineStateHolder timelineStateHolder) {
            super(null, timelineStateHolder);
        }

        @Override // com.twitter.sdk.android.tweetui.TimelineDelegate.DefaultCallback, com.twitter.sdk.android.core.Callback
        public void success(Result<TimelineResult<T>> result) {
            if (result.data.items.size() > 0) {
                TimelineDelegate.this.itemList.addAll(result.data.items);
                TimelineDelegate.this.notifyDataSetChanged();
                this.timelineStateHolder.setPreviousCursor(result.data.timelineCursor);
            }
            super.success(result);
        }
    }

    public void registerDataSetObserver(DataSetObserver observer) {
        this.listAdapterObservable.registerObserver(observer);
    }

    public void unregisterDataSetObserver(DataSetObserver observer) {
        this.listAdapterObservable.unregisterObserver(observer);
    }

    public void notifyDataSetChanged() {
        this.listAdapterObservable.notifyChanged();
    }

    public void notifyDataSetInvalidated() {
        this.listAdapterObservable.notifyInvalidated();
    }
}
