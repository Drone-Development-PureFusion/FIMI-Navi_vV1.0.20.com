package com.fimi.widget.sticklistview.util;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class AdapterWrapper extends BaseAdapter implements StickyListHeadersAdapter {
    private final Context mContext;
    final StickyListHeadersAdapter mDelegate;
    private Drawable mDivider;
    private int mDividerHeight;
    private OnHeaderClickListener mOnHeaderClickListener;
    private final List<View> mHeaderCache = new LinkedList();
    private DataSetObserver mDataSetObserver = new DataSetObserver() { // from class: com.fimi.widget.sticklistview.util.AdapterWrapper.1
        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AdapterWrapper.this.mHeaderCache.clear();
            AdapterWrapper.super.notifyDataSetInvalidated();
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AdapterWrapper.super.notifyDataSetChanged();
        }
    };

    /* loaded from: classes.dex */
    public interface OnHeaderClickListener {
        void onHeaderClick(View view, int i, long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterWrapper(Context context, StickyListHeadersAdapter delegate) {
        this.mContext = context;
        this.mDelegate = delegate;
        delegate.registerDataSetObserver(this.mDataSetObserver);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDivider(Drawable divider) {
        this.mDivider = divider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDividerHeight(int dividerHeight) {
        this.mDividerHeight = dividerHeight;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.mDelegate.areAllItemsEnabled();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int position) {
        return this.mDelegate.isEnabled(position);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mDelegate.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.mDelegate.getItem(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return this.mDelegate.getItemId(position);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.mDelegate.hasStableIds();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.mDelegate.getItemViewType(position);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.mDelegate.getViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.mDelegate.isEmpty();
    }

    private void recycleHeaderIfExists(WrapperView wv) {
        View header = wv.mHeader;
        if (header != null) {
            this.mHeaderCache.add(header);
        }
    }

    private View configureHeader(WrapperView wv, final int position) {
        View header = this.mDelegate.getHeaderView(position, wv.mHeader == null ? popHeader() : wv.mHeader, wv, false);
        if (header == null) {
            throw new NullPointerException("Header view must not be null.");
        }
        header.setClickable(true);
        header.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.widget.sticklistview.util.AdapterWrapper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (AdapterWrapper.this.mOnHeaderClickListener != null) {
                    long headerId = AdapterWrapper.this.mDelegate.getHeaderId(position);
                    AdapterWrapper.this.mOnHeaderClickListener.onHeaderClick(v, position, headerId);
                }
            }
        });
        return header;
    }

    private View popHeader() {
        if (this.mHeaderCache.size() > 0) {
            return this.mHeaderCache.remove(0);
        }
        return null;
    }

    private boolean previousPositionHasSameHeader(int position) {
        return position != 0 && this.mDelegate.getHeaderId(position) == this.mDelegate.getHeaderId(position + (-1));
    }

    @Override // android.widget.Adapter
    public WrapperView getView(int position, View convertView, ViewGroup parent) {
        WrapperView wv = convertView == null ? new WrapperView(this.mContext) : (WrapperView) convertView;
        View item = this.mDelegate.getView(position, wv.mItem, wv);
        View header = null;
        if (previousPositionHasSameHeader(position)) {
            recycleHeaderIfExists(wv);
        } else {
            header = configureHeader(wv, position);
        }
        if ((item instanceof Checkable) && !(wv instanceof CheckableWrapperView)) {
            wv = new CheckableWrapperView(this.mContext);
        } else if (!(item instanceof Checkable) && (wv instanceof CheckableWrapperView)) {
            wv = new WrapperView(this.mContext);
        }
        wv.update(item, header, this.mDivider, this.mDividerHeight);
        return wv;
    }

    public void setOnHeaderClickListener(OnHeaderClickListener onHeaderClickListener) {
        this.mOnHeaderClickListener = onHeaderClickListener;
    }

    public boolean equals(Object o) {
        return this.mDelegate.equals(o);
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        return ((BaseAdapter) this.mDelegate).getDropDownView(position, convertView, parent);
    }

    public int hashCode() {
        return this.mDelegate.hashCode();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        ((BaseAdapter) this.mDelegate).notifyDataSetChanged();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        ((BaseAdapter) this.mDelegate).notifyDataSetInvalidated();
    }

    public String toString() {
        return this.mDelegate.toString();
    }

    @Override // com.fimi.widget.sticklistview.util.StickyListHeadersAdapter
    public View getHeaderView(int position, View convertView, ViewGroup parent, boolean isScroll) {
        return this.mDelegate.getHeaderView(position, convertView, parent, isScroll);
    }

    @Override // com.fimi.widget.sticklistview.util.StickyListHeadersAdapter
    public long getHeaderId(int position) {
        return this.mDelegate.getHeaderId(position);
    }
}
