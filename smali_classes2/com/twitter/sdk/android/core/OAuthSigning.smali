.class public Lcom/twitter/sdk/android/core/OAuthSigning;
.super Ljava/lang/Object;
.source "OAuthSigning.java"


# static fields
.field static final VERIFY_CREDENTIALS_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/account/verify_credentials.json"


# instance fields
.field final authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field final oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;)V
    .locals 1
    .param p1, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .param p2, "authToken"    # Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .prologue
    .line 43
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/OAuthSigning;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;)V

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;)V
    .locals 2
    .param p1, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .param p2, "authToken"    # Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .param p3, "oAuth1aHeaders"    # Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authConfig must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 56
    iput-object p2, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 57
    iput-object p3, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    .line 58
    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;->getAuthorizationHeader(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthEchoHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;->getOAuthEchoHeaders(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthEchoHeadersForVerifyCredentials()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const-string v4, "GET"

    const-string v5, "https://api.twitter.com/1.1/account/verify_credentials.json"

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;->getOAuthEchoHeaders(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
