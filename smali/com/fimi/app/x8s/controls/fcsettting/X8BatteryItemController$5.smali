.class Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$5;
.super Ljava/lang/Object;
.source "X8BatteryItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->showItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getCurrentValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_must_less_than_serious:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-virtual {v0, v1, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setLowPowerOpt(IZ)V

    goto :goto_0
.end method
