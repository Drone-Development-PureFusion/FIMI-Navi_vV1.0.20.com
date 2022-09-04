package com.fimi.widget.sticklistview.util;

import android.content.Context;
import android.widget.SectionIndexer;
/* loaded from: classes.dex */
class SectionIndexerAdapterWrapper extends AdapterWrapper implements SectionIndexer {
    final SectionIndexer mSectionIndexerDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SectionIndexerAdapterWrapper(Context context, StickyListHeadersAdapter delegate) {
        super(context, delegate);
        this.mSectionIndexerDelegate = (SectionIndexer) delegate;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int section) {
        return this.mSectionIndexerDelegate.getPositionForSection(section);
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int position) {
        return this.mSectionIndexerDelegate.getSectionForPosition(position);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.mSectionIndexerDelegate.getSections();
    }
}
