.class Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;
.super Ljava/lang/Object;
.source "X8AiTaskManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;


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
    .line 748
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineBackClick()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskBack()V

    .line 753
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->removeAlls()V

    .line 754
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$802(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .line 755
    return-void
.end method

.method public onLineComplete(Z)V
    .locals 3
    .param p1, "showText"    # Z

    .prologue
    .line 764
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->removeAlls()V

    .line 765
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_compelete_tip:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskComplete(ZLjava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$802(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .line 767
    return-void
.end method

.method public onLineRunning()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskRunning()V

    .line 760
    return-void
.end method
