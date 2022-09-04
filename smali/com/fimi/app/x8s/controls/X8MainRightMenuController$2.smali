.class Lcom/fimi/app/x8s/controls/X8MainRightMenuController$2;
.super Ljava/lang/Object;
.source "X8MainRightMenuController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->onPhotoVideoSwitcher()V
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
    .line 195
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$2;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$2;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$000(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;->onCameraSwitching()V

    .line 200
    return-void
.end method
