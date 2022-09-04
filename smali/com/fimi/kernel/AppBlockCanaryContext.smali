.class public Lcom/fimi/kernel/AppBlockCanaryContext;
.super Lcom/github/moduth/blockcanary/BlockCanaryContext;
.source "AppBlockCanaryContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/BlockCanaryContext;-><init>()V

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
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteFilesInWhiteList()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public displayNotification()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public filterNonConcernStack()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onBlock(Landroid/content/Context;Lcom/github/moduth/blockcanary/internal/BlockInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blockInfo"    # Lcom/github/moduth/blockcanary/internal/BlockInfo;

    .prologue
    .line 172
    return-void
.end method

.method public provideBlockThreshold()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x1f4

    return v0
.end method

.method public provideDumpInterval()I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/fimi/kernel/AppBlockCanaryContext;->provideBlockThreshold()I

    move-result v0

    return v0
.end method

.method public provideMonitorDuration()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public provideNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public providePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "/blockcanary/"

    return-object v0
.end method

.method public provideQualifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public provideUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "uid"

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
    .line 151
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 152
    .local v0, "whiteList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v1, "org.chromium"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 153
    return-object v0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1
    .param p1, "zippedFile"    # Ljava/io/File;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zip([Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p1, "src"    # [Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
