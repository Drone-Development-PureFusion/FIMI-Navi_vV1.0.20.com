.class Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController$1;
.super Lcom/fimi/widget/impl/NoDoubleClickListener;
.source "X8FirmwareUpgradeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;
    .param p2, "x0"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    invoke-direct {p0, p2}, Lcom/fimi/widget/impl/NoDoubleClickListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onNoDoubleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;)Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;)Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;->onFirmwareUpgradeClick()V

    .line 80
    :cond_0
    return-void
.end method
