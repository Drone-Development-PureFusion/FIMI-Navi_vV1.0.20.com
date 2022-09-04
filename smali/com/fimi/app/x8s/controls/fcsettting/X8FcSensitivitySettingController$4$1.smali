.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$1;
.super Ljava/lang/Object;
.source "X8FcSensitivitySettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "respCode"    # Ljava/lang/Object;

    .prologue
    const/16 v1, 0x32

    .line 216
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setProgress(I)V

    .line 218
    invoke-static {v1, v1, v1, v1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setFs(IIII)V

    .line 221
    :cond_0
    return-void
.end method
