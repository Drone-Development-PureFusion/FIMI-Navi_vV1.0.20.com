.class Lcom/fimi/app/x8s/controls/X8MainRightMenuController$5;
.super Ljava/lang/Object;
.source "X8MainRightMenuController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->takePhoto()V
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
    .line 269
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$5;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 272
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$5;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$200(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setClickable(Z)V

    .line 273
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$5;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$300(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getmMsgRpt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fimi/x8sdk/rtp/X8Rtp;->getRtpStringCamera(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "rtpCamera":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$5;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$400(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
