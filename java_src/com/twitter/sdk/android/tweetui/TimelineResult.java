package com.twitter.sdk.android.tweetui;

import java.util.List;
/* loaded from: classes2.dex */
public class TimelineResult<T> {
    public final List<T> items;
    public final TimelineCursor timelineCursor;

    public TimelineResult(TimelineCursor timelineCursor, List<T> items) {
        this.timelineCursor = timelineCursor;
        this.items = items;
    }
}
