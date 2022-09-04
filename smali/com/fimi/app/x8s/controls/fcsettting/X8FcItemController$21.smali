.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setNoviceMode(BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field final synthetic val$isSportMode:Z

.field final synthetic val$type:B


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;BZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iput-byte p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->val$type:B

    iput-boolean p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->val$isSportMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 592
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "isOn":Z
    iget-byte v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->val$type:B

    if-nez v1, :cond_0

    .line 595
    const/4 v0, 0x1

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 600
    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->onChangePilotMode(Z)V

    .line 601
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->val$isSportMode:Z

    if-nez v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iget-byte v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->val$type:B

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;I)V

    .line 605
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->val$isSportMode:Z

    if-eqz v1, :cond_2

    .line 606
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$21;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetViewBySport()V

    .line 610
    .end local v0    # "isOn":Z
    :cond_2
    return-void
.end method
