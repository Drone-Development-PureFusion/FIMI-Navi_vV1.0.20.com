.class Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;
.super Ljava/lang/Object;
.source "X8AiTaskManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;


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
    .line 687
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiSarBackClick()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$702(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;

    .line 692
    return-void
.end method

.method public onAiSarComplete(Z)V
    .locals 3
    .param p1, "showText"    # Z

    .prologue
    .line 701
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->removeAlls()V

    .line 702
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_sar_complete_tip:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskComplete(ZLjava/lang/String;)V

    .line 703
    return-void
.end method

.method public onAiSarRunning()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->runFixedwing()V

    .line 697
    return-void
.end method
