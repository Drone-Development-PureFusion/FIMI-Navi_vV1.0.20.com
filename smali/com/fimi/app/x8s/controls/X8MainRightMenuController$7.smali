.class Lcom/fimi/app/x8s/controls/X8MainRightMenuController$7;
.super Ljava/lang/Object;
.source "X8MainRightMenuController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->stopRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$7;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$7;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$700(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_btn_media_select:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 320
    :cond_0
    return-void
.end method
