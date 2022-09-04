package com.xiaomi.account.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.IXiaomiAuthService;
import com.xiaomi.account.openauth.AuthorizeActivity;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public class MiuiOauth implements XiaomiOAuth {
    @Deprecated
    private static final String ACTION_FOR_AUTH_SERVICE = "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE";
    private static final String NEW_ACTION_FOR_AUTH_SERVICE = "miui.intent.action.XIAOMI_ACCOUNT_AUTHORIZE";
    private static final String PACKAGE_NAME_FOR_AUTH_SERVICE = "com.xiaomi.account";
    private static final String TAG = "MiuiOauth";
    private String mAppId;
    private Context mContext;
    private String mRedirectUrl;
    private Executor executor = Executors.newCachedThreadPool();
    private Class<? extends AuthorizeActivityBase> mAuthorizeActivityClazz = AuthorizeActivity.class;

    public MiuiOauth(Context context, String appId, String redirectUrl) {
        this.mContext = context;
        this.mAppId = appId;
        this.mRedirectUrl = redirectUrl;
    }

    public void setAuthorizeActivityClazz(Class<? extends AuthorizeActivityBase> mAuthorizeActivityClazz) {
        this.mAuthorizeActivityClazz = mAuthorizeActivityClazz;
    }

    public static boolean isSupportService(Context context) {
        Intent intent = new Intent(NEW_ACTION_FOR_AUTH_SERVICE);
        intent.setPackage("com.xiaomi.account");
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> services = packageManager.queryIntentServices(intent, 0);
        if (services == null || services.size() <= 0) {
            Intent intent2 = new Intent(ACTION_FOR_AUTH_SERVICE);
            intent2.setPackage("com.xiaomi.account");
            List<ResolveInfo> services2 = packageManager.queryIntentServices(intent2, 0);
            return services2 != null && services2.size() > 0;
        }
        return true;
    }

    @Override // com.xiaomi.account.auth.XiaomiOAuth
    public XiaomiOAuthFuture<XiaomiOAuthResults> getCodeOrAccessToken(Activity activity, OAuthConfig config) {
        Bundle options = config.makeOptions();
        return getCodeOrAccessToken(activity, options);
    }

    @Override // com.xiaomi.account.auth.XiaomiOAuth
    public XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, OAuthConfig config) {
        Bundle options = config.makeOptions();
        options.putBoolean(XiaomiOAuthConstants.EXTRA_NATIVE_OAUTH, true);
        return getCodeOrAccessToken(activity, options);
    }

    private XiaomiOAuthFuture<XiaomiOAuthResults> getCodeOrAccessToken(Activity activity, Bundle options) {
        final XiaomiOAuthFuture<Bundle> future = getOauth(activity, options);
        return new XiaomiOAuthFuture<XiaomiOAuthResults>() { // from class: com.xiaomi.account.auth.MiuiOauth.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
            /* renamed from: getResult */
            public XiaomiOAuthResults mo1883getResult() throws OperationCanceledException, IOException, XMAuthericationException {
                return XiaomiOAuthResults.parseBundle((Bundle) future.mo1883getResult());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
            /* renamed from: getResult */
            public XiaomiOAuthResults mo1884getResult(long timeout, TimeUnit unit) throws OperationCanceledException, IOException, XMAuthericationException {
                return XiaomiOAuthResults.parseBundle((Bundle) future.mo1884getResult(timeout, unit));
            }
        };
    }

    private XiaomiOAuthFuture<Bundle> getOauth(Activity activity, final Bundle options) {
        return new MiuiOAuthSession(activity) { // from class: com.xiaomi.account.auth.MiuiOauth.2
            @Override // com.xiaomi.account.auth.MiuiOauth.MiuiOAuthSession
            void doWork(XiaomiAuthService service, IXiaomiAuthResponse mResponse) throws Throwable {
                options.putString(XiaomiOAuthConstants.EXTRA_CLIENT_ID, String.valueOf(MiuiOauth.this.mAppId));
                options.putString(XiaomiOAuthConstants.EXTRA_REDIRECT_URI, MiuiOauth.this.mRedirectUrl);
                MiuiOauth.this.checkNativeOAuthSupport(service, options);
                boolean supportResponseWay = service.supportResponseWay();
                if (!supportResponseWay) {
                    Account account = MiuiOauth.this.getXiaomiAccount();
                    if (account == null) {
                        MiuiOauth.this.addXiaomiAccount(this.mActivityWeakReference.get());
                        account = MiuiOauth.this.getXiaomiAccount();
                    }
                    if (account == null) {
                        throw new XMAuthericationException("Xiaomi Account not Login");
                    }
                    Bundle bundle = service.getMiCloudAccessToken(account, options);
                    mResponse.onResult(bundle);
                    return;
                }
                service.getAccessTokenInResponse(mResponse, options, 1, 67);
            }
        }.bind();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkNativeOAuthSupport(IXiaomiAuthService service, Bundle options) throws RemoteException, XMAuthericationException {
        boolean supportNativeOAuth = true;
        boolean askNativeOauth = options.getBoolean(XiaomiOAuthConstants.EXTRA_NATIVE_OAUTH);
        if (service.getVersionNum() < 1) {
            supportNativeOAuth = false;
        }
        if (askNativeOauth && !supportNativeOAuth) {
            throw new XMAuthericationException("this version of miui not support fast Oauth");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public Account getXiaomiAccount() {
        try {
            Account[] accounts = AccountManager.get(this.mContext).getAccountsByType("com.xiaomi");
            if (accounts.length != 0) {
                return accounts[0];
            }
            return null;
        } catch (SecurityException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void addXiaomiAccount(Activity activity) {
        if (activity != null) {
            try {
                Bundle result = AccountManager.get(this.mContext).addAccount("com.xiaomi", null, null, null, activity, null, null).getResult();
                if (result != null) {
                    if (!result.containsKey("authAccount")) {
                    }
                }
            } catch (AuthenticatorException e) {
                e.printStackTrace();
            } catch (OperationCanceledException e2) {
                e2.printStackTrace();
            } catch (IOException e3) {
                e3.printStackTrace();
            } catch (SecurityException e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class MiuiOAuthSession extends FutureTask<Bundle> implements XiaomiOAuthFuture<Bundle>, ServiceConnection {
        WeakReference<Activity> mActivityWeakReference;
        XiaomiAuthService mAuthService;
        IXiaomiAuthResponse mResponse;

        abstract void doWork(XiaomiAuthService xiaomiAuthService, IXiaomiAuthResponse iXiaomiAuthResponse) throws Throwable;

        MiuiOAuthSession(Activity activity) {
            super(new Callable<Bundle>() { // from class: com.xiaomi.account.auth.MiuiOauth.MiuiOAuthSession.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                /* renamed from: call */
                public Bundle mo1880call() throws Exception {
                    throw new IllegalStateException("this should never be called");
                }
            });
            this.mActivityWeakReference = new WeakReference<>(activity);
            this.mResponse = new IXiaomiAuthResponse.Stub() { // from class: com.xiaomi.account.auth.MiuiOauth.MiuiOAuthSession.2
                @Override // com.xiaomi.account.IXiaomiAuthResponse
                public void onResult(Bundle bundle) throws RemoteException {
                    MiuiOAuthSession.this.set(bundle);
                }

                @Override // com.xiaomi.account.IXiaomiAuthResponse
                public void onCancel() throws RemoteException {
                    MiuiOAuthSession.this.setException(new OperationCanceledException());
                }
            };
        }

        XiaomiOAuthFuture<Bundle> bind() {
            Intent intent = new Intent(MiuiOauth.NEW_ACTION_FOR_AUTH_SERVICE);
            intent.setPackage("com.xiaomi.account");
            if (!MiuiOauth.this.mContext.bindService(intent, this, 1)) {
                Intent intent2 = new Intent(MiuiOauth.ACTION_FOR_AUTH_SERVICE);
                intent2.setPackage("com.xiaomi.account");
                if (!MiuiOauth.this.mContext.bindService(intent2, this, 1)) {
                    setException(new XMAuthericationException("BIND FAILED"));
                }
            }
            return this;
        }

        private void unbind() {
            if (this.mAuthService != null) {
                this.mAuthService = null;
                MiuiOauth.this.mContext.unbindService(this);
            }
        }

        private void close() {
            unbind();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
        /* renamed from: getResult */
        public Bundle mo1884getResult(long timeout, TimeUnit unit) throws IOException, XMAuthericationException, OperationCanceledException {
            return internalGetResult(Long.valueOf(timeout), unit);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
        /* renamed from: getResult */
        public Bundle mo1883getResult() throws IOException, XMAuthericationException, OperationCanceledException {
            return internalGetResult(null, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.util.concurrent.FutureTask
        public void set(Bundle bundle) {
            if (bundle != null && bundle.containsKey(XiaomiOAuthConstants.EXTRA_INTENT)) {
                Intent intent = (Intent) bundle.getParcelable(XiaomiOAuthConstants.EXTRA_INTENT);
                if (intent == null) {
                    setException(new XMAuthericationException("intent == null"));
                    return;
                }
                Activity activity = this.mActivityWeakReference.get();
                if (activity == null) {
                    setException(new XMAuthericationException("activity == null"));
                    return;
                }
                Bundle extras = intent.getExtras();
                extras.setClassLoader(getClass().getClassLoader());
                if (!extras.containsKey("extra_response")) {
                    intent = AuthorizeActivityBase.asMiddleActivity(activity, intent, this.mResponse, MiuiOauth.this.mAuthorizeActivityClazz);
                }
                activity.startActivity(intent);
                return;
            }
            close();
            super.set((MiuiOAuthSession) bundle);
        }

        @Override // java.util.concurrent.FutureTask
        protected void setException(Throwable t) {
            close();
            super.setException(t);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            this.mAuthService = new XiaomiAuthService(service);
            MiuiOauth.this.executor.execute(new Runnable() { // from class: com.xiaomi.account.auth.MiuiOauth.MiuiOAuthSession.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (MiuiOAuthSession.this.mAuthService != null) {
                            MiuiOAuthSession.this.doWork(MiuiOAuthSession.this.mAuthService, MiuiOAuthSession.this.mResponse);
                        }
                    } catch (Throwable e) {
                        MiuiOAuthSession.this.setException(e);
                    }
                }
            });
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            this.mAuthService = null;
            if (Build.VERSION.SDK_INT >= 15) {
                setException(new RemoteException("onServiceDisconnected"));
            } else {
                setException(new XMAuthericationException("onServiceDisconnected"));
            }
        }

        private Bundle internalGetResult(Long timeout, TimeUnit unit) throws IOException, XMAuthericationException, OperationCanceledException {
            Bundle bundle;
            if (!isDone()) {
                ensureNotOnMainThread();
            }
            try {
                try {
                    try {
                        try {
                            try {
                                if (timeout == null) {
                                    bundle = get();
                                    cancel(true);
                                } else {
                                    bundle = get(timeout.longValue(), unit);
                                    cancel(true);
                                }
                                return bundle;
                            } catch (InterruptedException e) {
                                Log.w(MiuiOauth.TAG, "internalGetResult caught Exception and will re-throw", e);
                                cancel(true);
                                throw new OperationCanceledException();
                            }
                        } catch (TimeoutException e2) {
                            Log.w(MiuiOauth.TAG, "internalGetResult caught Exception and will re-throw", e2);
                            cancel(true);
                            throw new OperationCanceledException();
                        }
                    } catch (ExecutionException e3) {
                        Log.w(MiuiOauth.TAG, "internalGetResult caught Exception and will re-throw", e3);
                        Throwable cause = e3.getCause();
                        if (cause instanceof IOException) {
                            throw ((IOException) cause);
                        }
                        if (cause instanceof OperationCanceledException) {
                            throw ((OperationCanceledException) cause);
                        }
                        if (!(cause instanceof XMAuthericationException)) {
                            throw new XMAuthericationException(cause);
                        }
                        throw ((XMAuthericationException) cause);
                    }
                } catch (CancellationException e4) {
                    Log.w(MiuiOauth.TAG, "internalGetResult caught Exception and will re-throw", e4);
                    cancel(true);
                    throw new OperationCanceledException();
                }
            } catch (Throwable th) {
                cancel(true);
                throw th;
            }
        }

        private void ensureNotOnMainThread() {
            Looper looper = Looper.myLooper();
            if (looper != null && looper == MiuiOauth.this.mContext.getMainLooper()) {
                IllegalStateException exception = new IllegalStateException("calling this from your main thread can lead to deadlock");
                Log.e(MiuiOauth.TAG, "calling this from your main thread can lead to deadlock and/or ANRs", exception);
                if (MiuiOauth.this.mContext.getApplicationInfo().targetSdkVersion >= 8) {
                    throw exception;
                }
            }
        }
    }
}
