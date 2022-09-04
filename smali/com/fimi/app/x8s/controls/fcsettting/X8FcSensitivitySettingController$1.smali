.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$1;
.super Ljava/lang/Object;
.source "X8FcSensitivitySettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->requestDefaultValue()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "sensitivity"    # Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getRollPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setProgress(I)V

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getYawPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setProgress(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$1;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;)V

    return-void
.end method
