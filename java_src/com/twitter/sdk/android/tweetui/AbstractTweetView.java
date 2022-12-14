package com.twitter.sdk.android.tweetui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.IntentUtils;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.internal.UserUtils;
import com.twitter.sdk.android.core.internal.VineCardUtils;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import com.twitter.sdk.android.core.models.Card;
import com.twitter.sdk.android.core.models.ImageValue;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.tweetui.internal.AspectRatioFrameLayout;
import com.twitter.sdk.android.tweetui.internal.MediaBadgeView;
import com.twitter.sdk.android.tweetui.internal.SpanClickHandler;
import com.twitter.sdk.android.tweetui.internal.TweetMediaUtils;
import com.twitter.sdk.android.tweetui.internal.TweetMediaView;
import java.text.DateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
abstract class AbstractTweetView extends RelativeLayout {
    static final double DEFAULT_ASPECT_RATIO = 1.7777777777777777d;
    static final int DEFAULT_STYLE = C2168R.style.tw__TweetLightStyle;
    static final String EMPTY_STRING = "";
    static final long INVALID_ID = -1;
    static final double MEDIA_BG_DARK_OPACITY = 0.12d;
    static final double MEDIA_BG_LIGHT_OPACITY = 0.08d;
    static final double SECONDARY_TEXT_COLOR_DARK_OPACITY = 0.35d;
    static final double SECONDARY_TEXT_COLOR_LIGHT_OPACITY = 0.4d;
    static final String TAG = "TweetUi";
    int actionColor;
    int actionHighlightColor;
    TextView contentView;
    final DependencyProvider dependencyProvider;
    TextView fullNameView;
    private LinkClickListener linkClickListener;
    MediaBadgeView mediaBadgeView;
    int mediaBgColor;
    AspectRatioFrameLayout mediaContainer;
    private Uri permalinkUri;
    int photoErrorResId;
    int primaryTextColor;
    TextView screenNameView;
    int secondaryTextColor;
    int styleResId;
    Tweet tweet;
    boolean tweetActionsEnabled;
    TweetLinkClickListener tweetLinkClickListener;
    TweetMediaClickListener tweetMediaClickListener;
    TweetMediaView tweetMediaView;

    protected abstract double getAspectRatioForPhotoEntity(int i);

    abstract int getLayout();

    abstract String getViewTypeName();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractTweetView(Context context, AttributeSet attrs, int defStyle, DependencyProvider dependencyProvider) {
        super(context, attrs, defStyle);
        this.dependencyProvider = dependencyProvider;
        inflateView(context);
        findSubviews();
    }

