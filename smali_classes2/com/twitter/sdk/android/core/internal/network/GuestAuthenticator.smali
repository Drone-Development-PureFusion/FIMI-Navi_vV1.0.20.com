.class public Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;
.super Ljava/lang/Object;
.source "GuestAuthenticator.java"

# interfaces
.implements Lokhttp3/Authenticator;


# static fields
.field static final MAX_RETRIES:I = 0x2


# instance fields
.field final guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/GuestSessionProvider;)V
    .locals 0
    .param p1, "guestSessionProvider"    # Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 42
    return-void
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1
    .param p1, "route"    # Lokhttp3/Route;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->reauth(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method canRetry(Lokhttp3/Response;)Z
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 83
    const/4 v0, 0x1

    .line 84
    .local v0, "responseCount":I
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getExpiredSession(Lokhttp3/Response;)Lcom/twitter/sdk/android/core/GuestSession;
    .locals 7
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 63
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    .line 64
    .local v2, "headers":Lokhttp3/Headers;
    const-string v4, "Authorization"

    invoke-virtual {v2, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "auth":Ljava/lang/String;
    const-string v4, "x-guest-token"

    invoke-virtual {v2, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "guest":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 68
    new-instance v3, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    const-string v4, "bearer"

    const-string v5, "bearer "

    const-string v6, ""

    .line 69
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v3, "token":Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;
    new-instance v4, Lcom/twitter/sdk/android/core/GuestSession;

    invoke-direct {v4, v3}, Lcom/twitter/sdk/android/core/GuestSession;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 73
    .end local v3    # "token":Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method reauth(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 5
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->canRetry(Lokhttp3/Response;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 52
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->getExpiredSession(Lokhttp3/Response;)Lcom/twitter/sdk/android/core/GuestSession;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/twitter/sdk/android/core/GuestSessionProvider;->refreshCurrentSession(Lcom/twitter/sdk/android/core/GuestSession;)Lcom/twitter/sdk/android/core/GuestSession;

    move-result-object v0

    .line 53
    .local v0, "session":Lcom/twitter/sdk/android/core/GuestSession;
    if-nez v0, :cond_0

    move-object v1, v3

    .line 54
    .local v1, "token":Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;
    :goto_0
    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->resign(Lokhttp3/Request;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Lokhttp3/Request;

    move-result-object v2

    .line 59
    .end local v0    # "session":Lcom/twitter/sdk/android/core/GuestSession;
    .end local v1    # "token":Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;
    :goto_1
    return-object v2

    .line 53
    .restart local v0    # "session":Lcom/twitter/sdk/android/core/GuestSession;
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/GuestSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    move-object v1, v2

    goto :goto_0

    .end local v0    # "session":Lcom/twitter/sdk/android/core/GuestSession;
    :cond_1
    move-object v2, v3

    .line 59
    goto :goto_1
.end method

.method resign(Lokhttp3/Request;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Lokhttp3/Request;
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "token"    # Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    .prologue
    .line 77
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 78
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-static {v0, p2}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;->addAuthHeaders(Lokhttp3/Request$Builder;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 79
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1
.end method
