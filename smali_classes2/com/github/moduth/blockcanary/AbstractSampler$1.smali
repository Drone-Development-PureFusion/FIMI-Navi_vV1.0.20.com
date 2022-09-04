.class Lcom/github/moduth/blockcanary/AbstractSampler$1;
.super Ljava/lang/Object;
.source "AbstractSampler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/moduth/blockcanary/AbstractSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/AbstractSampler;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/AbstractSampler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/AbstractSampler;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/github/moduth/blockcanary/AbstractSampler$1;->this$0:Lcom/github/moduth/blockcanary/AbstractSampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler$1;->this$0:Lcom/github/moduth/blockcanary/AbstractSampler;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/AbstractSampler;->doSample()V

    .line 35
    iget-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler$1;->this$0:Lcom/github/moduth/blockcanary/AbstractSampler;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/AbstractSampler$1;->this$0:Lcom/github/moduth/blockcanary/AbstractSampler;

    .line 37
    invoke-static {v1}, Lcom/github/moduth/blockcanary/AbstractSampler;->access$000(Lcom/github/moduth/blockcanary/AbstractSampler;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/github/moduth/blockcanary/AbstractSampler$1;->this$0:Lcom/github/moduth/blockcanary/AbstractSampler;

    iget-wide v2, v2, Lcom/github/moduth/blockcanary/AbstractSampler;->mSampleInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    :cond_0
    return-void
.end method
