package com.twitter.sdk.android.core.internal.network;

import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aHeaders;
import com.twitter.sdk.android.core.internal.oauth.OAuthConstants;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* loaded from: classes2.dex */
public class OAuth1aInterceptor implements Interceptor {
    final TwitterAuthConfig authConfig;
    final Session<? extends TwitterAuthToken> session;

    public OAuth1aInterceptor(Session<? extends TwitterAuthToken> session, TwitterAuthConfig authConfig) {
        this.session = session;
        this.authConfig = authConfig;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Request hackRequest = request.newBuilder().url(urlWorkaround(request.url())).build();
        Request newRequest = hackRequest.newBuilder().header(OAuthConstants.HEADER_AUTHORIZATION, getAuthorizationHeader(hackRequest)).build();
        return chain.proceed(newRequest);
    }

    HttpUrl urlWorkaround(HttpUrl url) {
        HttpUrl.Builder builder = url.newBuilder().query(null);
        int size = url.querySize();
        for (int i = 0; i < size; i++) {
            builder.addEncodedQueryParameter(UrlUtils.percentEncode(url.queryParameterName(i)), UrlUtils.percentEncode(url.queryParameterValue(i)));
        }
        return builder.build();
    }

    String getAuthorizationHeader(Request request) throws IOException {
        return new OAuth1aHeaders().getAuthorizationHeader(this.authConfig, this.session.getAuthToken(), null, request.method(), request.url().toString(), getPostParams(request));
    }

    Map<String, String> getPostParams(Request request) throws IOException {
        Map<String, String> params = new HashMap<>();
        if ("POST".equals(request.method().toUpperCase(Locale.US))) {
            RequestBody output = request.body();
            if (output instanceof FormBody) {
                FormBody body = (FormBody) output;
                for (int i = 0; i < body.size(); i++) {
                    params.put(body.encodedName(i), body.value(i));
                }
            }
        }
        return params;
    }
}
