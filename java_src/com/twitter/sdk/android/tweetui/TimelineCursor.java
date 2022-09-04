package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.models.Identifiable;
import java.util.List;
/* loaded from: classes2.dex */
public class TimelineCursor {
    public final Long maxPosition;
    public final Long minPosition;

    public TimelineCursor(Long minPosition, Long maxPosition) {
        this.minPosition = minPosition;
        this.maxPosition = maxPosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimelineCursor(List<? extends Identifiable> items) {
        Long l = null;
        this.minPosition = items.size() > 0 ? Long.valueOf(items.get(items.size() - 1).getId()) : null;
        this.maxPosition = items.size() > 0 ? Long.valueOf(items.get(0).getId()) : l;
    }
}