    private void inflateView(Context context) {
        LayoutInflater.from(context).inflate(getLayout(), (ViewGroup) this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTweetUiEnabled() {
        if (isInEditMode()) {
            return false;
        }
        try {
            this.dependencyProvider.getTweetUi();
            return true;
        } catch (IllegalStateException e) {
            Twitter.getLogger().mo1291e(TAG, e.getMessage());
            setEnabled(false);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void findSubviews() {
        this.fullNameView = (TextView) findViewById(C2168R.C2172id.tw__tweet_author_full_name);
        this.screenNameView = (TextView) findViewById(C2168R.C2172id.tw__tweet_author_screen_name);
        this.mediaContainer = (AspectRatioFrameLayout) findViewById(C2168R.C2172id.tw__aspect_ratio_media_container);
        this.tweetMediaView = (TweetMediaView) findViewById(C2168R.C2172id.tweet_media_view);
        this.contentView = (TextView) findViewById(C2168R.C2172id.tw__tweet_text);
        this.mediaBadgeView = (MediaBadgeView) findViewById(C2168R.C2172id.tw__tweet_media_badge);
    }

    public long getTweetId() {
        if (this.tweet == null) {
            return -1L;
        }
        return this.tweet.f312id;
    }

    public void setTweet(Tweet tweet) {
        this.tweet = tweet;
        render();
    }

    public Tweet getTweet() {
        return this.tweet;
    }

    public void setTweetMediaClickListener(TweetMediaClickListener tweetMediaClickListener) {
        this.tweetMediaClickListener = tweetMediaClickListener;
        this.tweetMediaView.setTweetMediaClickListener(tweetMediaClickListener);
    }

    public void setTweetLinkClickListener(TweetLinkClickListener tweetLinkClickListener) {
        this.tweetLinkClickListener = tweetLinkClickListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void render() {
        Tweet displayTweet = TweetUtils.getDisplayTweet(this.tweet);
        setName(displayTweet);
        setScreenName(displayTweet);
        setTweetMedia(displayTweet);
        setText(displayTweet);
        setContentDescription(displayTweet);
        if (TweetUtils.isTweetResolvable(this.tweet)) {
            setPermalinkUri(this.tweet.user.screenName, Long.valueOf(getTweetId()));
        } else {
            this.permalinkUri = null;
        }
        setPermalinkLauncher();
        scribeImpression();
    }

    Uri getPermalinkUri() {
        return this.permalinkUri;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPermalinkUri(String screenName, Long tweetId) {
        if (tweetId.longValue() > 0) {
            this.permalinkUri = TweetUtils.getPermalink(screenName, tweetId.longValue());
        }
    }

    private void setPermalinkLauncher() {
        View.OnClickListener listener = new PermalinkClickListener();
        setOnClickListener(listener);
    }

    void launchPermalink() {
        Intent intent = new Intent("android.intent.action.VIEW", getPermalinkUri());
        if (!IntentUtils.safeStartActivity(getContext(), intent)) {
            Twitter.getLogger().mo1291e(TAG, "Activity cannot be found to open permalink URI");
        }
    }

    void scribeImpression() {
        if (this.tweet != null) {
            this.dependencyProvider.getTweetScribeClient().impression(this.tweet, getViewTypeName(), this.tweetActionsEnabled);
        }
    }

    void scribePermalinkClick() {
        if (this.tweet != null) {
            this.dependencyProvider.getTweetScribeClient().click(this.tweet, getViewTypeName());
        }
    }

    void scribeCardImpression(Long tweetId, Card card) {
        ScribeItem scribeItem = ScribeItem.fromTweetCard(tweetId.longValue(), card);
        this.dependencyProvider.getVideoScribeClient().impression(scribeItem);
    }

    void scribeMediaEntityImpression(long tweetId, MediaEntity mediaEntity) {
        ScribeItem scribeItem = ScribeItem.fromMediaEntity(tweetId, mediaEntity);
        this.dependencyProvider.getVideoScribeClient().impression(scribeItem);
    }

    private void setName(Tweet displayTweet) {
        if (displayTweet != null && displayTweet.user != null) {
            this.fullNameView.setText(Utils.stringOrEmpty(displayTweet.user.name));
        } else {
            this.fullNameView.setText("");
        }
    }

    private void setScreenName(Tweet displayTweet) {
        if (displayTweet != null && displayTweet.user != null) {
            this.screenNameView.setText(UserUtils.formatScreenName(Utils.stringOrEmpty(displayTweet.user.screenName)));
        } else {
            this.screenNameView.setText("");
        }
    }

    @TargetApi(16)
    private void setText(Tweet displayTweet) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.contentView.setImportantForAccessibility(2);
        }
        CharSequence tweetText = Utils.charSeqOrEmpty(getLinkifiedText(displayTweet));
        SpanClickHandler.enableClicksOnSpans(this.contentView);
        if (!TextUtils.isEmpty(tweetText)) {
            this.contentView.setText(tweetText);
            this.contentView.setVisibility(0);
            return;
        }
        this.contentView.setText("");
        this.contentView.setVisibility(8);
    }

    final void setTweetMedia(Tweet displayTweet) {
        clearTweetMedia();
        if (displayTweet != null) {
            if (displayTweet.card != null && VineCardUtils.isVine(displayTweet.card)) {
                Card card = displayTweet.card;
                ImageValue imageValue = VineCardUtils.getImageValue(card);
                String playerStreamUrl = VineCardUtils.getStreamUrl(card);
                if (imageValue != null && !TextUtils.isEmpty(playerStreamUrl)) {
                    setViewsForMedia(getAspectRatio(imageValue));
                    this.tweetMediaView.setVineCard(displayTweet);
                    this.mediaBadgeView.setVisibility(0);
                    this.mediaBadgeView.setCard(card);
                    scribeCardImpression(Long.valueOf(displayTweet.f312id), card);
                }
            } else if (TweetMediaUtils.hasSupportedVideo(displayTweet)) {
                MediaEntity mediaEntity = TweetMediaUtils.getVideoEntity(displayTweet);
                setViewsForMedia(getAspectRatio(mediaEntity));
                this.tweetMediaView.setTweetMediaEntities(this.tweet, Collections.singletonList(mediaEntity));
                this.mediaBadgeView.setVisibility(0);
                this.mediaBadgeView.setMediaEntity(mediaEntity);
                scribeMediaEntityImpression(displayTweet.f312id, mediaEntity);
            } else if (TweetMediaUtils.hasPhoto(displayTweet)) {
                List<MediaEntity> mediaEntities = TweetMediaUtils.getPhotoEntities(displayTweet);
                setViewsForMedia(getAspectRatioForPhotoEntity(mediaEntities.size()));
                this.tweetMediaView.setTweetMediaEntities(displayTweet, mediaEntities);
                this.mediaBadgeView.setVisibility(8);
            }
        }
    }

    void setViewsForMedia(double aspectRatio) {
        this.mediaContainer.setVisibility(0);
        this.mediaContainer.setAspectRatio(aspectRatio);
        this.tweetMediaView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double getAspectRatio(MediaEntity photoEntity) {
        return (photoEntity == null || photoEntity.sizes == null || photoEntity.sizes.medium == null || photoEntity.sizes.medium.f309w == 0 || photoEntity.sizes.medium.f308h == 0) ? DEFAULT_ASPECT_RATIO : photoEntity.sizes.medium.f309w / photoEntity.sizes.medium.f308h;
    }

    protected double getAspectRatio(ImageValue imageValue) {
        return (imageValue == null || imageValue.width == 0 || imageValue.height == 0) ? DEFAULT_ASPECT_RATIO : imageValue.width / imageValue.height;
    }

    protected void clearTweetMedia() {
        this.mediaContainer.setVisibility(8);
    }

    protected CharSequence getLinkifiedText(Tweet displayTweet) {
        FormattedTweetText formattedText = this.dependencyProvider.getTweetUi().getTweetRepository().formatTweetText(displayTweet);
        if (formattedText == null) {
            return null;
        }
        boolean stripVineCard = displayTweet.card != null && VineCardUtils.isVine(displayTweet.card);
        boolean stripQuoteTweet = TweetUtils.showQuoteTweet(displayTweet);
        return TweetTextLinkifier.linkifyUrls(formattedText, getLinkClickListener(), this.actionColor, this.actionHighlightColor, stripQuoteTweet, stripVineCard);
    }

    void setContentDescription(Tweet displayTweet) {
        if (!TweetUtils.isTweetResolvable(displayTweet)) {
            setContentDescription(getResources().getString(C2168R.string.tw__loading_tweet));
            return;
        }
        FormattedTweetText formattedTweetText = this.dependencyProvider.getTweetUi().getTweetRepository().formatTweetText(displayTweet);
        String tweetText = null;
        if (formattedTweetText != null) {
            tweetText = formattedTweetText.text;
        }
        long createdAt = TweetDateUtils.apiTimeToLong(displayTweet.createdAt);
        String timestamp = null;
        if (createdAt != -1) {
            timestamp = DateFormat.getDateInstance().format(new Date(createdAt));
        }
        setContentDescription(getResources().getString(C2168R.string.tw__tweet_content_description, Utils.stringOrEmpty(displayTweet.user.name), Utils.stringOrEmpty(tweetText), Utils.stringOrEmpty(timestamp)));
    }

    protected LinkClickListener getLinkClickListener() {
        if (this.linkClickListener == null) {
            this.linkClickListener = new LinkClickListener() { // from class: com.twitter.sdk.android.tweetui.AbstractTweetView.1
                @Override // com.twitter.sdk.android.tweetui.LinkClickListener
                public void onUrlClicked(String url) {
                    if (!TextUtils.isEmpty(url)) {
                        if (AbstractTweetView.this.tweetLinkClickListener != null) {
                            AbstractTweetView.this.tweetLinkClickListener.onLinkClick(AbstractTweetView.this.tweet, url);
                            return;
                        }
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
                        if (!IntentUtils.safeStartActivity(AbstractTweetView.this.getContext(), intent)) {
                            Twitter.getLogger().mo1291e(AbstractTweetView.TAG, "Activity cannot be found to open URL");
                        }
                    }
                }
            };
        }
        return this.linkClickListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class PermalinkClickListener implements View.OnClickListener {
        PermalinkClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (AbstractTweetView.this.getPermalinkUri() != null) {
                AbstractTweetView.this.scribePermalinkClick();
                AbstractTweetView.this.launchPermalink();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class DependencyProvider {
        TweetScribeClient tweetScribeClient;
        VideoScribeClient videoScribeClient;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TweetUi getTweetUi() {
            return TweetUi.getInstance();
        }

        TweetScribeClient getTweetScribeClient() {
            if (this.tweetScribeClient == null) {
                this.tweetScribeClient = new TweetScribeClientImpl(getTweetUi());
            }
            return this.tweetScribeClient;
        }

        VideoScribeClient getVideoScribeClient() {
            if (this.videoScribeClient == null) {
                this.videoScribeClient = new VideoScribeClientImpl(getTweetUi());
            }
            return this.videoScribeClient;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Picasso getImageLoader() {
            return TweetUi.getInstance().getImageLoader();
        }
    }
}
