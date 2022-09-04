package com.xiaomi.account.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.IXiaomiAuthService;
import miui.net.IXiaomiAuthService;
/* loaded from: classes2.dex */
public class XiaomiAuthService implements IXiaomiAuthService {
    private IXiaomiAuthService mAuthService;
    private miui.net.IXiaomiAuthService mMiuiV5AuthService;

    /* JADX INFO: Access modifiers changed from: package-private */
    public XiaomiAuthService(IBinder binder) {
        try {
            this.mAuthService = IXiaomiAuthService.Stub.asInterface(binder);
        } catch (SecurityException e) {
            this.mMiuiV5AuthService = IXiaomiAuthService.Stub.asInterface(binder);
        }
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public Bundle getMiCloudUserInfo(Account account, Bundle options) throws RemoteException {
        return null;
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public Bundle getMiCloudAccessToken(Account account, Bundle options) throws RemoteException {
        if (this.mAuthService != null) {
            return this.mAuthService.getMiCloudAccessToken(account, options);
        }
        if (this.mMiuiV5AuthService != null) {
            this.mMiuiV5AuthService.invalidateAccessToken(account, options);
            return this.mMiuiV5AuthService.getMiCloudAccessToken(account, options);
        }
        return null;
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public Bundle getSnsAccessToken(Account account, Bundle options) throws RemoteException {
        return null;
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public void invalidateAccessToken(Account account, Bundle options) throws RemoteException {
        if (this.mMiuiV5AuthService != null) {
            this.mMiuiV5AuthService.invalidateAccessToken(account, options);
        }
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public boolean supportResponseWay() throws RemoteException {
        if (this.mAuthService != null) {
            return this.mAuthService.supportResponseWay();
        }
        return false;
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public void getAccessTokenInResponse(IXiaomiAuthResponse response, Bundle options, int oauthJarMajorVersion, int oauthJarMinorVersion) throws RemoteException {
        if (this.mAuthService != null) {
            this.mAuthService.getAccessTokenInResponse(response, options, oauthJarMajorVersion, oauthJarMinorVersion);
        }
    }

    @Override // com.xiaomi.account.IXiaomiAuthService
    public int getVersionNum() throws RemoteException {
        if (this.mAuthService != null) {
            return this.mAuthService.getVersionNum();
        }
        return 0;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        throw new IllegalStateException();
    }
}
