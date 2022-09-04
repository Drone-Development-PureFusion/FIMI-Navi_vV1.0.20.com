.class public Lcom/xiaomi/account/auth/XiaomiAuthService;
.super Ljava/lang/Object;
.source "XiaomiAuthService.java"

# interfaces
.implements Lcom/xiaomi/account/IXiaomiAuthService;


# instance fields
.field private mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

.field private mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/account/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/account/IXiaomiAuthService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p1}, Lmiui/net/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IXiaomiAuthService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V
    .locals 1
    .param p1, "response"    # Lcom/xiaomi/account/IXiaomiAuthResponse;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "oauthJarMajorVersion"    # I
    .param p4, "oauthJarMinorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/account/IXiaomiAuthService;->getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V

    .line 66
    :cond_0
    return-void
.end method

.method public getMiCloudAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/account/IXiaomiAuthService;->getMiCloudAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    invoke-interface {v0, p1, p2}, Lmiui/net/IXiaomiAuthService;->invalidateAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    invoke-interface {v0, p1, p2}, Lmiui/net/IXiaomiAuthService;->getMiCloudAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMiCloudUserInfo(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSnsAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    invoke-interface {v0}, Lcom/xiaomi/account/IXiaomiAuthService;->getVersionNum()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    invoke-interface {v0, p1, p2}, Lmiui/net/IXiaomiAuthService;->invalidateAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 51
    :cond_0
    return-void
.end method

.method public supportResponseWay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    invoke-interface {v0}, Lcom/xiaomi/account/IXiaomiAuthService;->supportResponseWay()Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
