.class Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;
.super Ljava/lang/Object;
.source "X8AiTaskManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;


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
    .line 589
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiScrewBackClick()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskBack()V

    .line 594
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->removeAlls()V

    .line 595
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$502(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .line 597
    return-void
.end method

.method public onAiScrewComplete(Z)V
    .locals 3
    .param p1, "showText"    # Z

    .prologue
    .line 606
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->removeAlls()V

    .line 607
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_screw_complete:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskComplete(ZLjava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$502(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .line 610
    return-void
.end method

.method public onAiScrewRunning()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskRunning()V

    .line 602
    return-void
.end method
