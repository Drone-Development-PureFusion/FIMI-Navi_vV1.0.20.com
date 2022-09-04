package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.database.DataSetObserver;
import android.widget.BaseAdapter;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.models.Identifiable;
/* loaded from: classes2.dex */
abstract class TimelineListAdapter<T extends Identifiable> extends BaseAdapter {
    protected final Context context;
    protected final TimelineDelegate<T> delegate;

    public TimelineListAdapter(Context context, Timeline<T> timeline) {
        this(context, new TimelineDelegate(timeline));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimelineListAdapter(Context context, TimelineDelegate<T> delegate) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        this.context = context;
        this.delegate = delegate;
        delegate.refresh(null);
    }

    public void refresh(Callback<TimelineResult<T>> cb) {
        this.delegate.refresh(cb);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.delegate.getCount();
    }

    @Override // android.widget.Adapter
    /* renamed from: getItem */
    public T mo1872getItem(int position) {
        return this.delegate.getItem(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return this.delegate.getItemId(position);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver observer) {
        this.delegate.registerDataSetObserver(observer);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver observer) {
        this.delegate.unregisterDataSetObserver(observer);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.delegate.notifyDataSetChanged();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        this.delegate.notifyDataSetInvalidated();
    }
}
