package com.fimi.widget.sticklistview.util;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
/* loaded from: classes.dex */
public interface StickyListHeadersAdapter extends ListAdapter {
    long getHeaderId(int i);

    View getHeaderView(int i, View view, ViewGroup viewGroup, boolean z);
}
