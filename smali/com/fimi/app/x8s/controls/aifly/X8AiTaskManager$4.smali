.class Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;
.super Ljava/lang/Object;
.source "X8AiTaskManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;


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
    .line 572
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAerialGraphBackClick()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$402(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .line 576
    return-void
.end method

.method public onAerialGraphComplete(Z)V
    .locals 3
    .param p1, "showText"    # Z

    .prologue
    .line 585
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->removeAlls()V

    .line 586
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_aerail_graph_complete:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onTaskComplete(ZLjava/lang/String;)V

    .line 587
    return-void
.end method

.method public onAerialGraphRunning()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->runFixedwing()V

    .line 581
    return-void
.end method
