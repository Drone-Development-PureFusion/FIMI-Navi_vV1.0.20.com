package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.IntentUtils;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.UserUtils;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.TweetBuilder;
import com.twitter.sdk.android.tweetui.AbstractTweetView;
import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class BaseTweetView extends AbstractTweetView {
    ColorDrawable avatarMediaBg;
    ImageView avatarView;
    int birdLogoResId;
    View bottomSeparator;
    int containerBgColor;
    ViewGroup quoteTweetHolder;
    QuoteTweetView quoteTweetView;
    int retweetIconResId;
    TextView retweetedByView;
    TextView timestampView;
    TweetActionBarView tweetActionBarView;
    ImageView twitterLogoView;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseTweetView(Context context, Tweet tweet) {
        this(context, tweet, DEFAULT_STYLE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseTweetView(Context context, Tweet tweet, int styleResId) {
        this(context, tweet, styleResId, new AbstractTweetView.DependencyProvider());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseTweetView(Context context, Tweet tweet, int styleResId, AbstractTweetView.DependencyProvider dependencyProvider) {
        super(context, null, styleResId, dependencyProvider);
        initAttributes(styleResId);
        applyStyles();
        if (isTweetUiEnabled()) {
            initTweetActions();
            setTweet(tweet);
        }
    }

    public BaseTweetView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BaseTweetView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle, new AbstractTweetView.DependencyProvider());
        initXmlAttributes(context, attrs);
        applyStyles();
    }

    private void initAttributes(int styleResId) {
        this.styleResId = styleResId;
        TypedArray a = getContext().getTheme().obtainStyledAttributes(styleResId, C2168R.styleable.tw__TweetView);
        try {
            setStyleAttributes(a);
        } finally {
            a.recycle();
        }
    }

    private void initXmlAttributes(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray a = context.getTheme().obtainStyledAttributes(attrs, C2168R.styleable.tw__TweetView, 0, 0);
            try {
                setXmlDataAttributes(a);
                setStyleAttributes(a);
            } finally {
                a.recycle();
            }
        }
    }

    private void setXmlDataAttributes(TypedArray a) {
        long tweetId = Utils.numberOrDefault(a.getString(C2168R.styleable.tw__TweetView_tw__tweet_id), -1L).longValue();
        if (tweetId <= 0) {
            throw new IllegalArgumentException("Invalid tw__tweet_id");
        }
        setPermalinkUri(null, Long.valueOf(tweetId));
        this.tweet = new TweetBuilder().setId(tweetId).build();
    }

    private void setStyleAttributes(TypedArray a) {
        int i = ViewCompat.MEASURED_STATE_MASK;
        this.containerBgColor = a.getColor(C2168R.styleable.tw__TweetView_tw__container_bg_color, getResources().getColor(C2168R.C2170color.tw__tweet_light_container_bg_color));
        this.primaryTextColor = a.getColor(C2168R.styleable.tw__TweetView_tw__primary_text_color, getResources().getColor(C2168R.C2170color.tw__tweet_light_primary_text_color));
        this.actionColor = a.getColor(C2168R.styleable.tw__TweetView_tw__action_color, getResources().getColor(C2168R.C2170color.tw__tweet_action_color));
        this.actionHighlightColor = a.getColor(C2168R.styleable.tw__TweetView_tw__action_highlight_color, getResources().getColor(C2168R.C2170color.tw__tweet_action_light_highlight_color));
        this.tweetActionsEnabled = a.getBoolean(C2168R.styleable.tw__TweetView_tw__tweet_actions_enabled, false);
        boolean isLightBg = ColorUtils.isLightColor(this.containerBgColor);
        if (isLightBg) {
            this.photoErrorResId = C2168R.C2171drawable.tw__ic_tweet_photo_error_light;
            this.birdLogoResId = C2168R.C2171drawable.tw__ic_logo_blue;
            this.retweetIconResId = C2168R.C2171drawable.tw__ic_retweet_light;
        } else {
            this.photoErrorResId = C2168R.C2171drawable.tw__ic_tweet_photo_error_dark;
            this.birdLogoResId = C2168R.C2171drawable.tw__ic_logo_white;
            this.retweetIconResId = C2168R.C2171drawable.tw__ic_retweet_dark;
        }
        this.secondaryTextColor = ColorUtils.calculateOpacityTransform(isLightBg ? 0.4d : 0.35d, isLightBg ? -1 : -16777216, this.primaryTextColor);
        double d = isLightBg ? 0.08d : 0.12d;
        if (!isLightBg) {
            i = -1;
        }
        this.mediaBgColor = ColorUtils.calculateOpacityTransform(d, i, this.containerBgColor);
        this.avatarMediaBg = new ColorDrawable(this.mediaBgColor);
    }

    private void loadTweet() {
        final long tweetId = getTweetId();
        Callback<Tweet> repoCb = new Callback<Tweet>() { // from class: com.twitter.sdk.android.tweetui.BaseTweetView.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<Tweet> result) {
                BaseTweetView.this.setTweet(result.data);
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException exception) {
                Twitter.getLogger().mo1293d("TweetUi", String.format(Locale.ENGLISH, "loadTweet failure for Tweet Id %d.", Long.valueOf(tweetId)));
            }
        };
        this.dependencyProvider.getTweetUi().getTweetRepository().loadTweet(getTweetId(), repoCb);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (isTweetUiEnabled()) {
            initTweetActions();
            loadTweet();
        }
    }

    private void initTweetActions() {
        setTweetActionsEnabled(this.tweetActionsEnabled);
        this.tweetActionBarView.setOnActionCallback(new ResetTweetCallback(this, this.dependencyProvider.getTweetUi().getTweetRepository(), null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public void findSubviews() {
        super.findSubviews();
        this.avatarView = (ImageView) findViewById(C2168R.C2172id.tw__tweet_author_avatar);
        this.timestampView = (TextView) findViewById(C2168R.C2172id.tw__tweet_timestamp);
        this.twitterLogoView = (ImageView) findViewById(C2168R.C2172id.tw__twitter_logo);
        this.retweetedByView = (TextView) findViewById(C2168R.C2172id.tw__tweet_retweeted_by);
        this.tweetActionBarView = (TweetActionBarView) findViewById(C2168R.C2172id.tw__tweet_action_bar);
        this.quoteTweetHolder = (ViewGroup) findViewById(C2168R.C2172id.quote_tweet_holder);
        this.bottomSeparator = findViewById(C2168R.C2172id.bottom_separator);
    }

    public void setOnActionCallback(Callback<Tweet> actionCallback) {
        this.tweetActionBarView.setOnActionCallback(new ResetTweetCallback(this, this.dependencyProvider.getTweetUi().getTweetRepository(), actionCallback));
        this.tweetActionBarView.setTweet(this.tweet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public void render() {
        super.render();
        Tweet displayTweet = TweetUtils.getDisplayTweet(this.tweet);
        setProfilePhotoView(displayTweet);
        linkifyProfilePhotoView(displayTweet);
        setTimestamp(displayTweet);
        setTweetActions(this.tweet);
        showRetweetedBy(this.tweet);
        setQuoteTweet(this.tweet);
    }

    void setQuoteTweet(Tweet tweet) {
        this.quoteTweetView = null;
        this.quoteTweetHolder.removeAllViews();
        if (tweet != null && TweetUtils.showQuoteTweet(tweet)) {
            this.quoteTweetView = new QuoteTweetView(getContext());
            this.quoteTweetView.setStyle(this.primaryTextColor, this.secondaryTextColor, this.actionColor, this.actionHighlightColor, this.mediaBgColor, this.photoErrorResId);
            this.quoteTweetView.setTweet(tweet.quotedStatus);
            this.quoteTweetView.setTweetLinkClickListener(this.tweetLinkClickListener);
            this.quoteTweetView.setTweetMediaClickListener(this.tweetMediaClickListener);
            this.quoteTweetHolder.setVisibility(0);
            this.quoteTweetHolder.addView(this.quoteTweetView);
            return;
        }
        this.quoteTweetHolder.setVisibility(8);
    }

    void showRetweetedBy(Tweet tweet) {
        if (tweet == null || tweet.retweetedStatus == null) {
            this.retweetedByView.setVisibility(8);
            return;
        }
        this.retweetedByView.setText(getResources().getString(C2168R.string.tw__retweeted_by_format, tweet.user.name));
        this.retweetedByView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyStyles() {
        setBackgroundColor(this.containerBgColor);
        this.fullNameView.setTextColor(this.primaryTextColor);
        this.screenNameView.setTextColor(this.secondaryTextColor);
        this.contentView.setTextColor(this.primaryTextColor);
        this.tweetMediaView.setMediaBgColor(this.mediaBgColor);
        this.tweetMediaView.setPhotoErrorResId(this.photoErrorResId);
        this.avatarView.setImageDrawable(this.avatarMediaBg);
        this.timestampView.setTextColor(this.secondaryTextColor);
        this.twitterLogoView.setImageResource(this.birdLogoResId);
        this.retweetedByView.setTextColor(this.secondaryTextColor);
    }

    private void setTimestamp(Tweet displayTweet) {
        String formattedTimestamp;
        if (displayTweet != null && displayTweet.createdAt != null && TweetDateUtils.isValidTimestamp(displayTweet.createdAt)) {
            Long createdAtTimestamp = Long.valueOf(TweetDateUtils.apiTimeToLong(displayTweet.createdAt));
            String timestamp = TweetDateUtils.getRelativeTimeString(getResources(), System.currentTimeMillis(), createdAtTimestamp.longValue());
            formattedTimestamp = TweetDateUtils.dotPrefix(timestamp);
        } else {
            formattedTimestamp = "";
        }
        this.timestampView.setText(formattedTimestamp);
    }

    void setProfilePhotoView(Tweet displayTweet) {
        String url;
        Picasso imageLoader = this.dependencyProvider.getImageLoader();
        if (imageLoader != null) {
            if (displayTweet == null || displayTweet.user == null) {
                url = null;
            } else {
                url = UserUtils.getProfileImageUrlHttps(displayTweet.user, UserUtils.AvatarSize.REASONABLY_SMALL);
            }
            imageLoader.load(url).placeholder(this.avatarMediaBg).into(this.avatarView);
        }
    }

    void linkifyProfilePhotoView(final Tweet displayTweet) {
        if (displayTweet != null && displayTweet.user != null) {
            this.avatarView.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetui.BaseTweetView.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (BaseTweetView.this.tweetLinkClickListener != null) {
                        BaseTweetView.this.tweetLinkClickListener.onLinkClick(displayTweet, TweetUtils.getProfilePermalink(displayTweet.user.screenName));
                        return;
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(TweetUtils.getProfilePermalink(displayTweet.user.screenName)));
                    if (!IntentUtils.safeStartActivity(BaseTweetView.this.getContext(), intent)) {
                        Twitter.getLogger().mo1291e("TweetUi", "Activity cannot be found to open URL");
                    }
                }
            });
            this.avatarView.setOnTouchListener(new View.OnTouchListener() { // from class: com.twitter.sdk.android.tweetui.BaseTweetView.3
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View v, MotionEvent event) {
                    ImageView imageView = (ImageView) v;
                    switch (event.getAction()) {
                        case 0:
                            imageView.getDrawable().setColorFilter(BaseTweetView.this.getResources().getColor(C2168R.C2170color.tw__black_opacity_10), PorterDuff.Mode.SRC_ATOP);
                            imageView.invalidate();
                            return false;
                        case 1:
                            v.performClick();
                            break;
                        case 2:
                        default:
                            return false;
                        case 3:
                            break;
                    }
                    imageView.getDrawable().clearColorFilter();
                    imageView.invalidate();
                    return false;
                }
            });
        }
    }

    void setTweetActions(Tweet tweet) {
        this.tweetActionBarView.setTweet(tweet);
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public void setTweetMediaClickListener(TweetMediaClickListener tweetMediaClickListener) {
        super.setTweetMediaClickListener(tweetMediaClickListener);
        if (this.quoteTweetView != null) {
            this.quoteTweetView.setTweetMediaClickListener(tweetMediaClickListener);
        }
    }

    @Override // com.twitter.sdk.android.tweetui.AbstractTweetView
    public void setTweetLinkClickListener(TweetLinkClickListener tweetLinkClickListener) {
        super.setTweetLinkClickListener(tweetLinkClickListener);
        if (this.quoteTweetView != null) {
            this.quoteTweetView.setTweetLinkClickListener(tweetLinkClickListener);
        }
    }

    public void setTweetActionsEnabled(boolean enabled) {
        this.tweetActionsEnabled = enabled;
        if (this.tweetActionsEnabled) {
            this.tweetActionBarView.setVisibility(0);
            this.bottomSeparator.setVisibility(8);
            return;
        }
        this.tweetActionBarView.setVisibility(8);
        this.bottomSeparator.setVisibility(0);
    }
}
