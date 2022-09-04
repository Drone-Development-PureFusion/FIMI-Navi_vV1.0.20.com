package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.internal.persistence.SerializationStrategy;
/* loaded from: classes.dex */
public class TwitterSession extends Session<TwitterAuthToken> {
    public static final long UNKNOWN_USER_ID = -1;
    public static final String UNKNOWN_USER_NAME = "";
    @SerializedName("user_name")
    private final String userName;

    public TwitterSession(TwitterAuthToken authToken, long userId, String userName) {
        super(authToken, userId);
        this.userName = userName;
    }

    public long getUserId() {
        return getId();
    }

    public String getUserName() {
        return this.userName;
    }

    @Override // com.twitter.sdk.android.core.Session
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        if (!super.equals(o)) {
            return false;
        }
        TwitterSession that = (TwitterSession) o;
        return this.userName != null ? this.userName.equals(that.userName) : that.userName == null;
    }

    @Override // com.twitter.sdk.android.core.Session
    public int hashCode() {
        int result = super.hashCode();
        return (result * 31) + (this.userName != null ? this.userName.hashCode() : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Serializer implements SerializationStrategy<TwitterSession> {
        private final Gson gson = new Gson();

        @Override // com.twitter.sdk.android.core.internal.persistence.SerializationStrategy
        public String serialize(TwitterSession session) {
            if (session != null && session.getAuthToken() != null) {
                try {
                    return this.gson.toJson(session);
                } catch (Exception e) {
                    Twitter.getLogger().mo1293d("Twitter", e.getMessage());
                }
            }
            return "";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.twitter.sdk.android.core.internal.persistence.SerializationStrategy
        /* renamed from: deserialize */
        public TwitterSession mo1866deserialize(String serializedSession) {
            if (!TextUtils.isEmpty(serializedSession)) {
                try {
                    return (TwitterSession) this.gson.fromJson(serializedSession, (Class<Object>) TwitterSession.class);
                } catch (Exception e) {
                    Twitter.getLogger().mo1293d("Twitter", e.getMessage());
                }
            }
            return null;
        }
    }
}
