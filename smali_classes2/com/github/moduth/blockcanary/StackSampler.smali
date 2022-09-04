.class Lcom/github/moduth/blockcanary/StackSampler;
.super Lcom/github/moduth/blockcanary/AbstractSampler;
.source "StackSampler.java"


# static fields
.field private static final DEFAULT_MAX_ENTRY_COUNT:I = 0x64

.field private static final sStackMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentThread:Ljava/lang/Thread;

.field private mMaxEntryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;IJ)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "maxEntryCount"    # I
    .param p3, "sampleIntervalMillis"    # J

    .prologue
    .line 39
    invoke-direct {p0, p3, p4}, Lcom/github/moduth/blockcanary/AbstractSampler;-><init>(J)V

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/moduth/blockcanary/StackSampler;->mMaxEntryCount:I

    .line 40
    iput-object p1, p0, Lcom/github/moduth/blockcanary/StackSampler;->mCurrentThread:Ljava/lang/Thread;

    .line 41
    iput p2, p0, Lcom/github/moduth/blockcanary/StackSampler;->mMaxEntryCount:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;J)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "sampleIntervalMillis"    # J

    .prologue
    .line 35
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/github/moduth/blockcanary/StackSampler;-><init>(Ljava/lang/Thread;IJ)V

    .line 36
    return-void
.end method


# virtual methods
.method protected doSample()V
    .locals 7

    .prologue
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/github/moduth/blockcanary/StackSampler;->mCurrentThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 65
    .local v0, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    sget-object v3, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 70
    :try_start_0
    sget-object v2, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    iget v4, p0, Lcom/github/moduth/blockcanary/StackSampler;->mMaxEntryCount:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/github/moduth/blockcanary/StackSampler;->mMaxEntryCount:I

    if-lez v2, :cond_1

    .line 71
    sget-object v2, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    sget-object v4, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    sget-object v2, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    monitor-exit v3

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getThreadStackEntries(JJ)Ljava/util/ArrayList;
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 47
    :try_start_0
    sget-object v2, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 48
    .local v0, "entryTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, p1, v6

    if-gez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, p3

    if-gez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/github/moduth/blockcanary/internal/BlockInfo;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/github/moduth/blockcanary/StackSampler;->sStackMap:Ljava/util/LinkedHashMap;

    .line 52
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "entryTime":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    return-object v1
.end method
