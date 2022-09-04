package com.twitter.sdk.android.core.internal.scribe;
/* loaded from: classes2.dex */
public interface EventsStrategy<T> extends FileRollOverManager, EventsManager<T> {
    FilesSender getFilesSender();
}
