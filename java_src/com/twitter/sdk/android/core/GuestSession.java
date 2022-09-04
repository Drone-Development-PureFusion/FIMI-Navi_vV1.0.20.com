package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.persistence.SerializationStrategy;
/* loaded from: classes2.dex */
public class GuestSession extends Session<GuestAuthToken> {
    public static final long LOGGED_OUT_USER_ID = 0;

    public GuestSession(GuestAuthToken authToken) {
        super(authToken, 0L);
    }

    /* loaded from: classes2.dex */
    public static class Serializer implements SerializationStrategy<GuestSession> {
        private final Gson gson = new GsonBuilder().registerTypeAdapter(GuestAuthToken.class, new AuthTokenAdapter()).create();

        @Override // com.twitter.sdk.android.core.internal.persistence.SerializationStrategy
        public String serialize(GuestSession session) {
            if (session != null && session.getAuthToken() != null) {
                try {
                    return this.gson.toJson(session);
                } catch (Exception e) {
                    Twitter.getLogger().mo1293d("Twitter", "Failed to serialize session " + e.getMessage());
                }
            }
            return "";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.twitter.sdk.android.core.internal.persistence.SerializationStrategy
        /* renamed from: deserialize */
        public GuestSession mo1866deserialize(String serializedSession) {
            if (!TextUtils.isEmpty(serializedSession)) {
                try {
                    return (GuestSession) this.gson.fromJson(serializedSession, (Class<Object>) GuestSession.class);
                } catch (Exception e) {
                    Twitter.getLogger().mo1293d("Twitter", "Failed to deserialize session " + e.getMessage());
                }
            }
            return null;
        }
    }
}
