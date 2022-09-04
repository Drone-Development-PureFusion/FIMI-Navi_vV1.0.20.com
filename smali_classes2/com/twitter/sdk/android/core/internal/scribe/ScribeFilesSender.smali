.class Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.super Ljava/lang/Object;
.source "ScribeFilesSender.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/scribe/FilesSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ConfigRequestInterceptor;,
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    }
.end annotation


# static fields
.field private static final COMMA:[B

.field private static final END_JSON_ARRAY:[B

.field private static final SEND_FILE_FAILURE_ERROR:Ljava/lang/String; = "Failed sending files"

.field private static final START_JSON_ARRAY:[B


# instance fields
.field private final authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final context:Landroid/content/Context;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

.field private final idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

.field private final ownerId:J

.field private final scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

.field private final scribeService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<+",
            "Lcom/twitter/sdk/android/core/Session",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v3, [B

    const/16 v1, 0x5b

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->START_JSON_ARRAY:[B

    .line 66
    new-array v0, v3, [B

    const/16 v1, 0x2c

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->COMMA:[B

    .line 70
    new-array v0, v3, [B

    const/16 v1, 0x5d

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->END_JSON_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/IdManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scribeConfig"    # Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;
    .param p3, "ownerId"    # J
    .param p5, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .param p7, "guestSessionProvider"    # Lcom/twitter/sdk/android/core/GuestSessionProvider;
    .param p8, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p9, "idManager"    # Lcom/twitter/sdk/android/core/internal/IdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;",
            "J",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<+",
            "Lcom/twitter/sdk/android/core/Session",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/GuestSessionProvider;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/IdManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p6, "sessionManager":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<+Lcom/twitter/sdk/android/core/Session<Lcom/twitter/sdk/android/core/TwitterAuthToken;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->context:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    .line 89
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->ownerId:J

    .line 90
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 91
    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 92
    iput-object p7, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 93
    iput-object p8, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 94
    iput-object p9, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->COMMA:[B

    return-object v0
.end method

.method private getSession(J)Lcom/twitter/sdk/android/core/Session;
    .locals 1
    .param p1, "ownerId"    # J

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v0, p1, p2}, Lcom/twitter/sdk/android/core/SessionManager;->getSession(J)Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    return-object v0
.end method

.method private hasApiAdapter()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->getScribeService()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSession(Lcom/twitter/sdk/android/core/Session;)Z
    .locals 1
    .param p1, "session"    # Lcom/twitter/sdk/android/core/Session;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/Session;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getScribeEventsAsJsonArrayString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 126
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x1

    new-array v0, v5, [Z

    .line 127
    .local v0, "appendComma":[Z
    sget-object v5, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->START_JSON_ARRAY:[B

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 129
    .local v1, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 131
    .local v3, "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    :try_start_0
    new-instance v4, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;

    invoke-direct {v4, v1}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v3    # "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    .local v4, "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    :try_start_1
    new-instance v6, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$1;

    invoke-direct {v6, p0, v0, v2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$1;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;[ZLjava/io/ByteArrayOutputStream;)V

    invoke-virtual {v4, v6}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;->forEach(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4    # "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    .restart local v3    # "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-static {v3}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 151
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    :cond_0
    sget-object v5, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->END_JSON_ARRAY:[B

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 153
    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 148
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    .restart local v3    # "qf":Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    goto :goto_1
.end method

.method declared-synchronized getScribeService()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    .locals 7

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 175
    iget-wide v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->ownerId:J

    invoke-direct {p0, v4, v5}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->getSession(J)Lcom/twitter/sdk/android/core/Session;

    move-result-object v2

    .line 177
    .local v2, "session":Lcom/twitter/sdk/android/core/Session;
    invoke-direct {p0, v2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->isValidSession(Lcom/twitter/sdk/android/core/Session;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 179
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/network/OkHttpClientHelper;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ConfigRequestInterceptor;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    iget-object v6, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

    invoke-direct {v4, v5, v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ConfigRequestInterceptor;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;Lcom/twitter/sdk/android/core/internal/IdManager;)V

    .line 180
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/twitter/sdk/android/core/internal/network/OAuth1aInterceptor;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v4, v2, v5}, Lcom/twitter/sdk/android/core/internal/network/OAuth1aInterceptor;-><init>(Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    .line 181
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 191
    .local v0, "client":Lokhttp3/OkHttpClient;
    :goto_0
    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;->baseUrl:Ljava/lang/String;

    .line 192
    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 193
    invoke-virtual {v3, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 194
    invoke-virtual {v3}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 196
    .local v1, "retrofit":Lretrofit2/Retrofit;
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    const-class v5, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    invoke-virtual {v1, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v1    # "retrofit":Lretrofit2/Retrofit;
    .end local v2    # "session":Lcom/twitter/sdk/android/core/Session;
    :cond_0
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 184
    .restart local v2    # "session":Lcom/twitter/sdk/android/core/Session;
    :cond_1
    :try_start_1
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 185
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/network/OkHttpClientHelper;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ConfigRequestInterceptor;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    iget-object v6, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

    invoke-direct {v4, v5, v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ConfigRequestInterceptor;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;Lcom/twitter/sdk/android/core/internal/IdManager;)V

    .line 186
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    invoke-direct {v4, v5}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;-><init>(Lcom/twitter/sdk/android/core/GuestSessionProvider;)V

    .line 187
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "client":Lokhttp3/OkHttpClient;
    goto :goto_0

    .line 174
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v2    # "session":Lcom/twitter/sdk/android/core/Session;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public send(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v3, 0x1

    .line 100
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->hasApiAdapter()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->getScribeEventsAsJsonArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "scribeEvents":Ljava/lang/String;
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->upload(Ljava/lang/String;)Lretrofit2/Response;

    move-result-object v1

    .line 106
    .local v1, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 121
    .end local v1    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v2    # "scribeEvents":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 109
    .restart local v1    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .restart local v2    # "scribeEvents":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->context:Landroid/content/Context;

    const-string v5, "Failed sending files"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_0

    .line 111
    invoke-virtual {v1}, Lretrofit2/Response;->code()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0x190

    if-eq v4, v5, :cond_0

    .line 121
    .end local v1    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v2    # "scribeEvents":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->context:Landroid/content/Context;

    const-string v4, "Failed sending files"

    invoke-static {v3, v4, v0}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->context:Landroid/content/Context;

    const-string v4, "Cannot attempt upload at this time"

    invoke-static {v3, v4}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method setScribeService(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;)V
    .locals 1
    .param p1, "restAdapter"    # Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method upload(Ljava/lang/String;)Lretrofit2/Response;
    .locals 3
    .param p1, "scribeEvents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Response",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->getScribeService()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    move-result-object v0

    .line 215
    .local v0, "service":Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;->sequence:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;->sequence:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->uploadSequence(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;->pathVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->scribeConfig:Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;->pathType:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 219
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    goto :goto_0
.end method
