package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.tweetui.AbstractTweetView;
/* loaded from: classes2.dex */
public class TweetView extends BaseTweetView {
    private static final double DEFAULT_ASPECT_RATIO_MEDIA_CONTAINER = 1.5d;
    private static final double SQUARE_ASPECT_RATIO = 1.0d;
    private static final String VIEW_TYPE_NAME = "default";

    public TweetView(Context context, Tweet tweet) {
        super(context, tweet);
    }

    public TweetView(Context context, Tweet tweet, int styleResId) {
        super(context, tweet, styleResId);
    }

    TweetView(Context context, Tweet tweet, int styleResId, AbstractTweetView.DependencyProvider dependencyProvider) {
        super(context, tweet, styleResId, dependencyProvider);
    }

    public TweetView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public TweetView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    protected int getLayout() {
        return C2168R.layout.tw__tweet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTweetView, com.twitter.sdk.android.tweetui.AbstractTweetView
    public void render() {
        super.render();
        setVerifiedCheck(this.tweet);
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    protected double getAspectRatioForPhotoEntity(int photoCount) {
        return photoCount == 4 ? SQUARE_ASPECT_RATIO : DEFAULT_ASPECT_RATIO_MEDIA_CONTAINER;
    }

    private void setVerifiedCheck(Tweet tweet) {
        if (tweet != null && tweet.user != null && tweet.user.verified) {
            this.fullNameView.setCompoundDrawablesWithIntrinsicBounds(0, 0, C2168R.C2171drawable.tw__ic_tweet_verified, 0);
        } else {
            this.fullNameView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    String getViewTypeName() {
        return "default";
    }
}
