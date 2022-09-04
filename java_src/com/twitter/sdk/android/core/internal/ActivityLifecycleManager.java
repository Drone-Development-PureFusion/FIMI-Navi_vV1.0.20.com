package com.twitter.sdk.android.core.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class ActivityLifecycleManager {
    private final ActivityLifecycleCallbacksWrapper callbacksWrapper;

    /* loaded from: classes2.dex */
    public static abstract class Callbacks {
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }
    }

    public ActivityLifecycleManager(Context context) {
        Application application = (Application) context.getApplicationContext();
        this.callbacksWrapper = new ActivityLifecycleCallbacksWrapper(application);
    }

    public boolean registerCallbacks(Callbacks callbacks) {
        return this.callbacksWrapper != null && this.callbacksWrapper.registerLifecycleCallbacks(callbacks);
    }

    public void resetCallbacks() {
        if (this.callbacksWrapper == null) {
            return;
        }
        this.callbacksWrapper.clearCallbacks();
    }

    /* loaded from: classes2.dex */
    private static class ActivityLifecycleCallbacksWrapper {
        private final Application application;
        private final Set<Application.ActivityLifecycleCallbacks> registeredCallbacks = new HashSet();

        ActivityLifecycleCallbacksWrapper(Application application) {
            this.application = application;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCallbacks() {
            for (Application.ActivityLifecycleCallbacks callback : this.registeredCallbacks) {
                this.application.unregisterActivityLifecycleCallbacks(callback);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean registerLifecycleCallbacks(final Callbacks callbacks) {
            if (this.application != null) {
                Application.ActivityLifecycleCallbacks callbackWrapper = new Application.ActivityLifecycleCallbacks() { // from class: com.twitter.sdk.android.core.internal.ActivityLifecycleManager.ActivityLifecycleCallbacksWrapper.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                        callbacks.onActivityCreated(activity, bundle);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity) {
                        callbacks.onActivityStarted(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityResumed(Activity activity) {
                        callbacks.onActivityResumed(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPaused(Activity activity) {
                        callbacks.onActivityPaused(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStopped(Activity activity) {
                        callbacks.onActivityStopped(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                        callbacks.onActivitySaveInstanceState(activity, bundle);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                        callbacks.onActivityDestroyed(activity);
                    }
                };
                this.application.registerActivityLifecycleCallbacks(callbackWrapper);
                this.registeredCallbacks.add(callbackWrapper);
                return true;
            }
            return false;
        }
    }
}
