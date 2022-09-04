package com.twitter.sdk.android.core;

import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.AuthToken;
/* loaded from: classes.dex */
public class Session<T extends AuthToken> {
    @SerializedName("auth_token")
    private final T authToken;
    @SerializedName("id")

    /* renamed from: id */
    private final long f301id;

    public Session(T authToken, long id) {
        if (authToken == null) {
            throw new IllegalArgumentException("AuthToken must not be null.");
        }
        this.authToken = authToken;
        this.f301id = id;
    }

    public T getAuthToken() {
        return this.authToken;
    }

    public long getId() {
        return this.f301id;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Session session = (Session) o;
        if (this.f301id != session.f301id) {
            return false;
        }
        return this.authToken != null ? this.authToken.equals(session.authToken) : session.authToken == null;
    }

    public int hashCode() {
        int result = this.authToken != null ? this.authToken.hashCode() : 0;
        return (result * 31) + ((int) (this.f301id ^ (this.f301id >>> 32)));
    }
}
