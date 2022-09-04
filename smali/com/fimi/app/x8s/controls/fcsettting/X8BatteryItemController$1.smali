.class Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;
.super Ljava/lang/Object;
.source "X8BatteryItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->requestValue()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "lowPowerOpt"    # Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->getLowPowerValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 143
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImbConfirmEnable(Z)V

    .line 144
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->getSeriousLowPowerValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(F)V

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImbConfirmEnable(Z)V

    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->getLowPowerOpt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->getSeriousLowPowerOpt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;)V

    return-void
.end method
