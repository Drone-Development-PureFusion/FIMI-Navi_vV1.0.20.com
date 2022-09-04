.class public Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;
.super Ljava/lang/Object;
.source "GuestAuthInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field final guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/GuestSessionProvider;)V
    .locals 0
    .param p1, "guestSessionProvider"    # Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 39
    return-void
.end method

.method static addAuthHeaders(Lokhttp3/Request$Builder;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V
    .locals 3
    .param p0, "builder"    # Lokhttp3/Request$Builder;
    .param p1, "token"    # Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    .prologue
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->getTokenType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "authHeader":Ljava/lang/String;
    const-string v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 60
    const-string v1, "x-guest-token"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->getGuestToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 61
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 45
    .local v1, "request":Lokhttp3/Request;
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/GuestSessionProvider;->getCurrentSession()Lcom/twitter/sdk/android/core/GuestSession;

    move-result-object v2

    .line 46
    .local v2, "session":Lcom/twitter/sdk/android/core/GuestSession;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 47
    .local v3, "token":Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;
    :goto_0
    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 49
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-static {v0, v3}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;->addAuthHeaders(Lokhttp3/Request$Builder;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 50
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    .line 53
    .end local v0    # "builder":Lokhttp3/Request$Builder;
    :goto_1
    return-object v4

    .line 46
    .end local v3    # "token":Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;
    :cond_0
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/GuestSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v4

    check-cast v4, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    move-object v3, v4

    goto :goto_0

    .line 53
    .restart local v3    # "token":Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;
    :cond_1
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    goto :goto_1
.end method
