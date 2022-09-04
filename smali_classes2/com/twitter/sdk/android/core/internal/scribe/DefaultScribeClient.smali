.class public Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;
.super Lcom/twitter/sdk/android/core/internal/scribe/ScribeClient;
.source "DefaultScribeClient.java"


# static fields
.field private static final DEBUG_BUILD:Ljava/lang/String; = "debug"

.field private static final SCRIBE_PATH_TYPE:Ljava/lang/String; = "sdk"

.field private static final SCRIBE_PATH_VERSION:Ljava/lang/String; = "i"

.field private static final SCRIBE_URL:Ljava/lang/String; = "https://syndication.twitter.com"

.field private static volatile executor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

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
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lcom/twitter/sdk/android/core/internal/IdManager;Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "guestSessionProvider"    # Lcom/twitter/sdk/android/core/GuestSessionProvider;
    .param p4, "idManager"    # Lcom/twitter/sdk/android/core/internal/IdManager;
    .param p5, "scribeConfig"    # Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<+",
            "Lcom/twitter/sdk/android/core/Session",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/GuestSessionProvider;",
            "Lcom/twitter/sdk/android/core/internal/IdManager;",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "sessionManager":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<+Lcom/twitter/sdk/android/core/Session<Lcom/twitter/sdk/android/core/TwitterAuthToken;>;>;"
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lcom/twitter/sdk/android/core/internal/IdManager;Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;)V

    .line 68
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lcom/twitter/sdk/android/core/internal/IdManager;Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .param p4, "guestSessionProvider"    # Lcom/twitter/sdk/android/core/GuestSessionProvider;
    .param p5, "idManager"    # Lcom/twitter/sdk/android/core/internal/IdManager;
    .param p6, "scribeConfig"    # Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<+",
            "Lcom/twitter/sdk/android/core/Session",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/GuestSessionProvider;",
            "Lcom/twitter/sdk/android/core/internal/IdManager;",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "sessionManager":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<+Lcom/twitter/sdk/android/core/Session<Lcom/twitter/sdk/android/core/TwitterAuthToken;>;>;"
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v4, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent$Transform;

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent$Transform;-><init>(Lcom/google/gson/Gson;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent$Transform;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lcom/twitter/sdk/android/core/internal/IdManager;)V

    .line 77
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->context:Landroid/content/Context;

    .line 78
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 79
    invoke-virtual {p5}, Lcom/twitter/sdk/android/core/internal/IdManager;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->advertisingId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private static getExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 147
    const-class v1, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "scribe"

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getGson()Lcom/google/gson/Gson;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScribeConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;
    .locals 9
    .param p0, "kitName"    # Ljava/lang/String;
    .param p1, "kitVersion"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "https://syndication.twitter.com"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getScribeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "scribeUrl":Ljava/lang/String;
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->isEnabled()Z

    move-result v1

    const-string v3, "i"

    const-string v4, "sdk"

    const-string v5, ""

    .line 159
    invoke-static {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x64

    const/16 v8, 0x258

    invoke-direct/range {v0 .. v8}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 158
    return-object v0
.end method

.method static getScribeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "defaultUrl"    # Ljava/lang/String;
    .param p1, "overrideUrl"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    .end local p1    # "overrideUrl":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "overrideUrl":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method static getUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "kitName"    # Ljava/lang/String;
    .param p1, "kitVersion"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterKit/"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3.0"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Android "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method private static isEnabled()Z
    .locals 2

    .prologue
    .line 169
    const-string v0, "release"

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getActiveSession()Lcom/twitter/sdk/android/core/Session;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    return-object v0
.end method

.method getScribeSessionId(Lcom/twitter/sdk/android/core/Session;)J
    .locals 2
    .param p1, "activeSession"    # Lcom/twitter/sdk/android/core/Session;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/Session;->getId()J

    move-result-wide v0

    .line 132
    .local v0, "scribeSessionId":J
    :goto_0
    return-wide v0

    .line 130
    .end local v0    # "scribeSessionId":J
    :cond_0
    const-wide/16 v0, 0x0

    .restart local v0    # "scribeSessionId":J
    goto :goto_0
.end method

.method public scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/lang/String;)V
    .locals 7
    .param p1, "namespace"    # Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .param p2, "eventInfo"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "language":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 112
    .local v2, "timestamp":J
    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->advertisingId:Ljava/lang/String;

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    .line 112
    invoke-static/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEventFactory;->newScribeEvent(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;)V

    .line 114
    return-void
.end method

.method public scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V
    .locals 7
    .param p1, "namespace"    # Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "language":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    .local v2, "timestamp":J
    const-string v1, ""

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->advertisingId:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEventFactory;->newScribeEvent(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;)V

    .line 98
    return-void
.end method

.method public scribe(Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getScribeSessionId(Lcom/twitter/sdk/android/core/Session;)J

    move-result-wide v0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;J)Z

    .line 102
    return-void
.end method

.method public varargs scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V
    .locals 4
    .param p1, "namespaces"    # [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    .prologue
    .line 83
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 84
    .local v0, "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    :cond_0
    return-void
.end method
