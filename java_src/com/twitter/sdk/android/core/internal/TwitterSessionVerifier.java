package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.TwitterApiClient;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.scribe.DefaultScribeClient;
import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import com.twitter.sdk.android.core.internal.scribe.TwitterCoreScribeClientHolder;
import com.twitter.sdk.android.core.services.AccountService;
import java.io.IOException;
/* loaded from: classes2.dex */
public class TwitterSessionVerifier implements SessionVerifier<TwitterSession> {
    static final String SCRIBE_ACTION = "impression";
    static final String SCRIBE_CLIENT = "android";
    static final String SCRIBE_COMPONENT = "";
    static final String SCRIBE_ELEMENT = "";
    static final String SCRIBE_PAGE = "credentials";
    static final String SCRIBE_SECTION = "";
    private final AccountServiceProvider accountServiceProvider;
    private final DefaultScribeClient scribeClient;

    public TwitterSessionVerifier() {
        this.accountServiceProvider = new AccountServiceProvider();
        this.scribeClient = TwitterCoreScribeClientHolder.getScribeClient();
    }

    TwitterSessionVerifier(AccountServiceProvider accountServiceProvider, DefaultScribeClient scribeClient) {
        this.accountServiceProvider = accountServiceProvider;
        this.scribeClient = scribeClient;
    }

    @Override // com.twitter.sdk.android.core.internal.SessionVerifier
    public void verifySession(TwitterSession session) {
        AccountService accountService = this.accountServiceProvider.getAccountService(session);
        try {
            scribeVerifySession();
            accountService.verifyCredentials(true, false, false).execute();
        } catch (IOException e) {
        } catch (RuntimeException e2) {
        }
    }

    private void scribeVerifySession() {
        if (this.scribeClient != null) {
            EventNamespace ns = new EventNamespace.Builder().setClient("android").setPage(SCRIBE_PAGE).setSection("").setComponent("").setElement("").setAction(SCRIBE_ACTION).builder();
            this.scribeClient.scribe(ns);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class AccountServiceProvider {
        protected AccountServiceProvider() {
        }

        public AccountService getAccountService(TwitterSession session) {
            return new TwitterApiClient(session).getAccountService();
        }
    }
}
