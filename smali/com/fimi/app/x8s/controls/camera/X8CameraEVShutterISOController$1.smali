.class Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$1;
.super Ljava/lang/Object;
.source "X8CameraEVShutterISOController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ILjava/lang/String;I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "last"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 172
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->isDelayedPhotography()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->setCameraDeControl(I)V

    goto :goto_0
.end method
