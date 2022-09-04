package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Logger;
import com.twitter.sdk.android.core.TwitterException;
/* loaded from: classes2.dex */
abstract class LoggingCallback<T> extends Callback<T> {

    /* renamed from: cb */
    private final Callback f320cb;
    private final Logger logger;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoggingCallback(Callback cb, Logger logger) {
        this.f320cb = cb;
        this.logger = logger;
    }

    @Override // com.twitter.sdk.android.core.Callback
    public void failure(TwitterException exception) {
        this.logger.mo1290e("TweetUi", exception.getMessage(), exception);
        if (this.f320cb != null) {
            this.f320cb.failure(exception);
        }
    }
}
