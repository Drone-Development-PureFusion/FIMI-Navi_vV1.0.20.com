package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.tweetui.AbstractTweetView;
/* loaded from: classes2.dex */
public class CompactTweetView extends BaseTweetView {
    private static final double DEFAULT_ASPECT_RATIO_MEDIA_CONTAINER = 1.6d;
    private static final double MAX_LANDSCAPE_ASPECT_RATIO = 3.0d;
    private static final double MIN_LANDSCAPE_ASPECT_RATIO = 1.3333333333333333d;
    private static final double SQUARE_ASPECT_RATIO = 1.0d;
    private static final String VIEW_TYPE_NAME = "compact";

    public CompactTweetView(Context context, Tweet tweet) {
        super(context, tweet);
    }

    public CompactTweetView(Context context, Tweet tweet, int styleResId) {
        super(context, tweet, styleResId);
    }

    CompactTweetView(Context context, Tweet tweet, int styleResId, AbstractTweetView.DependencyProvider dependencyProvider) {
        super(context, tweet, styleResId, dependencyProvider);
    }

    public CompactTweetView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CompactTweetView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    protected int getLayout() {
        return C2168R.layout.tw__tweet_compact;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.BaseTweetView, com.twitter.sdk.android.tweetui.AbstractTweetView
    public void render() {
        super.render();
        this.screenNameView.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.twitter.sdk.android.tweetui.BaseTweetView
    public void applyStyles() {
        super.applyStyles();
        int paddingTop = getResources().getDimensionPixelSize(C2168R.dimen.tw__compact_tweet_container_padding_top);
        setPadding(0, paddingTop, 0, 0);
        int mediaViewRadius = getResources().getDimensionPixelSize(C2168R.dimen.tw__media_view_radius);
        this.tweetMediaView.setRoundedCornersRadii(mediaViewRadius, mediaViewRadius, mediaViewRadius, mediaViewRadius);
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
