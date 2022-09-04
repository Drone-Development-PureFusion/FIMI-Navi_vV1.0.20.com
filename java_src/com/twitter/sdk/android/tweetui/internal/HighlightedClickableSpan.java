package com.twitter.sdk.android.tweetui.internal;

import android.view.View;
/* loaded from: classes2.dex */
public interface HighlightedClickableSpan {
    boolean isSelected();

    void onClick(View view);

    void select(boolean z);
}
