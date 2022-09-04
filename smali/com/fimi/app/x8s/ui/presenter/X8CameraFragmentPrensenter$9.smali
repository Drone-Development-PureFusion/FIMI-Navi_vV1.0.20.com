.class Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;
.super Ljava/lang/Object;
.source "X8CameraFragmentPrensenter.java"

# interfaces
.implements Lcom/fimi/album/interfaces/OnDownloadUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 453
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 483
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;"
    const-string v0, "download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure1: name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$2100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 486
    return-void
.end method

.method public onProgress(Lcom/fimi/album/entity/MediaModel;I)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "progrss"    # I

    .prologue
    .line 457
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;"
    invoke-virtual {p1, p2}, Lcom/fimi/album/entity/MediaModel;->setProgress(I)V

    .line 459
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1700(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1800(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 466
    :cond_0
    return-void
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 490
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;"
    const-string v0, "download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop1: name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$2200(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 492
    return-void
.end method

.method public onSuccess(Lcom/fimi/album/entity/MediaModel;)V
    .locals 4
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 470
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;"
    const-string v1, "download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess1: name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/fimi/album/entity/MediaModel;->setProgress(I)V

    .line 473
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1900(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "UPDATELOCALITEMRECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v1, "UPDATELOCALITEM"

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->clone()Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$2000(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 478
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->sendBroadcastMediaScannerScanFile(Ljava/lang/String;)V

    .line 479
    return-void
.end method
