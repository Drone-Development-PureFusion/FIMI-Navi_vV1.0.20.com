.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$3;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteComfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->setGravitationPrameter()V
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
    .line 214
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 217
    iget-boolean v1, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_gravitation_set_prameter_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
