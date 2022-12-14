.class public Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;
.super Ljava/lang/Object;
.source "TwitterSessionVerifier.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/SessionVerifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/SessionVerifier",
        "<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# static fields
.field static final SCRIBE_ACTION:Ljava/lang/String; = "impression"

.field static final SCRIBE_CLIENT:Ljava/lang/String; = "android"

.field static final SCRIBE_COMPONENT:Ljava/lang/String; = ""

.field static final SCRIBE_ELEMENT:Ljava/lang/String; = ""

.field static final SCRIBE_PAGE:Ljava/lang/String; = "credentials"

.field static final SCRIBE_SECTION:Ljava/lang/String; = ""


# instance fields
.field private final accountServiceProvider:Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;

.field private final scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->accountServiceProvider:Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;

    .line 41
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/TwitterCoreScribeClientHolder;->getScribeClient()Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;)V
    .locals 0
    .param p1, "accountServiceProvider"    # Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;
    .param p2, "scribeClient"    # Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->accountServiceProvider:Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;

    .line 47
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    .line 48
    return-void
.end method

.method private scribeVerifySession()V
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;-><init>()V

    const-string v2, "android"

    .line 71
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setClient(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    const-string v2, "credentials"

    .line 72
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setPage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    const-string v2, ""

    .line 73
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setSection(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    const-string v2, ""

    .line 74
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    const-string v2, ""

    .line 75
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    const-string v2, "impression"

    .line 76
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    .line 79
    .local v0, "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic verifySession(Lcom/twitter/sdk/android/core/Session;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->verifySession(Lcom/twitter/sdk/android/core/TwitterSession;)V

    return-void
.end method

.method public verifySession(Lcom/twitter/sdk/android/core/TwitterSession;)V
    .locals 4
    .param p1, "session"    # Lcom/twitter/sdk/android/core/TwitterSession;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->accountServiceProvider:Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;

    invoke-virtual {v1, p1}, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier$AccountServiceProvider;->getAccountService(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    .line 58
    .local v0, "accountService":Lcom/twitter/sdk/android/core/services/AccountService;
    :try_start_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/TwitterSessionVerifier;->scribeVerifySession()V

    .line 59
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
