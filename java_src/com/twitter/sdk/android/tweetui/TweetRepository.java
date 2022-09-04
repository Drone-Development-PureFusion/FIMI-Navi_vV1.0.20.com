package com.twitter.sdk.android.tweetui;

import android.os.Handler;
import android.support.p001v4.util.LruCache;
import android.text.TextUtils;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TweetRepository {
    private static final int DEFAULT_CACHE_SIZE = 20;
    final LruCache<Long, FormattedTweetText> formatCache;
    private final Handler mainHandler;
    final LruCache<Long, Tweet> tweetCache;
    private final TwitterCore twitterCore;
    private final SessionManager<TwitterSession> userSessionManagers;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TweetRepository(Handler mainHandler, SessionManager<TwitterSession> userSessionManagers) {
        this(mainHandler, userSessionManagers, TwitterCore.getInstance());
    }

    TweetRepository(Handler mainHandler, SessionManager<TwitterSession> userSessionManagers, TwitterCore twitterCore) {
        this.twitterCore = twitterCore;
        this.mainHandler = mainHandler;
        this.userSessionManagers = userSessionManagers;
        this.tweetCache = new LruCache<>(20);
        this.formatCache = new LruCache<>(20);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FormattedTweetText formatTweetText(Tweet tweet) {
        if (tweet == null) {
            return null;
        }
        FormattedTweetText cached = this.formatCache.get(Long.valueOf(tweet.f312id));
        if (cached == null) {
            FormattedTweetText formattedTweetText = TweetTextUtils.formatTweetText(tweet);
            if (formattedTweetText != null && !TextUtils.isEmpty(formattedTweetText.text)) {
                this.formatCache.put(Long.valueOf(tweet.f312id), formattedTweetText);
            }
            return formattedTweetText;
        }
        return cached;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateCache(Tweet tweet) {
        this.tweetCache.put(Long.valueOf(tweet.f312id), tweet);
    }

    private void deliverTweet(final Tweet tweet, final Callback<Tweet> cb) {
        if (cb != null) {
            this.mainHandler.post(new Runnable() { // from class: com.twitter.sdk.android.tweetui.TweetRepository.1
                @Override // java.lang.Runnable
                public void run() {
                    cb.success(new Result(tweet, null));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void favorite(final long tweetId, final Callback<Tweet> cb) {
        getUserSession(new LoggingCallback<TwitterSession>(cb, Twitter.getLogger()) { // from class: com.twitter.sdk.android.tweetui.TweetRepository.2
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<TwitterSession> result) {
                TweetRepository.this.twitterCore.getApiClient(result.data).getFavoriteService().create(Long.valueOf(tweetId), false).enqueue(cb);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unfavorite(final long tweetId, final Callback<Tweet> cb) {
        getUserSession(new LoggingCallback<TwitterSession>(cb, Twitter.getLogger()) { // from class: com.twitter.sdk.android.tweetui.TweetRepository.3
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<TwitterSession> result) {
                TweetRepository.this.twitterCore.getApiClient(result.data).getFavoriteService().destroy(Long.valueOf(tweetId), false).enqueue(cb);
            }
        });
    }

    void retweet(final long tweetId, final Callback<Tweet> cb) {
        getUserSession(new LoggingCallback<TwitterSession>(cb, Twitter.getLogger()) { // from class: com.twitter.sdk.android.tweetui.TweetRepository.4
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<TwitterSession> result) {
                TweetRepository.this.twitterCore.getApiClient(result.data).getStatusesService().retweet(Long.valueOf(tweetId), false).enqueue(cb);
            }
        });
    }

    void unretweet(final long tweetId, final Callback<Tweet> cb) {
        getUserSession(new LoggingCallback<TwitterSession>(cb, Twitter.getLogger()) { // from class: com.twitter.sdk.android.tweetui.TweetRepository.5
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<TwitterSession> result) {
                TweetRepository.this.twitterCore.getApiClient(result.data).getStatusesService().unretweet(Long.valueOf(tweetId), false).enqueue(cb);
            }
        });
    }

    void getUserSession(Callback<TwitterSession> cb) {
        TwitterSession session = this.userSessionManagers.getActiveSession();
        if (session == null) {
            cb.failure(new TwitterAuthException("User authorization required"));
        } else {
            cb.success(new Result<>(session, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadTweet(long tweetId, Callback<Tweet> cb) {
        Tweet cachedTweet = this.tweetCache.get(Long.valueOf(tweetId));
        if (cachedTweet != null) {
            deliverTweet(cachedTweet, cb);
        } else {
            this.twitterCore.getApiClient().getStatusesService().show(Long.valueOf(tweetId), null, null, null).enqueue(new SingleTweetCallback(cb));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadTweets(List<Long> tweetIds, Callback<List<Tweet>> cb) {
        String commaSepIds = TextUtils.join(",", tweetIds);
        this.twitterCore.getApiClient().getStatusesService().lookup(commaSepIds, null, null, null).enqueue(new MultiTweetsCallback(tweetIds, cb));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class SingleTweetCallback extends Callback<Tweet> {

        /* renamed from: cb */
        final Callback<Tweet> f324cb;

        SingleTweetCallback(Callback<Tweet> cb) {
            this.f324cb = cb;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<Tweet> result) {
            Tweet tweet = result.data;
            TweetRepository.this.updateCache(tweet);
            if (this.f324cb != null) {
                this.f324cb.success(new Result<>(tweet, result.response));
            }
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            this.f324cb.failure(exception);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class MultiTweetsCallback extends Callback<List<Tweet>> {

        /* renamed from: cb */
        final Callback<List<Tweet>> f323cb;
        final List<Long> tweetIds;

        MultiTweetsCallback(List<Long> tweetIds, Callback<List<Tweet>> cb) {
            this.f323cb = cb;
            this.tweetIds = tweetIds;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<List<Tweet>> result) {
            if (this.f323cb != null) {
                List<Tweet> sorted = Utils.orderTweets(this.tweetIds, result.data);
                this.f323cb.success(new Result<>(sorted, result.response));
            }
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            this.f323cb.failure(exception);
        }
    }
}
