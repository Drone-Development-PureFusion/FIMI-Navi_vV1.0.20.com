package com.xiaomi.account.auth;

import android.app.Activity;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
/* loaded from: classes2.dex */
public interface XiaomiOAuth {
    XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, OAuthConfig oAuthConfig);

    XiaomiOAuthFuture<XiaomiOAuthResults> getCodeOrAccessToken(Activity activity, OAuthConfig oAuthConfig);
}
