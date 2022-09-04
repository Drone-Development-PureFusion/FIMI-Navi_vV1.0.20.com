package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.models.Tweet;
/* loaded from: classes2.dex */
class ResetTweetCallback extends Callback<Tweet> {
    final BaseTweetView baseTweetView;

    /* renamed from: cb */
    final Callback<Tweet> f321cb;
    final TweetRepository tweetRepository;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResetTweetCallback(BaseTweetView baseTweetView, TweetRepository tweetRepository, Callback<Tweet> cb) {
        this.baseTweetView = baseTweetView;
        this.tweetRepository = tweetRepository;
        this.f321cb = cb;
    }

    @Override // com.twitter.sdk.android.core.Callback
    public void success(Result<Tweet> result) {
        this.tweetRepository.updateCache(result.data);
        this.baseTweetView.setTweet(result.data);
        if (this.f321cb != null) {
            this.f321cb.success(result);
        }
    }

    @Override // com.twitter.sdk.android.core.Callback
    public void failure(TwitterException exception) {
        if (this.f321cb != null) {
            this.f321cb.failure(exception);
        }
    }
}
