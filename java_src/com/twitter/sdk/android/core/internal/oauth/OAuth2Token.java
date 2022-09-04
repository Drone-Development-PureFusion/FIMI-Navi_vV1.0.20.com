package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.AuthToken;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
/* loaded from: classes.dex */
public class OAuth2Token extends AuthToken implements Parcelable {
    public static final Parcelable.Creator<OAuth2Token> CREATOR = new Parcelable.Creator<OAuth2Token>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Token.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public OAuth2Token mo1867createFromParcel(Parcel in) {
            return new OAuth2Token(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public OAuth2Token[] mo1868newArray(int size) {
            return new OAuth2Token[size];
        }
    };
    public static final String TOKEN_TYPE_BEARER = "bearer";
    @SerializedName("access_token")
    private final String accessToken;
    @SerializedName(XiaomiOAuthConstants.EXTRA_TOKEN_TYPE_2)
    private final String tokenType;

    public OAuth2Token(String tokenType, String accessToken) {
        this.tokenType = tokenType;
        this.accessToken = accessToken;
    }

    public OAuth2Token(String tokenType, String accessToken, long createdAt) {
        super(createdAt);
        this.tokenType = tokenType;
        this.accessToken = accessToken;
    }

    private OAuth2Token(Parcel in) {
        this.tokenType = in.readString();
        this.accessToken = in.readString();
    }

    public String getTokenType() {
        return this.tokenType;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    @Override // com.twitter.sdk.android.core.AuthToken
    public boolean isExpired() {
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.tokenType);
        out.writeString(this.accessToken);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        OAuth2Token that = (OAuth2Token) o;
        if (this.accessToken == null ? that.accessToken != null : !this.accessToken.equals(that.accessToken)) {
            return false;
        }
        if (this.tokenType != null) {
            if (this.tokenType.equals(that.tokenType)) {
                return true;
            }
        } else if (that.tokenType == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i = 0;
        int result = this.tokenType != null ? this.tokenType.hashCode() : 0;
        int i2 = result * 31;
        if (this.accessToken != null) {
            i = this.accessToken.hashCode();
        }
        int result2 = i2 + i;
        return result2;
    }
}
