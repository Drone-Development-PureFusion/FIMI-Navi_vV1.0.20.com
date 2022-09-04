.class Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;
.super Ljava/lang/Object;
.source "BlockCanaryInternals.java"

# interfaces
.implements Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/BlockCanaryInternals;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/BlockCanaryInternals;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/BlockCanaryInternals;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;->this$0:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockEvent(JJJJ)V
    .locals 17
    .param p1, "realTimeStart"    # J
    .param p3, "realTimeEnd"    # J
    .param p5, "threadTimeStart"    # J
    .param p7, "threadTimeEnd"    # J

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;->this$0:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    iget-object v5, v5, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->stackSampler:Lcom/github/moduth/blockcanary/StackSampler;

    .line 55
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/github/moduth/blockcanary/StackSampler;->getThreadStackEntries(JJ)Ljava/util/ArrayList;

    move-result-object v15

    .line 56
    .local v15, "threadStackEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    invoke-static {}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->newInstance()Lcom/github/moduth/blockcanary/internal/BlockInfo;

    move-result-object v5

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    .line 58
    invoke-virtual/range {v5 .. v13}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->setMainThreadTimeCost(JJJJ)Lcom/github/moduth/blockcanary/internal/BlockInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;->this$0:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    iget-object v6, v6, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

    .line 59
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/github/moduth/blockcanary/CpuSampler;->isCpuBusy(JJ)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->setCpuBusyFlag(Z)Lcom/github/moduth/blockcanary/internal/BlockInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;->this$0:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    iget-object v6, v6, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

    .line 60
    invoke-virtual {v6}, Lcom/github/moduth/blockcanary/CpuSampler;->getCpuRateInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->setRecentCpuRate(Ljava/lang/String;)Lcom/github/moduth/blockcanary/internal/BlockInfo;

    move-result-object v5

    .line 61
    invoke-virtual {v5, v15}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->setThreadStackEntries(Ljava/util/ArrayList;)Lcom/github/moduth/blockcanary/internal/BlockInfo;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->flushString()Lcom/github/moduth/blockcanary/internal/BlockInfo;

    move-result-object v4

    .line 63
    .local v4, "blockInfo":Lcom/github/moduth/blockcanary/internal/BlockInfo;
    invoke-virtual {v4}, Lcom/github/moduth/blockcanary/internal/BlockInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/github/moduth/blockcanary/LogWriter;->save(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;->this$0:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    invoke-static {v5}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->access$000(Lcom/github/moduth/blockcanary/BlockCanaryInternals;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;->this$0:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    invoke-static {v5}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->access$000(Lcom/github/moduth/blockcanary/BlockCanaryInternals;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/moduth/blockcanary/BlockInterceptor;

    .line 67
    .local v14, "interceptor":Lcom/github/moduth/blockcanary/BlockInterceptor;
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v14, v6, v4}, Lcom/github/moduth/blockcanary/BlockInterceptor;->onBlock(Landroid/content/Context;Lcom/github/moduth/blockcanary/internal/BlockInfo;)V

    goto :goto_0

    .line 71
    .end local v4    # "blockInfo":Lcom/github/moduth/blockcanary/internal/BlockInfo;
    .end local v14    # "interceptor":Lcom/github/moduth/blockcanary/BlockInterceptor;
    :cond_0
    return-void
.end method
