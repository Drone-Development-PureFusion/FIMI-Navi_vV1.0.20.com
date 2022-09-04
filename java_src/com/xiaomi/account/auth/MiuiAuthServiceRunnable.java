package com.xiaomi.account.auth;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xiaomi.account.IXiaomiAuthService;
import miui.net.IXiaomiAuthService;
/* loaded from: classes2.dex */
abstract class MiuiAuthServiceRunnable<V> extends XiaomiOAuthRunnable<V> implements ServiceConnection {
    private static final String ACTION_FOR_AUTH_SERVICE = "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE";
    private static final String PACKAGE_NAME_FOR_AUTH_SERVICE = "com.xiaomi.account";
    protected final Account account;
    private final Context context;
    protected final Bundle options;

    protected abstract V talkWithMiuiV5(IXiaomiAuthService iXiaomiAuthService) throws RemoteException;

    protected abstract V talkWithMiuiV6(com.xiaomi.account.IXiaomiAuthService iXiaomiAuthService) throws RemoteException;

    /* loaded from: classes2.dex */
    static class NoMiuiAuthServiceException extends Exception {
        NoMiuiAuthServiceException() {
        }
    }

    MiuiAuthServiceRunnable(Context context, Account account, Bundle options) {
        this.context = context;
        this.account = account;
        this.options = options;
    }

    @Override // com.xiaomi.account.auth.XiaomiOAuthRunnable
    public final void doRun() {
        Intent intent = getAuthServiceIntent();
        if (!this.context.bindService(intent, this, 1)) {
            this.context.unbindService(this);
            this.mFuture.setException(new NoMiuiAuthServiceException());
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName name, IBinder service) {
        try {
            try {
                com.xiaomi.account.IXiaomiAuthService accountService = IXiaomiAuthService.Stub.asInterface(service);
                V v = talkWithMiuiV6(accountService);
                this.mFuture.set(v);
                this.context.unbindService(this);
            } catch (SecurityException e) {
                try {
                    miui.net.IXiaomiAuthService accountService2 = IXiaomiAuthService.Stub.asInterface(service);
                    V v2 = talkWithMiuiV5(accountService2);
                    this.mFuture.set(v2);
                } catch (SecurityException e2) {
                    this.mFuture.setException(new NoMiuiAuthServiceException());
                }
            }
        } catch (RemoteException e3) {
            this.mFuture.setException(e3);
        } finally {
            this.context.unbindService(this);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName name) {
    }

    private static Intent getAuthServiceIntent() {
        Intent intent = new Intent(ACTION_FOR_AUTH_SERVICE);
        if (Build.VERSION.SDK_INT >= 21) {
            intent.setPackage("com.xiaomi.account");
        }
        return intent;
    }
}
