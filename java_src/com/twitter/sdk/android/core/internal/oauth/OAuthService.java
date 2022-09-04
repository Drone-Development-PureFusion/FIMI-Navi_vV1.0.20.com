package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.network.OkHttpClientHelper;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class OAuthService {
    private static final String CLIENT_NAME = "TwitterAndroidSDK";
    private final TwitterApi api;
    private final Retrofit retrofit;
    private final TwitterCore twitterCore;
    private final String userAgent;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OAuthService(TwitterCore twitterCore, TwitterApi api) {
        this.twitterCore = twitterCore;
        this.api = api;
        this.userAgent = TwitterApi.buildUserAgent(CLIENT_NAME, twitterCore.getVersion());
        OkHttpClient client = new OkHttpClient.Builder().addInterceptor(new Interceptor() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuthService.1
            @Override // okhttp3.Interceptor
            public Response intercept(Interceptor.Chain chain) throws IOException {
                Request request = chain.request().newBuilder().header("User-Agent", OAuthService.this.getUserAgent()).build();
                return chain.proceed(request);
            }
        }).certificatePinner(OkHttpClientHelper.getCertificatePinner()).build();
        this.retrofit = new Retrofit.Builder().baseUrl(getApi().getBaseHostUrl()).client(client).addConverterFactory(GsonConverterFactory.create()).build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TwitterCore getTwitterCore() {
        return this.twitterCore;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TwitterApi getApi() {
        return this.api;
    }

    protected String getUserAgent() {
        return this.userAgent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Retrofit getRetrofit() {
        return this.retrofit;
    }
}
