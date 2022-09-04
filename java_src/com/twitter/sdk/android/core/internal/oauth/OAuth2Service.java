package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import okio.ByteString;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
/* loaded from: classes2.dex */
public class OAuth2Service extends OAuthService {
    OAuth2Api api = (OAuth2Api) getRetrofit().create(OAuth2Api.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface OAuth2Api {
        @FormUrlEncoded
        @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @POST("/oauth2/token")
        Call<OAuth2Token> getAppAuthToken(@Header("Authorization") String str, @Field("grant_type") String str2);

        @POST("/1.1/guest/activate.json")
        Call<GuestTokenResponse> getGuestToken(@Header("Authorization") String str);
    }

    public OAuth2Service(TwitterCore twitterCore, TwitterApi api) {
        super(twitterCore, api);
    }

    public void requestGuestAuthToken(final Callback<GuestAuthToken> callback) {
        Callback<OAuth2Token> appAuthCallback = new Callback<OAuth2Token>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<OAuth2Token> result) {
                final OAuth2Token appAuthToken = result.data;
                Callback<GuestTokenResponse> guestTokenCallback = new Callback<GuestTokenResponse>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1.1
                    @Override // com.twitter.sdk.android.core.Callback
                    public void success(Result<GuestTokenResponse> result2) {
                        GuestAuthToken guestAuthToken = new GuestAuthToken(appAuthToken.getTokenType(), appAuthToken.getAccessToken(), result2.data.guestToken);
                        callback.success(new Result(guestAuthToken, null));
                    }

                    @Override // com.twitter.sdk.android.core.Callback
                    public void failure(TwitterException error) {
                        Twitter.getLogger().mo1290e("Twitter", "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key.", error);
                        callback.failure(error);
                    }
                };
                OAuth2Service.this.requestGuestToken(guestTokenCallback, appAuthToken);
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException error) {
                Twitter.getLogger().mo1290e("Twitter", "Failed to get app auth token", error);
                if (callback != null) {
                    callback.failure(error);
                }
            }
        };
        requestAppAuthToken(appAuthCallback);
    }

    void requestAppAuthToken(Callback<OAuth2Token> callback) {
        this.api.getAppAuthToken(getAuthHeader(), OAuthConstants.GRANT_TYPE_CLIENT_CREDENTIALS).enqueue(callback);
    }

    void requestGuestToken(Callback<GuestTokenResponse> callback, OAuth2Token appAuthToken) {
        this.api.getGuestToken(getAuthorizationHeader(appAuthToken)).enqueue(callback);
    }

    private String getAuthorizationHeader(OAuth2Token token) {
        return "Bearer " + token.getAccessToken();
    }

    private String getAuthHeader() {
        TwitterAuthConfig authConfig = getTwitterCore().getAuthConfig();
        ByteString string = ByteString.encodeUtf8(UrlUtils.percentEncode(authConfig.getConsumerKey()) + ":" + UrlUtils.percentEncode(authConfig.getConsumerSecret()));
        return "Basic " + string.base64();
    }
}
