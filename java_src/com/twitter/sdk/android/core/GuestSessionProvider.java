package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2.dex */
public class GuestSessionProvider {
    private final OAuth2Service oAuth2Service;
    private final SessionManager<GuestSession> sessionManager;

    public GuestSessionProvider(OAuth2Service oAuth2Service, SessionManager<GuestSession> sessionManager) {
        this.oAuth2Service = oAuth2Service;
        this.sessionManager = sessionManager;
    }

    public synchronized GuestSession getCurrentSession() {
        GuestSession session;
        session = this.sessionManager.getActiveSession();
        if (!isSessionValid(session)) {
            refreshToken();
            session = this.sessionManager.getActiveSession();
        }
        return session;
    }

    public synchronized GuestSession refreshCurrentSession(GuestSession expiredSession) {
        GuestSession session = this.sessionManager.getActiveSession();
        if (expiredSession != null && expiredSession.equals(session)) {
            refreshToken();
        }
        return this.sessionManager.getActiveSession();
    }

    void refreshToken() {
        Twitter.getLogger().mo1293d("GuestSessionProvider", "Refreshing expired guest session.");
        final CountDownLatch latch = new CountDownLatch(1);
        this.oAuth2Service.requestGuestAuthToken(new Callback<GuestAuthToken>() { // from class: com.twitter.sdk.android.core.GuestSessionProvider.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<GuestAuthToken> result) {
                GuestSessionProvider.this.sessionManager.setActiveSession(new GuestSession(result.data));
                latch.countDown();
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException exception) {
                GuestSessionProvider.this.sessionManager.clearSession(0L);
                latch.countDown();
            }
        });
        try {
            latch.await();
        } catch (InterruptedException e) {
            this.sessionManager.clearSession(0L);
        }
    }

    boolean isSessionValid(GuestSession session) {
        return (session == null || session.getAuthToken() == null || session.getAuthToken().isExpired()) ? false : true;
    }
}
