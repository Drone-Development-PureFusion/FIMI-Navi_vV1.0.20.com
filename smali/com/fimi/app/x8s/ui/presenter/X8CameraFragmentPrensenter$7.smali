.class Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;
.super Ljava/lang/Object;
.source "X8CameraFragmentPrensenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->doBodyTrans(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

.field final synthetic val$mediaModel:Lcom/fimi/album/entity/MediaModel;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 365
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    iput-object p2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 368
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isDownloadFail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->startDownload(Lcom/fimi/album/entity/MediaModel;)V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1300(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 376
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 372
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setStop(Z)V

    .line 373
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->stopTask()V

    goto :goto_0
.end method
