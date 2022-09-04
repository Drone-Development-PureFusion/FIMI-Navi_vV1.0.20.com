package com.xiaomi.account.auth;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public class OAuthFactory {
    public static XiaomiOAuth createOAuth(Context context, OAuthConfig oAuthConfig) {
        Context context2 = context.getApplicationContext();
        checkOauthParams(oAuthConfig);
        if (oAuthConfig.platform == 1 || oAuthConfig.notUseMiui || !isMiui(context2)) {
            return new WebViewOauth(context2, oAuthConfig.appId, oAuthConfig.redirectUrl);
        }
        MiuiOauth miuiOauth = new MiuiOauth(context2, oAuthConfig.appId, oAuthConfig.redirectUrl);
        miuiOauth.setAuthorizeActivityClazz(oAuthConfig.authorizeActivityClazz);
        return miuiOauth;
    }

    private static boolean isMiui(Context context) {
        return MiuiOauth.isSupportService(context);
    }

    private static void checkOauthParams(OAuthConfig oAuthConfig) {
        if (TextUtils.isEmpty(oAuthConfig.appId)) {
            throw new IllegalArgumentException("client id is error!!!");
        }
        if (TextUtils.isEmpty(oAuthConfig.redirectUrl)) {
            throw new IllegalArgumentException("redirect url is empty!!!");
        }
    }
}
