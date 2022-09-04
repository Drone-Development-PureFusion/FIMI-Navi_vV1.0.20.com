package com.twitter.sdk.android.core;

import android.annotation.SuppressLint;
import android.content.Context;
import com.twitter.sdk.android.core.TwitterConfig;
import com.twitter.sdk.android.core.internal.ActivityLifecycleManager;
import com.twitter.sdk.android.core.internal.CommonUtils;
import com.twitter.sdk.android.core.internal.ExecutorUtils;
import com.twitter.sdk.android.core.internal.IdManager;
import java.io.File;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public class Twitter {
    private static final String CONSUMER_KEY = "com.twitter.sdk.android.CONSUMER_KEY";
    private static final String CONSUMER_SECRET = "com.twitter.sdk.android.CONSUMER_SECRET";
    static final Logger DEFAULT_LOGGER = new DefaultLogger();
    private static final String NOT_INITIALIZED_MESSAGE = "Must initialize Twitter before using getInstance()";
    public static final String TAG = "Twitter";
    @SuppressLint({"StaticFieldLeak"})
    static volatile Twitter instance;
    private final Context context;
    private final boolean debug;
    private final ExecutorService executorService;
    private final IdManager idManager;
    private final ActivityLifecycleManager lifecycleManager;
    private final Logger logger;
    private final TwitterAuthConfig twitterAuthConfig;

    private Twitter(TwitterConfig config) {
        this.context = config.context;
        this.idManager = new IdManager(this.context);
        this.lifecycleManager = new ActivityLifecycleManager(this.context);
        if (config.twitterAuthConfig == null) {
            String key = CommonUtils.getStringResourceValue(this.context, CONSUMER_KEY, "");
            String secret = CommonUtils.getStringResourceValue(this.context, CONSUMER_SECRET, "");
            this.twitterAuthConfig = new TwitterAuthConfig(key, secret);
        } else {
            this.twitterAuthConfig = config.twitterAuthConfig;
        }
        if (config.executorService == null) {
            this.executorService = ExecutorUtils.buildThreadPoolExecutorService("twitter-worker");
        } else {
            this.executorService = config.executorService;
        }
        if (config.logger == null) {
            this.logger = DEFAULT_LOGGER;
        } else {
            this.logger = config.logger;
        }
        if (config.debug == null) {
            this.debug = false;
        } else {
            this.debug = config.debug.booleanValue();
        }
    }

    public static void initialize(Context context) {
        TwitterConfig config = new TwitterConfig.Builder(context).build();
        createTwitter(config);
    }

    public static void initialize(TwitterConfig config) {
        createTwitter(config);
    }

    static synchronized Twitter createTwitter(TwitterConfig config) {
        Twitter twitter;
        synchronized (Twitter.class) {
            if (instance == null) {
                instance = new Twitter(config);
                twitter = instance;
            } else {
                twitter = instance;
            }
        }
        return twitter;
    }

    static void checkInitialized() {
        if (instance == null) {
            throw new IllegalStateException(NOT_INITIALIZED_MESSAGE);
        }
    }

    public static Twitter getInstance() {
        checkInitialized();
        return instance;
    }

    public Context getContext(String component) {
        return new TwitterContext(this.context, component, ".TwitterKit" + File.separator + component);
    }

    public IdManager getIdManager() {
        return this.idManager;
    }

    public TwitterAuthConfig getTwitterAuthConfig() {
        return this.twitterAuthConfig;
    }

    public ExecutorService getExecutorService() {
        return this.executorService;
    }

    public ActivityLifecycleManager getActivityLifecycleManager() {
        return this.lifecycleManager;
    }

    public static boolean isDebug() {
        if (instance == null) {
            return false;
        }
        return instance.debug;
    }

    public static Logger getLogger() {
        return instance == null ? DEFAULT_LOGGER : instance.logger;
    }
}
