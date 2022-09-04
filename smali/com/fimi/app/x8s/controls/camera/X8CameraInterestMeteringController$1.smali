.class Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController$1;
.super Landroid/os/Handler;
.source "X8CameraInterestMeteringController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    .line 121
    .local v0, "msgID":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method
