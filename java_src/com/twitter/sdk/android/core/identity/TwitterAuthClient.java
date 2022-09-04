package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.scribe.DefaultScribeClient;
import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import com.twitter.sdk.android.core.internal.scribe.TwitterCoreScribeClientHolder;
import com.twitter.sdk.android.core.models.User;
import retrofit2.Call;
/* loaded from: classes2.dex */
public class TwitterAuthClient {
    private static final String SCRIBE_ACTION = "impression";
    private static final String SCRIBE_CLIENT = "android";
    private static final String SCRIBE_COMPONENT = "";
    private static final String SCRIBE_ELEMENT = "";
    private static final String SCRIBE_LOGIN_PAGE = "login";
    private static final String SCRIBE_SECTION = "";
    private static final String SCRIBE_SHARE_EMAIL_PAGE = "shareemail";
    final TwitterAuthConfig authConfig;
    final AuthState authState;
    final SessionManager<TwitterSession> sessionManager;
    final TwitterCore twitterCore;

    /* loaded from: classes2.dex */
    private static class AuthStateLazyHolder {
        private static final AuthState INSTANCE = new AuthState();

        private AuthStateLazyHolder() {
        }
    }

    public int getRequestCode() {
        return this.authConfig.getRequestCode();
    }

    public TwitterAuthClient() {
        this(TwitterCore.getInstance(), TwitterCore.getInstance().getAuthConfig(), TwitterCore.getInstance().getSessionManager(), AuthStateLazyHolder.INSTANCE);
    }

    TwitterAuthClient(TwitterCore twitterCore, TwitterAuthConfig authConfig, SessionManager<TwitterSession> sessionManager, AuthState authState) {
        this.twitterCore = twitterCore;
        this.authState = authState;
        this.authConfig = authConfig;
        this.sessionManager = sessionManager;
    }

    public void authorize(Activity activity, Callback<TwitterSession> callback) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity must not be null.");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null.");
        }
        if (activity.isFinishing()) {
            Twitter.getLogger().mo1290e("Twitter", "Cannot authorize, activity is finishing.", null);
        } else {
            handleAuthorize(activity, callback);
        }
    }

    private void handleAuthorize(Activity activity, Callback<TwitterSession> callback) {
        scribeAuthorizeImpression();
        CallbackWrapper callbackWrapper = new CallbackWrapper(this.sessionManager, callback);
        if (!authorizeUsingSSO(activity, callbackWrapper) && !authorizeUsingOAuth(activity, callbackWrapper)) {
            callbackWrapper.failure(new TwitterAuthException("Authorize failed."));
        }
    }

    public void cancelAuthorize() {
        this.authState.endAuthorize();
    }

    private boolean authorizeUsingSSO(Activity activity, CallbackWrapper callbackWrapper) {
        if (SSOAuthHandler.isAvailable(activity)) {
            Twitter.getLogger().mo1293d("Twitter", "Using SSO");
            return this.authState.beginAuthorize(activity, new SSOAuthHandler(this.authConfig, callbackWrapper, this.authConfig.getRequestCode()));
        }
        return false;
    }

    private boolean authorizeUsingOAuth(Activity activity, CallbackWrapper callbackWrapper) {
        Twitter.getLogger().mo1293d("Twitter", "Using OAuth");
        return this.authState.beginAuthorize(activity, new OAuthHandler(this.authConfig, callbackWrapper, this.authConfig.getRequestCode()));
    }

    private void scribeAuthorizeImpression() {
        DefaultScribeClient scribeClient = getScribeClient();
        if (scribeClient != null) {
            EventNamespace ns = new EventNamespace.Builder().setClient("android").setPage(SCRIBE_LOGIN_PAGE).setSection("").setComponent("").setElement("").setAction(SCRIBE_ACTION).builder();
            scribeClient.scribe(ns);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        Twitter.getLogger().mo1293d("Twitter", "onActivityResult called with " + requestCode + " " + resultCode);
        if (!this.authState.isAuthorizeInProgress()) {
            Twitter.getLogger().mo1290e("Twitter", "Authorize not in progress", null);
            return;
        }
        AuthHandler authHandler = this.authState.getAuthHandler();
        if (authHandler != null && authHandler.handleOnActivityResult(requestCode, resultCode, data)) {
            this.authState.endAuthorize();
        }
    }

    public void requestEmail(TwitterSession session, final Callback<String> callback) {
        scribeRequestEmail();
        Call<User> verifyRequest = this.twitterCore.getApiClient(session).getAccountService().verifyCredentials(false, false, true);
        verifyRequest.enqueue(new Callback<User>() { // from class: com.twitter.sdk.android.core.identity.TwitterAuthClient.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<User> result) {
                callback.success(new Result(result.data.email, null));
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException exception) {
                callback.failure(exception);
            }
        });
    }

    protected DefaultScribeClient getScribeClient() {
        return TwitterCoreScribeClientHolder.getScribeClient();
    }

    private void scribeRequestEmail() {
        DefaultScribeClient scribeClient = getScribeClient();
        if (scribeClient != null) {
            EventNamespace ns = new EventNamespace.Builder().setClient("android").setPage(SCRIBE_SHARE_EMAIL_PAGE).setSection("").setComponent("").setElement("").setAction(SCRIBE_ACTION).builder();
            scribeClient.scribe(ns);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class CallbackWrapper extends Callback<TwitterSession> {
        private final Callback<TwitterSession> callback;
        private final SessionManager<TwitterSession> sessionManager;

        CallbackWrapper(SessionManager<TwitterSession> sessionManager, Callback<TwitterSession> callback) {
            this.sessionManager = sessionManager;
            this.callback = callback;
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<TwitterSession> result) {
            Twitter.getLogger().mo1293d("Twitter", "Authorization completed successfully");
            this.sessionManager.setActiveSession(result.data);
            this.callback.success(result);
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException exception) {
            Twitter.getLogger().mo1290e("Twitter", "Authorization completed with an error", exception);
            this.callback.failure(exception);
        }
    }
}
