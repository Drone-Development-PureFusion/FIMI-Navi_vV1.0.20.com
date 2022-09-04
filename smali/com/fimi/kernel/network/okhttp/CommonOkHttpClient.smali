.class public Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;
.super Ljava/lang/Object;
.source "CommonOkHttpClient.java"


# static fields
.field private static final TIME_OUT:I = 0x1e

.field private static mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1e

    .line 34
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 35
    .local v0, "okHttpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient$1;

    invoke-direct {v1}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient$1;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 45
    new-instance v1, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient$2;

    invoke-direct {v1}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient$2;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 55
    new-instance v1, Lcom/fimi/kernel/network/okhttp/cookie/SimpleCookieJar;

    invoke-direct {v1}, Lcom/fimi/kernel/network/okhttp/cookie/SimpleCookieJar;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 56
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 57
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 63
    invoke-static {}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils;->initSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils;->initTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 64
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFile(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;
    .locals 2
    .param p0, "request"    # Lokhttp3/Request;
    .param p1, "handle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 99
    sget-object v1, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 100
    .local v0, "call":Lokhttp3/Call;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

    invoke-direct {v1, p1}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 101
    return-object v0
.end method

.method public static get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;
    .locals 2
    .param p0, "request"    # Lokhttp3/Request;
    .param p1, "handle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 87
    sget-object v1, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 88
    .local v0, "call":Lokhttp3/Call;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    invoke-direct {v1, p1}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 89
    return-object v0
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static getUrl(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;
    .locals 3
    .param p0, "request"    # Lokhttp3/Request;
    .param p1, "handle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 105
    sget-object v1, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 106
    .local v0, "call":Lokhttp3/Call;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;Z)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 107
    return-object v0
.end method

.method public static post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;
    .locals 2
    .param p0, "request"    # Lokhttp3/Request;
    .param p1, "handle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 93
    sget-object v1, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 94
    .local v0, "call":Lokhttp3/Call;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    invoke-direct {v1, p1}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 95
    return-object v0
.end method

.method public static postUrl(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;
    .locals 3
    .param p0, "request"    # Lokhttp3/Request;
    .param p1, "handle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 111
    sget-object v1, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 112
    .local v0, "call":Lokhttp3/Call;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;Z)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 113
    return-object v0
.end method
