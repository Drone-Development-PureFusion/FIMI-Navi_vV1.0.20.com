.class Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;
.super Ljava/lang/Object;
.source "X8MediaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    .prologue
    .line 285
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getTlTitleCategoly()Landroid/support/design/widget/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v0

    if-lez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$300(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;->onCameraConnectedState(Z)V

    .line 294
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$300(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;->onCameraConnectedState(Z)V

    goto :goto_1
.end method
