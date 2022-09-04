.class final Lcom/github/moduth/blockcanary/LogWriter$1;
.super Ljava/lang/Object;
.source "LogWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/LogWriter;->cleanObsolete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 69
    .local v2, "now":J
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getLogFiles()[Ljava/io/File;

    move-result-object v1

    .line 70
    .local v1, "f":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v4, v1

    if-lez v4, :cond_2

    .line 71
    invoke-static {}, Lcom/github/moduth/blockcanary/LogWriter;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 72
    :try_start_0
    array-length v6, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v1, v4

    .line 73
    .local v0, "aF":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0xa4cb800

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "aF":Ljava/io/File;
    :cond_1
    monitor-exit v5

    .line 79
    :cond_2
    return-void

    .line 77
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
