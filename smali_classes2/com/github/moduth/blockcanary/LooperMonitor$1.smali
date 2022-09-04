.class Lcom/github/moduth/blockcanary/LooperMonitor$1;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/LooperMonitor;->notifyBlockEvent(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/LooperMonitor;

.field final synthetic val$endThreadTime:J

.field final synthetic val$endTime:J

.field final synthetic val$startThreadTime:J

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/LooperMonitor;JJJJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/LooperMonitor;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->this$0:Lcom/github/moduth/blockcanary/LooperMonitor;

    iput-wide p2, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->val$startTime:J

    iput-wide p4, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->val$endTime:J

    iput-wide p6, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->val$startThreadTime:J

    iput-wide p8, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->val$endThreadTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 80
    iget-object v0, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->this$0:Lcom/github/moduth/blockcanary/LooperMonitor;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/LooperMonitor;->access$000(Lcom/github/moduth/blockcanary/LooperMonitor;)Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;

    move-result-object v1

    iget-wide v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->val$startTime:J

    iget-wide v4, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->val$endTime:J

    iget-wide v6, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->val$startThreadTime:J

    iget-wide v8, p0, Lcom/github/moduth/blockcanary/LooperMonitor$1;->val$endThreadTime:J

    invoke-interface/range {v1 .. v9}, Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;->onBlockEvent(JJJJ)V

    .line 81
    return-void
.end method
