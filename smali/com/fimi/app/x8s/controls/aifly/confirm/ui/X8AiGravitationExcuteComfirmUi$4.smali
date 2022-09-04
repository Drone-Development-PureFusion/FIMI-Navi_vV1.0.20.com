.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteComfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->startGravitation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 9
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 233
    iget-boolean v1, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onExcuteClick()V

    .line 236
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    .line 237
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v2

    .line 238
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .line 239
    invoke-static {v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->getHorizontalDistance()I

    move-result v6

    int-to-float v6, v6

    .line 240
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/DroneState;->getDeviceAngle()F

    move-result v7

    const/high16 v8, 0x42b40000    # 90.0f

    add-float/2addr v7, v8

    .line 237
    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->addEllipse(DDFF)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_gravitation_start_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
