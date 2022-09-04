package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import com.twitter.sdk.android.core.Twitter;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class AuthState {
    final AtomicReference<AuthHandler> authHandlerRef = new AtomicReference<>(null);

    public boolean beginAuthorize(Activity activity, AuthHandler authHandler) {
        boolean result = false;
        if (isAuthorizeInProgress()) {
            Twitter.getLogger().mo1285w("Twitter", "Authorize already in progress");
        } else if (authHandler.authorize(activity) && !(result = this.authHandlerRef.compareAndSet(null, authHandler))) {
            Twitter.getLogger().mo1285w("Twitter", "Failed to update authHandler, authorize already in progress.");
        }
        return result;
    }

    public void endAuthorize() {
        this.authHandlerRef.set(null);
    }

    public boolean isAuthorizeInProgress() {
        return this.authHandlerRef.get() != null;
    }

    public AuthHandler getAuthHandler() {
        return this.authHandlerRef.get();
    }
}
