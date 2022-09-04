package com.xiaomi.account.auth;

import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.account.openauth.AccountAuth;
import com.xiaomi.account.openauth.AuthorizeActivity;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
/* loaded from: classes2.dex */
public class OAuthConfig {
    private static final char SCOPE_SPLITTOR = ' ';
    final AccountAuth accountAuth;
    final String appId;
    final Class<? extends AuthorizeActivityBase> authorizeActivityClazz;
    final String deviceID;
    final boolean keepCookies;
    final boolean notUseMiui;
    final int platform;
    final String redirectUrl;
    final String responseType;
    final String scopes;
    final Boolean skipConfirm;
    final String state;

    public OAuthConfig(Builder builder) {
        this.scopes = makeScopeString(builder.scopes);
        this.notUseMiui = builder.notUseMiui;
        this.appId = builder.appId;
        this.redirectUrl = builder.redirectUrl;
        this.skipConfirm = builder.skipConfirm;
        this.state = builder.state;
        this.keepCookies = builder.keepCookies;
        this.authorizeActivityClazz = builder.authorizeActivityClazz;
        this.accountAuth = builder.accountAuth;
        this.platform = builder.platform;
        this.deviceID = builder.deviceID;
        this.responseType = builder.responseType;
    }

    public Bundle makeOptions() {
        Bundle options = new Bundle();
        options.putString(XiaomiOAuthConstants.EXTRA_RESPONSE_TYPE, this.responseType);
        if (this.skipConfirm != null) {
            options.putBoolean(XiaomiOAuthConstants.EXTRA_SKIP_CONFIRM, this.skipConfirm.booleanValue());
        }
        if (!TextUtils.isEmpty(this.state)) {
            options.putString(XiaomiOAuthConstants.EXTRA_STATE, this.state);
        }
        if (!TextUtils.isEmpty(this.scopes)) {
            options.putString(XiaomiOAuthConstants.EXTRA_SCOPE, this.scopes);
        }
        return options;
    }

    private static String makeScopeString(int[] scopes) {
        if (scopes == null || scopes.length <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = scopes.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int scope = scopes[i];
            int i3 = i2 + 1;
            if (i2 > 0) {
                sb.append(SCOPE_SPLITTOR);
            }
            sb.append(scope);
            i++;
            i2 = i3;
        }
        return sb.toString();
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private static final Class<? extends AuthorizeActivityBase> DEFAULT_AUTHORIZE_ACTIVITY_CLASS = AuthorizeActivity.class;
        private AccountAuth accountAuth;
        private String appId;
        private Class<? extends AuthorizeActivityBase> authorizeActivityClazz;
        private String deviceID;
        private boolean keepCookies;
        private boolean notUseMiui;
        private int platform;
        private String redirectUrl;
        private String responseType;
        private int[] scopes;
        private Boolean skipConfirm;
        private String state;

        public Builder() {
            this.notUseMiui = false;
            this.scopes = null;
            this.appId = null;
            this.redirectUrl = null;
            this.skipConfirm = false;
            this.state = null;
            this.keepCookies = false;
            this.authorizeActivityClazz = DEFAULT_AUTHORIZE_ACTIVITY_CLASS;
            this.platform = 0;
            this.deviceID = null;
            this.responseType = "code";
        }

        public Builder(Builder builder) {
            this.notUseMiui = false;
            this.scopes = null;
            this.appId = null;
            this.redirectUrl = null;
            this.skipConfirm = false;
            this.state = null;
            this.keepCookies = false;
            this.authorizeActivityClazz = DEFAULT_AUTHORIZE_ACTIVITY_CLASS;
            this.platform = 0;
            this.deviceID = null;
            this.responseType = "code";
            this.notUseMiui = builder.notUseMiui;
            this.scopes = builder.scopes;
            this.appId = builder.appId;
            this.redirectUrl = builder.redirectUrl;
            this.skipConfirm = builder.skipConfirm;
            this.state = builder.state;
            this.keepCookies = builder.keepCookies;
            this.authorizeActivityClazz = builder.authorizeActivityClazz;
            this.accountAuth = builder.accountAuth;
            this.platform = builder.platform;
            this.deviceID = builder.deviceID;
            this.responseType = builder.responseType;
        }

        public Builder scopes(int[] scopes) {
            this.scopes = scopes;
            return this;
        }

        public Builder appId(long appId) {
            this.appId = String.valueOf(appId);
            return this;
        }

        public Builder redirectUrl(String redirectUrl) {
            this.redirectUrl = redirectUrl;
            return this;
        }

        public Builder skipConfirm(boolean skipConfirm) {
            this.skipConfirm = Boolean.valueOf(skipConfirm);
            return this;
        }

        public Builder notUseMiui(boolean noMiui) {
            this.notUseMiui = noMiui;
            return this;
        }

        public Builder state(String state) {
            this.state = state;
            return this;
        }

        public Builder keepCookies(boolean keepCookies) {
            this.keepCookies = keepCookies;
            return this;
        }

        public Builder authorizeActivityClazz(Class<? extends AuthorizeActivityBase> clazz) {
            this.authorizeActivityClazz = clazz;
            return this;
        }

        public Builder accountAuth(AccountAuth accountAuth) {
            this.accountAuth = accountAuth;
            return this;
        }

        public Builder platform(int platform) {
            this.platform = platform;
            return this;
        }

        public Builder deviceID(String deviceID) {
            this.deviceID = deviceID;
            return this;
        }

        public Builder responseType(String responseType) {
            this.responseType = responseType;
            return this;
        }

        public OAuthConfig build() {
            return new OAuthConfig(this);
        }
    }
}
