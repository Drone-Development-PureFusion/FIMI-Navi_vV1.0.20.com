package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.internal.ExecutorUtils;
import com.twitter.sdk.android.core.internal.IdManager;
import com.twitter.sdk.android.core.internal.scribe.ScribeEvent;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class DefaultScribeClient extends ScribeClient {
    private static final String DEBUG_BUILD = "debug";
    private static final String SCRIBE_PATH_TYPE = "sdk";
    private static final String SCRIBE_PATH_VERSION = "i";
    private static final String SCRIBE_URL = "https://syndication.twitter.com";
    private static volatile ScheduledExecutorService executor;
    private final String advertisingId;
    private final Context context;
    private final SessionManager<? extends Session<TwitterAuthToken>> sessionManager;

    public DefaultScribeClient(Context context, SessionManager<? extends Session<TwitterAuthToken>> sessionManager, GuestSessionProvider guestSessionProvider, IdManager idManager, ScribeConfig scribeConfig) {
        this(context, TwitterCore.getInstance().getAuthConfig(), sessionManager, guestSessionProvider, idManager, scribeConfig);
    }

    DefaultScribeClient(Context context, TwitterAuthConfig authConfig, SessionManager<? extends Session<TwitterAuthToken>> sessionManager, GuestSessionProvider guestSessionProvider, IdManager idManager, ScribeConfig scribeConfig) {
        super(context, getExecutor(), scribeConfig, new ScribeEvent.Transform(getGson()), authConfig, sessionManager, guestSessionProvider, idManager);
        this.context = context;
        this.sessionManager = sessionManager;
        this.advertisingId = idManager.getAdvertisingId();
    }

    public void scribe(EventNamespace... namespaces) {
        for (EventNamespace ns : namespaces) {
            scribe(ns, Collections.emptyList());
        }
    }

    public void scribe(EventNamespace namespace, List<ScribeItem> items) {
        String language = getLanguage();
        long timestamp = System.currentTimeMillis();
        scribe(ScribeEventFactory.newScribeEvent(namespace, "", timestamp, language, this.advertisingId, items));
    }

    public void scribe(ScribeEvent event) {
        super.scribe(event, getScribeSessionId(getActiveSession()));
    }

    public void scribe(EventNamespace namespace, String eventInfo) {
        String language = getLanguage();
        long timestamp = System.currentTimeMillis();
        scribe(ScribeEventFactory.newScribeEvent(namespace, eventInfo, timestamp, language, this.advertisingId, Collections.emptyList()));
    }

    Session getActiveSession() {
        return this.sessionManager.getActiveSession();
    }

    long getScribeSessionId(Session activeSession) {
        if (activeSession != null) {
            long scribeSessionId = activeSession.getId();
            return scribeSessionId;
        }
        return 0L;
    }

    private String getLanguage() {
        return this.context.getResources().getConfiguration().locale.getLanguage();
    }

    private static Gson getGson() {
        return new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).create();
    }

    private static ScheduledExecutorService getExecutor() {
        if (executor == null) {
            synchronized (DefaultScribeClient.class) {
                if (executor == null) {
                    executor = ExecutorUtils.buildSingleThreadScheduledExecutorService("scribe");
                }
            }
        }
        return executor;
    }

    public static ScribeConfig getScribeConfig(String kitName, String kitVersion) {
        String scribeUrl = getScribeUrl(SCRIBE_URL, "");
        return new ScribeConfig(isEnabled(), scribeUrl, "i", "sdk", "", getUserAgent(kitName, kitVersion), 100, ScribeConfig.DEFAULT_SEND_INTERVAL_SECONDS);
    }

    private static boolean isEnabled() {
        return !"release".equals(DEBUG_BUILD);
    }

    static String getUserAgent(String kitName, String kitVersion) {
        return "TwitterKit/3.0 (Android " + Build.VERSION.SDK_INT + ") " + kitName + "/" + kitVersion;
    }

    static String getScribeUrl(String defaultUrl, String overrideUrl) {
        return !TextUtils.isEmpty(overrideUrl) ? overrideUrl : defaultUrl;
    }
}
