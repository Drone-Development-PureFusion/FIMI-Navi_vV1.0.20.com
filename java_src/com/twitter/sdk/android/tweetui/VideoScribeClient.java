package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
/* loaded from: classes2.dex */
public interface VideoScribeClient {
    void impression(ScribeItem scribeItem);

    void play(ScribeItem scribeItem);
}
