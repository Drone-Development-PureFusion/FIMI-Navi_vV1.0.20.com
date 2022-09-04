.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17$2;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;->onSwitch(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 371
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 373
    invoke-static {v1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->noChangeFollowRP(Z)V

    .line 376
    :cond_0
    return-void
.end method
