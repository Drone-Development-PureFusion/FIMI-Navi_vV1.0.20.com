.class public Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;
.super Ljava/lang/Object;
.source "TwitterApiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;
    }
.end annotation


# instance fields
.field final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field volatile authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->activityRef:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;Ljava/lang/String;JLcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->getTwitterUserInfo(Ljava/lang/String;JLcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V

    return-void
.end method

.method private getTwitterUserInfo(Ljava/lang/String;JLcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # J
    .param p4, "callback"    # Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/TwitterSession;

    .line 71
    .local v1, "activeSession":Lcom/twitter/sdk/android/core/TwitterSession;
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterApiClient;

    invoke-direct {v2, v1}, Lcom/twitter/sdk/android/core/TwitterApiClient;-><init>(Lcom/twitter/sdk/android/core/TwitterSession;)V

    .line 72
    .local v2, "client":Lcom/twitter/sdk/android/core/TwitterApiClient;
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    .line 73
    .local v0, "accountService":Lcom/twitter/sdk/android/core/services/AccountService;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v5, v6}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v3

    .line 74
    .local v3, "show":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/twitter/sdk/android/core/models/User;>;"
    new-instance v4, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;-><init>(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;JLcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V

    invoke-interface {v3, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 92
    return-void
.end method


# virtual methods
.method getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-object v0
.end method

.method public login(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V
    .locals 3
    .param p1, "loginCallback"    # Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$1;

    invoke-direct {v2, p0, p1}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$1;-><init>(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    .line 49
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 67
    :cond_0
    return-void
.end method
