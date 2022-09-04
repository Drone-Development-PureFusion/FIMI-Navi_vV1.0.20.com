.class public Lcom/github/moduth/blockcanary/BlockCanaryContext;
.super Ljava/lang/Object;
.source "BlockCanaryContext.java"

# interfaces
.implements Lcom/github/moduth/blockcanary/BlockInterceptor;


# static fields
.field private static sApplicationContext:Landroid/content/Context;

.field private static sInstance:Lcom/github/moduth/blockcanary/BlockCanaryContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static get()Lcom/github/moduth/blockcanary/BlockCanaryContext;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BlockCanaryContext null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    return-object v0
.end method

.method static init(Landroid/content/Context;Lcom/github/moduth/blockcanary/BlockCanaryContext;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockCanaryContext"    # Lcom/github/moduth/blockcanary/BlockCanaryContext;

    .prologue
    .line 38
    sput-object p0, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sApplicationContext:Landroid/content/Context;

    .line 39
    sput-object p1, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    .line 40
    return-void
.end method


# virtual methods
.method public concernPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteFilesInWhiteList()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public displayNotification()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public filterNonConcernStack()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public onBlock(Landroid/content/Context;Lcom/github/moduth/blockcanary/internal/BlockInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blockInfo"    # Lcom/github/moduth/blockcanary/internal/BlockInfo;

    .prologue
    .line 201
    return-void
.end method

.method public provideBlockThreshold()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x3e8

    return v0
.end method

.method public provideContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public provideDumpInterval()I
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideBlockThreshold()I

    move-result v0

    return v0
.end method

.method public provideMonitorDuration()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x1

    return v0
.end method

.method public provideNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "unknown"

    return-object v0
.end method

.method public providePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "/blockcanary/"

    return-object v0
.end method

.method public provideQualifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "unknown"

    return-object v0
.end method

.method public provideUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "uid"

    return-object v0
.end method

.method public provideWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 182
    .local v0, "whiteList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v1, "org.chromium"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    return-object v0
.end method

.method public stopWhenDebugging()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1
    .param p1, "zippedFile"    # Ljava/io/File;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zip([Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p1, "src"    # [Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method
