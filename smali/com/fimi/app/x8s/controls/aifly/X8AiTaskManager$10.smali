.class Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$10;
.super Ljava/lang/Object;
.source "X8AiTaskManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8TLRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$10;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "showText"    # Z

    .prologue
    .line 796
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$10;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->removeAlls()V

    .line 797
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$10;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskComplete(ZLjava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$10;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$902(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    .line 800
    return-void
.end method

.method public onRunning()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$10;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskRunning()V

    .line 792
    return-void
.end method
