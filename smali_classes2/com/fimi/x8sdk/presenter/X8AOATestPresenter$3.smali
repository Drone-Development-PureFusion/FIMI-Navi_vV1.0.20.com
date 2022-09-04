.class Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;
.super Ljava/lang/Object;
.source "X8AOATestPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->sendContent(Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    iput-object p2, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->val$content:Ljava/lang/String;

    iput-wide p3, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 110
    :cond_0
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    new-instance v2, Lcom/fimi/x8sdk/command/AoaTestColletion;

    invoke-direct {v2}, Lcom/fimi/x8sdk/command/AoaTestColletion;-><init>()V

    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->val$content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/command/AoaTestColletion;->getTestContent(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 111
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->val$content:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->access$102(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;J)J

    .line 112
    iget-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->val$time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 114
    :try_start_0
    iget-wide v2, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->val$time:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
