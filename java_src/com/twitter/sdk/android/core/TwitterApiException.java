package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.twitter.sdk.android.core.models.ApiError;
import com.twitter.sdk.android.core.models.ApiErrors;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import retrofit2.Response;
/* loaded from: classes2.dex */
public class TwitterApiException extends TwitterException {
    public static final int DEFAULT_ERROR_CODE = 0;
    private final ApiError apiError;
    private final int code;
    private final Response response;
    private final TwitterRateLimit twitterRateLimit;

    public TwitterApiException(Response response) {
        this(response, readApiError(response), readApiRateLimit(response), response.code());
    }

    TwitterApiException(Response response, ApiError apiError, TwitterRateLimit twitterRateLimit, int code) {
        super(createExceptionMessage(code));
        this.apiError = apiError;
        this.twitterRateLimit = twitterRateLimit;
        this.code = code;
        this.response = response;
    }

    public int getStatusCode() {
        return this.code;
    }

    public int getErrorCode() {
        if (this.apiError == null) {
            return 0;
        }
        return this.apiError.code;
    }

    public String getErrorMessage() {
        if (this.apiError == null) {
            return null;
        }
        return this.apiError.message;
    }

    public TwitterRateLimit getTwitterRateLimit() {
        return this.twitterRateLimit;
    }

    public Response getResponse() {
        return this.response;
    }

    public static TwitterRateLimit readApiRateLimit(Response response) {
        return new TwitterRateLimit(response.headers());
    }

    public static ApiError readApiError(Response response) {
        try {
            String body = response.errorBody().source().buffer().clone().readUtf8();
            if (!TextUtils.isEmpty(body)) {
                return parseApiError(body);
            }
        } catch (Exception e) {
            Twitter.getLogger().mo1290e("Twitter", "Unexpected response", e);
        }
        return null;
    }

    static ApiError parseApiError(String body) {
        Gson gson = new GsonBuilder().registerTypeAdapterFactory(new SafeListAdapter()).registerTypeAdapterFactory(new SafeMapAdapter()).create();
        try {
            ApiErrors apiErrors = (ApiErrors) gson.fromJson(body, (Class<Object>) ApiErrors.class);
            if (!apiErrors.errors.isEmpty()) {
                return apiErrors.errors.get(0);
            }
        } catch (JsonSyntaxException e) {
            Twitter.getLogger().mo1290e("Twitter", "Invalid json: " + body, e);
        }
        return null;
    }

    static String createExceptionMessage(int code) {
        return "HTTP request failed, Status: " + code;
    }
}
