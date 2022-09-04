package com.twitter.sdk.android.core.internal.network;

import com.twitter.sdk.android.core.GuestSession;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuthConstants;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes2.dex */
public class GuestAuthInterceptor implements Interceptor {
    final GuestSessionProvider guestSessionProvider;

    public GuestAuthInterceptor(GuestSessionProvider guestSessionProvider) {
        this.guestSessionProvider = guestSessionProvider;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        GuestSession session = this.guestSessionProvider.getCurrentSession();
        GuestAuthToken token = session == null ? null : session.getAuthToken();
        if (token != null) {
            Request.Builder builder = request.newBuilder();
            addAuthHeaders(builder, token);
            return chain.proceed(builder.build());
        }
        return chain.proceed(request);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addAuthHeaders(Request.Builder builder, GuestAuthToken token) {
        String authHeader = token.getTokenType() + " " + token.getAccessToken();
        builder.header(OAuthConstants.HEADER_AUTHORIZATION, authHeader);
        builder.header("x-guest-token", token.getGuestToken());
    }
}
