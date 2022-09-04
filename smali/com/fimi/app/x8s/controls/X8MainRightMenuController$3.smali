.class Lcom/fimi/app/x8s/controls/X8MainRightMenuController$3;
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
    .line 248
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$3;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 251
    iget-boolean v0, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$3;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$100(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/widget/StrokeTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/widget/StrokeTextView;->setVisibility(I)V

    .line 253
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->setTakingPanoramicPhotos(Z)V

    .line 254
    return-void
.end method
