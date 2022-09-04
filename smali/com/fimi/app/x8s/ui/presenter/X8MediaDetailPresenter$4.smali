.class Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;
.super Ljava/lang/Object;
.source "X8MediaDetailPresenter.java"

# interfaces
.implements Lcom/fimi/album/interfaces/OnDownloadUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 401
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 448
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$500(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/entity/MediaModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  =============downloadFile333:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$800(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getBtnStart()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->media_detail_start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onProgress(Lcom/fimi/album/entity/MediaModel;I)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "progrss"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;"
    const/16 v1, 0x8

    .line 406
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$500(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/entity/MediaModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p1, p2}, Lcom/fimi/album/entity/MediaModel;->setProgress(I)V

    .line 413
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->topBarShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownloadBottom()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 420
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getBtnStart()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->media_detail_cancle:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 421
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getTvPercent()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getMediaDownloadProgressView()Lcom/fimi/album/widget/MediaDownloadProgressView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/MediaDownloadProgressView;->setCurrentCount(F)V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownloadBottom()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 459
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$500(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/entity/MediaModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  =============downloadFile444:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$800(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getBtnStart()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->media_detail_start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/fimi/album/entity/MediaModel;)V
    .locals 5
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 429
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "UPDATELOCALITEMRECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v1, "UPDATELOCALITEM"

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->clone()Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 432
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 433
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$500(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/entity/MediaModel;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p1, v3}, Lcom/fimi/album/entity/MediaModel;->setProgress(I)V

    .line 439
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownloadBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownload()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$600(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/album/adapter/MediaDetialViewHolder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->access$700(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/adapter/MediaDetialViewHolder;Lcom/fimi/album/entity/MediaModel;Z)V

    goto :goto_0
.end method
