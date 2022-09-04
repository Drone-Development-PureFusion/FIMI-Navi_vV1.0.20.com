.class public Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
.super Ljava/lang/Object;
.source "TwitterAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;,
        Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$AuthStateLazyHolder;
    }
.end annotation


# static fields
.field private static final SCRIBE_ACTION:Ljava/lang/String; = "impression"

.field private static final SCRIBE_CLIENT:Ljava/lang/String; = "android"

.field private static final SCRIBE_COMPONENT:Ljava/lang/String; = ""

.field private static final SCRIBE_ELEMENT:Ljava/lang/String; = ""

.field private static final SCRIBE_LOGIN_PAGE:Ljava/lang/String; = "login"

.field private static final SCRIBE_SECTION:Ljava/lang/String; = ""

.field private static final SCRIBE_SHARE_EMAIL_PAGE:Ljava/lang/String; = "shareemail"


# instance fields
.field final authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final authState:Lcom/twitter/sdk/android/core/identity/AuthState;

.field final sessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field

.field final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterCore;->getAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v2

    invoke-static {}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$AuthStateLazyHolder;->access$000()Lcom/twitter/sdk/android/core/identity/AuthState;

    move-result-object v3

    .line 72
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/identity/AuthState;)V

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/identity/AuthState;)V
    .locals 0
    .param p1, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;
    .param p2, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .param p4, "authState"    # Lcom/twitter/sdk/android/core/identity/AuthState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterCore;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;",
            "Lcom/twitter/sdk/android/core/identity/AuthState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "sessionManager":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 79
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authState:Lcom/twitter/sdk/android/core/identity/AuthState;

    .line 80
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 81
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 82
    return-void
.end method

.method private authorizeUsingOAuth(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbackWrapper"    # Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;

    .prologue
    .line 134
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using OAuth"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authState:Lcom/twitter/sdk/android/core/identity/AuthState;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/OAuthHandler;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 136
    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getRequestCode()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/OAuthHandler;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/Callback;I)V

    .line 135
    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/AuthState;->beginAuthorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/AuthHandler;)Z

    move-result v0

    return v0
.end method

.method private authorizeUsingSSO(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbackWrapper"    # Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/twitter/sdk/android/core/identity/SSOAuthHandler;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using SSO"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authState:Lcom/twitter/sdk/android/core/identity/AuthState;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/SSOAuthHandler;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 127
    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getRequestCode()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/SSOAuthHandler;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/Callback;I)V

    .line 126
    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/AuthState;->beginAuthorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/AuthHandler;)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAuthorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "callback":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->scribeAuthorizeImpression()V

    .line 109
    new-instance v0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;-><init>(Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/Callback;)V

    .line 110
    .local v0, "callbackWrapper":Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorizeUsingSSO(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorizeUsingOAuth(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v2, "Authorize failed."

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$CallbackWrapper;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 114
    :cond_0
    return-void
.end method

.method private scribeAuthorizeImpression()V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getScribeClient()Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    move-result-object v1

    .line 141
    .local v1, "scribeClient":Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;
    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v2, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v3, "android"

    .line 144
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, "login"

    .line 145
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, ""

    .line 146
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, ""

    .line 147
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, ""

    .line 148
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, "impression"

    .line 149
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    .line 152
    .local v0, "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    goto :goto_0
.end method

.method private scribeRequestEmail()V
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getScribeClient()Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    move-result-object v1

    .line 210
    .local v1, "scribeClient":Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;
    if-nez v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v2, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v3, "android"

    .line 213
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, "shareemail"

    .line 214
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, ""

    .line 215
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, ""

    .line 216
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, ""

    .line 217
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    const-string v3, "impression"

    .line 218
    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    .line 221
    .local v0, "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    goto :goto_0
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "callback":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-nez p2, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Cannot authorize, activity is finishing."

    const/4 v3, 0x0

    .line 101
    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->handleAuthorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    goto :goto_0
.end method

.method public cancelAuthorize()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authState:Lcom/twitter/sdk/android/core/identity/AuthState;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/AuthState;->endAuthorize()V

    .line 121
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getRequestCode()I

    move-result v0

    return v0
.end method

.method protected getScribeClient()Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/TwitterCoreScribeClientHolder;->getScribeClient()Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v1

    const-string v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult called with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authState:Lcom/twitter/sdk/android/core/identity/AuthState;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/identity/AuthState;->isAuthorizeInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Authorize not in progress"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authState:Lcom/twitter/sdk/android/core/identity/AuthState;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/identity/AuthState;->getAuthHandler()Lcom/twitter/sdk/android/core/identity/AuthHandler;

    move-result-object v0

    .line 170
    .local v0, "authHandler":Lcom/twitter/sdk/android/core/identity/AuthHandler;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/AuthHandler;->handleOnActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authState:Lcom/twitter/sdk/android/core/identity/AuthState;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/identity/AuthState;->endAuthorize()V

    goto :goto_0
.end method

.method public requestEmail(Lcom/twitter/sdk/android/core/TwitterSession;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 5
    .param p1, "session"    # Lcom/twitter/sdk/android/core/TwitterSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 187
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->scribeRequestEmail()V

    .line 188
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v1, p1}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v1

    .line 189
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    .line 191
    .local v0, "verifyRequest":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/twitter/sdk/android/core/models/User;>;"
    new-instance v1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$1;

    invoke-direct {v1, p0, p2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient$1;-><init>(Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;Lcom/twitter/sdk/android/core/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 202
    return-void
.end method
