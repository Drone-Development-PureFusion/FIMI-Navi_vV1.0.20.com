.class abstract Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;
.super Lcom/xiaomi/account/auth/XiaomiOAuthRunnable;
.source "MiuiAuthServiceRunnable.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable$NoMiuiAuthServiceException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/account/auth/XiaomiOAuthRunnable",
        "<TV;>;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final ACTION_FOR_AUTH_SERVICE:Ljava/lang/String; = "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

.field private static final PACKAGE_NAME_FOR_AUTH_SERVICE:Ljava/lang/String; = "com.xiaomi.account"


# instance fields
.field protected final account:Landroid/accounts/Account;

.field private final context:Landroid/content/Context;

.field protected final options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 27
    .local p0, "this":Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;, "Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable<TV;>;"
    invoke-direct {p0}, Lcom/xiaomi/account/auth/XiaomiOAuthRunnable;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->account:Landroid/accounts/Account;

    .line 30
    iput-object p3, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->options:Landroid/os/Bundle;

    .line 31
    return-void
.end method

.method private static getAuthServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 78
    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final doRun()V
    .locals 3

    .prologue
    .line 35
    .local p0, "this":Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;, "Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable<TV;>;"
    invoke-static {}, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->getAuthServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 38
    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->mFuture:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    new-instance v2, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable$NoMiuiAuthServiceException;

    invoke-direct {v2}, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable$NoMiuiAuthServiceException;-><init>()V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->setException(Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 46
    .local p0, "this":Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;, "Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable<TV;>;"
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/account/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/account/IXiaomiAuthService;

    move-result-object v0

    .line 47
    .local v0, "accountService":Lcom/xiaomi/account/IXiaomiAuthService;
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->talkWithMiuiV6(Lcom/xiaomi/account/IXiaomiAuthService;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    .local v4, "v":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->mFuture:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-virtual {v5, v4}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->context:Landroid/content/Context;

    invoke-virtual {v5, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 65
    .end local v0    # "accountService":Lcom/xiaomi/account/IXiaomiAuthService;
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e1":Ljava/lang/SecurityException;
    :try_start_1
    invoke-static {p2}, Lmiui/net/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IXiaomiAuthService;

    move-result-object v0

    .line 53
    .local v0, "accountService":Lmiui/net/IXiaomiAuthService;
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->talkWithMiuiV5(Lmiui/net/IXiaomiAuthService;)Ljava/lang/Object;

    move-result-object v4

    .line 54
    .restart local v4    # "v":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->mFuture:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-virtual {v5, v4}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->context:Landroid/content/Context;

    invoke-virtual {v5, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 56
    .end local v0    # "accountService":Lmiui/net/IXiaomiAuthService;
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :catch_1
    move-exception v3

    .line 57
    .local v3, "e2":Ljava/lang/SecurityException;
    :try_start_2
    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->mFuture:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    new-instance v6, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable$NoMiuiAuthServiceException;

    invoke-direct {v6}, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable$NoMiuiAuthServiceException;-><init>()V

    invoke-virtual {v5, v6}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->setException(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->context:Landroid/content/Context;

    invoke-virtual {v5, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 60
    .end local v2    # "e1":Ljava/lang/SecurityException;
    .end local v3    # "e2":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 61
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->mFuture:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-virtual {v5, v1}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->setException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->context:Landroid/content/Context;

    invoke-virtual {v5, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;->context:Landroid/content/Context;

    invoke-virtual {v6, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v5
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 71
    .local p0, "this":Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable;, "Lcom/xiaomi/account/auth/MiuiAuthServiceRunnable<TV;>;"
    return-void
.end method

.method protected abstract talkWithMiuiV5(Lmiui/net/IXiaomiAuthService;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/IXiaomiAuthService;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract talkWithMiuiV6(Lcom/xiaomi/account/IXiaomiAuthService;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/account/IXiaomiAuthService;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
