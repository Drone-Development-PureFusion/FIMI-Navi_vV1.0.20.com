package com.twitter.sdk.android.tweetui;

import android.net.Uri;
import android.text.TextUtils;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class TweetUtils {
    private static final String HASHTAG_URL = "https://twitter.com/hashtag/%s?ref_src=twsrc%%5Etwitterkit";
    static final String LOAD_TWEET_DEBUG = "loadTweet failure for Tweet Id %d.";
    private static final String PROFILE_URL = "https://twitter.com/%s?ref_src=twsrc%%5Etwitterkit";
    private static final String SYMBOL_URL = "https://twitter.com/search?q=%%24%s&ref_src=twsrc%%5Etwitterkit";
    private static final String TWEET_URL = "https://twitter.com/%s/status/%d?ref_src=twsrc%%5Etwitterkit";
    private static final String TWITTER_KIT_REF = "ref_src=twsrc%%5Etwitterkit";
    private static final String TWITTER_URL = "https://twitter.com/";
    private static final String UNKNOWN_SCREEN_NAME = "twitter_unknown";

    private TweetUtils() {
    }

    public static void loadTweet(long tweetId, final Callback<Tweet> cb) {
        TweetUi.getInstance().getTweetRepository().loadTweet(tweetId, new LoggingCallback<Tweet>(cb, Twitter.getLogger()) { // from class: com.twitter.sdk.android.tweetui.TweetUtils.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<Tweet> result) {
                if (cb != null) {
                    cb.success(result);
                }
            }
        });
    }

    public static void loadTweets(List<Long> tweetIds, final Callback<List<Tweet>> cb) {
        TweetUi.getInstance().getTweetRepository().loadTweets(tweetIds, new LoggingCallback<List<Tweet>>(cb, Twitter.getLogger()) { // from class: com.twitter.sdk.android.tweetui.TweetUtils.2
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<List<Tweet>> result) {
                if (cb != null) {
                    cb.success(result);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTweetResolvable(Tweet tweet) {
        return tweet != null && tweet.f312id > 0 && tweet.user != null && !TextUtils.isEmpty(tweet.user.screenName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Tweet getDisplayTweet(Tweet tweet) {
        return (tweet == null || tweet.retweetedStatus == null) ? tweet : tweet.retweetedStatus;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean showQuoteTweet(Tweet tweet) {
        return tweet.quotedStatus != null && tweet.card == null && (tweet.entities == null || tweet.entities.media == null || tweet.entities.media.isEmpty());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri getPermalink(String screenName, long tweetId) {
        String permalink;
        if (tweetId <= 0) {
            return null;
        }
        if (TextUtils.isEmpty(screenName)) {
            permalink = String.format(Locale.US, TWEET_URL, UNKNOWN_SCREEN_NAME, Long.valueOf(tweetId));
        } else {
            permalink = String.format(Locale.US, TWEET_URL, screenName, Long.valueOf(tweetId));
        }
        return Uri.parse(permalink);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getProfilePermalink(String screenName) {
        if (TextUtils.isEmpty(screenName)) {
            String permalink = String.format(Locale.US, PROFILE_URL, UNKNOWN_SCREEN_NAME);
            return permalink;
        }
        String permalink2 = String.format(Locale.US, PROFILE_URL, screenName);
        return permalink2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getHashtagPermalink(String text) {
        return String.format(Locale.US, HASHTAG_URL, text);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSymbolPermalink(String text) {
        return String.format(Locale.US, SYMBOL_URL, text);
    }
}
