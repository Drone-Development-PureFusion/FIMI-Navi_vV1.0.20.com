package com.twitter.sdk.android.tweetui;

import android.view.View;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterApiException;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.TwitterApiConstants;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.TweetBuilder;
/* loaded from: classes2.dex */
class LikeTweetAction extends BaseTweetAction implements View.OnClickListener {
    final Tweet tweet;
    final TweetRepository tweetRepository;
    final TweetScribeClient tweetScribeClient;
    final TweetUi tweetUi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LikeTweetAction(Tweet tweet, TweetUi tweetUi, Callback<Tweet> cb) {
        this(tweet, tweetUi, cb, new TweetScribeClientImpl(tweetUi));
    }

    LikeTweetAction(Tweet tweet, TweetUi tweetUi, Callback<Tweet> cb, TweetScribeClient tweetScribeClient) {
        super(cb);
        this.tweet = tweet;
        this.tweetUi = tweetUi;
        this.tweetScribeClient = tweetScribeClient;
        this.tweetRepository = tweetUi.getTweetRepository();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view instanceof ToggleImageButton) {
            ToggleImageButton toggleImageButton = (ToggleImageButton) view;
            if (this.tweet.favorited) {
                scribeUnFavoriteAction();
                this.tweetRepository.unfavorite(this.tweet.f312id, new LikeCallback(toggleImageButton, this.tweet, getActionCallback()));
                return;
            }
            scribeFavoriteAction();
            this.tweetRepository.favorite(this.tweet.f312id, new LikeCallback(toggleImageButton, this.tweet, getActionCallback()));
        }
    }

    void scribeFavoriteAction() {
        this.tweetScribeClient.favorite(this.tweet);
    }

    void scribeUnFavoriteAction() {
        this.tweetScribeClient.unfavorite(this.tweet);
    }

    /* loaded from: classes2.dex */
    static class LikeCallback extends Callback<Tweet> {
        final ToggleImageButton button;

        /* renamed from: cb */
        final Callback<Tweet> f319cb;
        final Tweet tweet;

        LikeCallback(ToggleImageButton button, Tweet tweet, Callback<Tweet> cb) {
            this.button = button;
            this.tweet = tweet;
            this.f319cb = cb;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<Tweet> result) {
            this.f319cb.success(result);
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            if (exception instanceof TwitterApiException) {
                TwitterApiException apiException = (TwitterApiException) exception;
                int errorCode = apiException.getErrorCode();
                switch (errorCode) {
                    case TwitterApiConstants.Errors.ALREADY_FAVORITED /* 139 */:
                        Tweet favorited = new TweetBuilder().copy(this.tweet).setFavorited(true).build();
                        this.f319cb.success(new Result<>(favorited, null));
                        return;
                    case 144:
                        Tweet unfavorited = new TweetBuilder().copy(this.tweet).setFavorited(false).build();
                        this.f319cb.success(new Result<>(unfavorited, null));
                        return;
                    default:
                        this.button.setToggledOn(this.tweet.favorited);
                        this.f319cb.failure(exception);
                        return;
                }
            }
            this.button.setToggledOn(this.tweet.favorited);
            this.f319cb.failure(exception);
        }
    }
}
