.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$9;
.super Ljava/lang/Object;
.source "X8GimbalXYZAdjustController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onGcClick()V

    .line 339
    return-void
.end method
