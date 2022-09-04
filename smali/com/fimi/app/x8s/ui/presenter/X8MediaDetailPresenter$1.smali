.class Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;
.super Lcom/fimi/album/biz/FrescoControllerListener;
.source "X8MediaDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->initItemData(Lcom/fimi/album/adapter/MediaDetialViewHolder;Lcom/fimi/album/entity/MediaModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

.field final synthetic val$isReload:Z

.field final synthetic val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

.field final synthetic val$mediaModel:Lcom/fimi/album/entity/MediaModel;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/adapter/MediaDetialViewHolder;ZLcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 237
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    iput-object p2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    iput-boolean p3, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$isReload:Z

    iput-object p4, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-direct {p0}, Lcom/fimi/album/biz/FrescoControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 240
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;"
    invoke-super {p0, p1, p2}, Lcom/fimi/album/biz/FrescoControllerListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    iget-object v0, v0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ===========initItemData onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$isReload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mediaModel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imageInfo"    # Lcom/facebook/imagepipeline/image/ImageInfo;
    .param p3, "animatable"    # Landroid/graphics/drawable/Animatable;

    .prologue
    .line 247
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;"
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/album/biz/FrescoControllerListener;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    .line 248
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ===========initItemData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$isReload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mediaModel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    iget-object v0, v0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    iget-object v0, v0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mPhotoDraweeView:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lme/relex/photodraweeview/PhotoDraweeView;->update(II)V

    .line 251
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .prologue
    .line 237
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;"
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
