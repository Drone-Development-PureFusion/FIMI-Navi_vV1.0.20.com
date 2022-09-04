package com.twitter.sdk.android.core.internal.scribe;
/* loaded from: classes2.dex */
public class DisabledEventsStrategy<T> implements EventsStrategy<T> {
    @Override // com.twitter.sdk.android.core.internal.scribe.EventsManager
    public void sendEvents() {
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsManager
    public void deleteAllEvents() {
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsManager
    public void recordEvent(T event) {
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.FileRollOverManager
    public void cancelTimeBasedFileRollOver() {
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.FileRollOverManager
    public void scheduleTimeBasedRollOverIfNeeded() {
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.FileRollOverManager
    public boolean rollFileOver() {
        return false;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStrategy
    public FilesSender getFilesSender() {
        return null;
    }
}
