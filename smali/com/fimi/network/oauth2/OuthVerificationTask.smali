.class public Lcom/fimi/network/oauth2/OuthVerificationTask;
.super Ljava/lang/Object;
.source "OuthVerificationTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken(Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v1, Lcom/fimi/network/oauth2/OAuthClientRequest;

    invoke-direct {v1}, Lcom/fimi/network/oauth2/OAuthClientRequest;-><init>()V

    .line 63
    .local v1, "oAuthClientRequest":Lcom/fimi/network/oauth2/OAuthClientRequest;
    const-string v4, "899e5ab3bcaa282bebc9b404a53e9f96"

    invoke-virtual {v1, v4}, Lcom/fimi/network/oauth2/OAuthClientRequest;->setClientId(Ljava/lang/String;)V

    .line 64
    const-string v4, "http://www.fimi.com"

    invoke-virtual {v1, v4}, Lcom/fimi/network/oauth2/OAuthClientRequest;->setRedirectURI(Ljava/lang/String;)V

    .line 65
    const-string v4, "f9008527f94effde666ba7c9e68bdb33"

    invoke-virtual {v1, v4}, Lcom/fimi/network/oauth2/OAuthClientRequest;->setClientSecret(Ljava/lang/String;)V

    .line 66
    const-string v4, "authorization_code"

    invoke-virtual {v1, v4}, Lcom/fimi/network/oauth2/OAuthClientRequest;->setGrantType(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, p1}, Lcom/fimi/network/oauth2/OAuthClientRequest;->setCode(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v2}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 69
    .local v2, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v4, "client_id"

    invoke-virtual {v1}, Lcom/fimi/network/oauth2/OAuthClientRequest;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "redirect_uri"

    invoke-virtual {v1}, Lcom/fimi/network/oauth2/OAuthClientRequest;->getRedirectURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v4, "client_secret"

    invoke-virtual {v1}, Lcom/fimi/network/oauth2/OAuthClientRequest;->getClientSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v4, "grant_type"

    invoke-virtual {v1}, Lcom/fimi/network/oauth2/OAuthClientRequest;->getGrantType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v4, "code"

    invoke-virtual {v2, v4, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 75
    .local v0, "headers":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "v1/oauth/accessToken"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3, v2, v0}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostOriginalRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v4

    new-instance v5, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v6, Lcom/fimi/network/oauth2/OuthVerificationTask$2;

    invoke-direct {v6, p0}, Lcom/fimi/network/oauth2/OuthVerificationTask$2;-><init>(Lcom/fimi/network/oauth2/OuthVerificationTask;)V

    invoke-direct {v5, v6}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-static {v4, v5}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->postUrl(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 100
    return-void
.end method

.method public getAuthorizationCode(Lcom/fimi/network/oauth2/CallBackListner;)V
    .locals 6
    .param p1, "backListner"    # Lcom/fimi/network/oauth2/CallBackListner;

    .prologue
    .line 28
    new-instance v0, Lcom/fimi/network/oauth2/OAuthClientRequest;

    invoke-direct {v0}, Lcom/fimi/network/oauth2/OAuthClientRequest;-><init>()V

    .line 29
    .local v0, "oAuthClientRequest":Lcom/fimi/network/oauth2/OAuthClientRequest;
    const-string v3, "899e5ab3bcaa282bebc9b404a53e9f96"

    invoke-virtual {v0, v3}, Lcom/fimi/network/oauth2/OAuthClientRequest;->setClientId(Ljava/lang/String;)V

    .line 30
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lcom/fimi/network/oauth2/OAuthClientRequest;->setResponseType(Ljava/lang/String;)V

    .line 31
    const-string v3, "http://www.fimi.com"

    invoke-virtual {v0, v3}, Lcom/fimi/network/oauth2/OAuthClientRequest;->setRedirectURI(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 33
    .local v1, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v3, "client_id"

    invoke-virtual {v0}, Lcom/fimi/network/oauth2/OAuthClientRequest;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v3, "response_type"

    invoke-virtual {v0}, Lcom/fimi/network/oauth2/OAuthClientRequest;->getResponseType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v3, "redirect_uri"

    invoke-virtual {v0}, Lcom/fimi/network/oauth2/OAuthClientRequest;->getRedirectURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "v1/oauth/authorize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetOriginalRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v3

    new-instance v4, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v5, Lcom/fimi/network/oauth2/OuthVerificationTask$1;

    invoke-direct {v5, p0, p1}, Lcom/fimi/network/oauth2/OuthVerificationTask$1;-><init>(Lcom/fimi/network/oauth2/OuthVerificationTask;Lcom/fimi/network/oauth2/CallBackListner;)V

    invoke-direct {v4, v5}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-static {v3, v4}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->getUrl(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 54
    return-void
.end method
