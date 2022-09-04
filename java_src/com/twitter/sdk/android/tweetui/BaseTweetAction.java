package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.models.Tweet;
/* loaded from: classes2.dex */
class BaseTweetAction {
    protected final Callback<Tweet> actionCallback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseTweetAction(Callback<Tweet> actionCallback) {
        this.actionCallback = actionCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Callback<Tweet> getActionCallback() {
        return this.actionCallback;
    }
}
