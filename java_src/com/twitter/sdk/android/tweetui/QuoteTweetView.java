package com.twitter.sdk.android.tweetui;

import android.content.Context;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.tweetui.AbstractTweetView;
/* loaded from: classes2.dex */
public class QuoteTweetView extends AbstractTweetView {
    private static final double DEFAULT_ASPECT_RATIO_MEDIA_CONTAINER = 1.6d;
    private static final double MAX_LANDSCAPE_ASPECT_RATIO = 3.0d;
    private static final double MIN_LANDSCAPE_ASPECT_RATIO = 1.3333333333333333d;
    private static final double SQUARE_ASPECT_RATIO = 1.0d;
    private static final String VIEW_TYPE_NAME = "quote";

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public /* bridge */ /* synthetic */ Tweet getTweet() {
        return super.getTweet();
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public /* bridge */ /* synthetic */ long getTweetId() {
        return super.getTweetId();
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public /* bridge */ /* synthetic */ void setTweet(Tweet tweet) {
        super.setTweet(tweet);
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public /* bridge */ /* synthetic */ void setTweetLinkClickListener(TweetLinkClickListener tweetLinkClickListener) {
        super.setTweetLinkClickListener(tweetLinkClickListener);
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public /* bridge */ /* synthetic */ void setTweetMediaClickListener(TweetMediaClickListener tweetMediaClickListener) {
        super.setTweetMediaClickListener(tweetMediaClickListener);
    }

    public QuoteTweetView(Context context) {
        this(context, new AbstractTweetView.DependencyProvider());
    }

    QuoteTweetView(Context context, AbstractTweetView.DependencyProvider dependencyProvider) {
        super(context, null, 0, dependencyProvider);
    }

    public void setStyle(int primaryTextColor, int secondaryTextColor, int actionColor, int actionHighlightColor, int mediaBgColor, int photoErrorResId) {
        this.primaryTextColor = primaryTextColor;
        this.secondaryTextColor = secondaryTextColor;
        this.actionColor = actionColor;
        this.actionHighlightColor = actionHighlightColor;
        this.mediaBgColor = mediaBgColor;
        this.photoErrorResId = photoErrorResId;
        applyStyles();
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    protected int getLayout() {
        return C2168R.layout.tw__tweet_quote;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public void render() {
        super.render();
        this.screenNameView.requestLayout();
    }

    protected void applyStyles() {
        int mediaViewRadius = getResources().getDimensionPixelSize(C2168R.dimen.tw__media_view_radius);
        this.tweetMediaView.setRoundedCornersRadii(0, 0, mediaViewRadius, mediaViewRadius);
        setBackgroundResource(C2168R.C2171drawable.tw__quote_tweet_border);
        this.fullNameView.setTextColor(this.primaryTextColor);
        this.screenNameView.setTextColor(this.secondaryTextColor);
        this.contentView.setTextColor(this.primaryTextColor);
        this.tweetMediaView.setMediaBgColor(this.mediaBgColor);
        this.tweetMediaView.setPhotoErrorResId(this.photoErrorResId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public double getAspectRatio(MediaEntity photoEntity) {
        double ratio = super.getAspectRatio(photoEntity);
        return ratio <= SQUARE_ASPECT_RATIO ? SQUARE_ASPECT_RATIO : ratio > MAX_LANDSCAPE_ASPECT_RATIO ? MAX_LANDSCAPE_ASPECT_RATIO : ratio < MIN_LANDSCAPE_ASPECT_RATIO ? MIN_LANDSCAPE_ASPECT_RATIO : ratio;
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    protected double getAspectRatioForPhotoEntity(int photoCount) {
        return DEFAULT_ASPECT_RATIO_MEDIA_CONTAINER;
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    String getViewTypeName() {
        return VIEW_TYPE_NAME;
    }
}
