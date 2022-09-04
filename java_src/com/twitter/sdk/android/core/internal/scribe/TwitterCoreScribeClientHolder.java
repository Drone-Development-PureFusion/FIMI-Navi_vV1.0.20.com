package com.twitter.sdk.android.core.internal.scribe;

import android.annotation.SuppressLint;
import android.content.Context;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.IdManager;
/* loaded from: classes2.dex */
public class TwitterCoreScribeClientHolder {
    @SuppressLint({"StaticFieldLeak"})
    private static DefaultScribeClient instance;

    public static DefaultScribeClient getScribeClient() {
        return instance;
    }

    public static void initialize(Context context, SessionManager<? extends Session<TwitterAuthToken>> sessionManagers, GuestSessionProvider guestSessionProvider, IdManager idManager, String kitName, String kitVersion) {
        ScribeConfig config = DefaultScribeClient.getScribeConfig(kitName, kitVersion);
        instance = new DefaultScribeClient(context, sessionManagers, guestSessionProvider, idManager, config);
    }
}
