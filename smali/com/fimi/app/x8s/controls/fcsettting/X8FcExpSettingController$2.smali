.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;
.super Ljava/lang/Object;
.source "X8FcExpSettingController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setUpDownRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setLeftRightRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;)V

    invoke-virtual {v0, v1, v2, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setGoBackRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 278
    return-void
.end method
