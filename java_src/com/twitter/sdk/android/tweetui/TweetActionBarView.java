package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.models.Tweet;
/* loaded from: classes2.dex */
public class TweetActionBarView extends LinearLayout {
    Callback<Tweet> actionCallback;
    final DependencyProvider dependencyProvider;
    ToggleImageButton likeButton;
    ImageButton shareButton;

    public TweetActionBarView(Context context) {
        this(context, null, new DependencyProvider());
    }

    public TweetActionBarView(Context context, AttributeSet attrs) {
        this(context, attrs, new DependencyProvider());
    }

    TweetActionBarView(Context context, AttributeSet attrs, DependencyProvider dependencyProvider) {
        super(context, attrs);
        this.dependencyProvider = dependencyProvider;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findSubviews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnActionCallback(Callback<Tweet> actionCallback) {
        this.actionCallback = actionCallback;
    }

    void findSubviews() {
        this.likeButton = (ToggleImageButton) findViewById(C2168R.C2172id.tw__tweet_like_button);
        this.shareButton = (ImageButton) findViewById(C2168R.C2172id.tw__tweet_share_button);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTweet(Tweet tweet) {
        setLike(tweet);
        setShare(tweet);
    }

    void setLike(Tweet tweet) {
        TweetUi tweetUi = this.dependencyProvider.getTweetUi();
        if (tweet != null) {
            this.likeButton.setToggledOn(tweet.favorited);
            LikeTweetAction likeTweetAction = new LikeTweetAction(tweet, tweetUi, this.actionCallback);
            this.likeButton.setOnClickListener(likeTweetAction);
        }
    }

    void setShare(Tweet tweet) {
        TweetUi tweetUi = this.dependencyProvider.getTweetUi();
        if (tweet != null) {
            this.shareButton.setOnClickListener(new ShareTweetAction(tweet, tweetUi));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class DependencyProvider {
        DependencyProvider() {
        }

        TweetUi getTweetUi() {
            return TweetUi.getInstance();
        }
    }
}
