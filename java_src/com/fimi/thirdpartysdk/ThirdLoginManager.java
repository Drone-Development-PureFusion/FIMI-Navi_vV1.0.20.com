package com.fimi.thirdpartysdk;

import android.content.Context;
import com.twitter.sdk.android.core.DefaultLogger;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterConfig;
/* loaded from: classes.dex */
public class ThirdLoginManager {
    public static final void initThirdLogin(Context context) {
        Twitter.initialize(context);
        String CONSUMER_KEY = context.getResources().getString(C1813R.string.twitter_CONSUMER_KEY);
        String CONSUMER_SECRET = context.getResources().getString(C1813R.string.twitter_CONSUMER_SECRET);
        TwitterConfig config = new TwitterConfig.Builder(context).logger(new DefaultLogger(3)).twitterAuthConfig(new TwitterAuthConfig(CONSUMER_KEY, CONSUMER_SECRET)).debug(true).build();
        Twitter.initialize(config);
    }
}
