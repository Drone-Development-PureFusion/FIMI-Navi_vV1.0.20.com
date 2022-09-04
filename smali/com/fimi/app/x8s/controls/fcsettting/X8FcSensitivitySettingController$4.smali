.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;
.super Ljava/lang/Object;
.source "X8FcSensitivitySettingController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 213
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;)V

    invoke-virtual {v0, v1, v2, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAttitudeSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;)V

    invoke-virtual {v0, v1, v2, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setYawSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 253
    return-void
.end method
