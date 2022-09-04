package com.twitter.sdk.android.tweetui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.scribe.DefaultScribeClient;
import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import com.twitter.sdk.android.core.internal.scribe.ScribeConfig;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import java.util.List;
/* loaded from: classes2.dex */
public class TweetUi {
    private static final String KIT_SCRIBE_NAME = "TweetUi";
    static final String LOGTAG = "TweetUi";
    @SuppressLint({"StaticFieldLeak"})
    static volatile TweetUi instance;
    GuestSessionProvider guestSessionProvider;
    DefaultScribeClient scribeClient;
    SessionManager<TwitterSession> sessionManager;
    private TweetRepository tweetRepository;
    Context context = Twitter.getInstance().getContext(getIdentifier());
    private Picasso imageLoader = Picasso.with(Twitter.getInstance().getContext(getIdentifier()));

    public static TweetUi getInstance() {
        if (instance == null) {
            synchronized (TweetUi.class) {
                if (instance == null) {
                    instance = new TweetUi();
                }
            }
        }
        return instance;
    }

    TweetUi() {
        TwitterCore twitterCore = TwitterCore.getInstance();
        this.sessionManager = twitterCore.getSessionManager();
        this.guestSessionProvider = twitterCore.getGuestSessionProvider();
        this.tweetRepository = new TweetRepository(new Handler(Looper.getMainLooper()), twitterCore.getSessionManager());
        setUpScribeClient();
    }

    public String getIdentifier() {
        return "com.twitter.sdk.android:tweet-ui";
    }

    public String getVersion() {
        return "3.1.1.9";
    }

    private void setUpScribeClient() {
        ScribeConfig config = DefaultScribeClient.getScribeConfig("TweetUi", getVersion());
        this.scribeClient = new DefaultScribeClient(this.context, this.sessionManager, this.guestSessionProvider, Twitter.getInstance().getIdManager(), config);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void scribe(EventNamespace... namespaces) {
        if (this.scribeClient != null) {
            for (EventNamespace ns : namespaces) {
                this.scribeClient.scribe(ns);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void scribe(EventNamespace ns, List<ScribeItem> items) {
        if (this.scribeClient != null) {
            this.scribeClient.scribe(ns, items);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TweetRepository getTweetRepository() {
        return this.tweetRepository;
    }

    void setTweetRepository(TweetRepository tweetRepository) {
        this.tweetRepository = tweetRepository;
    }

    public Picasso getImageLoader() {
        return this.imageLoader;
    }

    void setImageLoader(Picasso imageLoader) {
        this.imageLoader = imageLoader;
    }
}
