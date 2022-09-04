.class Lcom/fimi/album/presenter/MediaDetailPresenter$1;
.super Lcom/fimi/album/biz/FrescoControllerListener;
.source "MediaDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/presenter/MediaDetailPresenter;->initItemData(Lcom/fimi/album/adapter/MediaDetialViewHolder;ILcom/fimi/album/entity/MediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/presenter/MediaDetailPresenter;

.field final synthetic val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;


# direct methods
.method constructor <init>(Lcom/fimi/album/presenter/MediaDetailPresenter;Lcom/fimi/album/adapter/MediaDetialViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/presenter/MediaDetailPresenter;

    .prologue
    .line 108
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter$1;, "Lcom/fimi/album/presenter/MediaDetailPresenter$1;"
    iput-object p1, p0, Lcom/fimi/album/presenter/MediaDetailPresenter$1;->this$0:Lcom/fimi/album/presenter/MediaDetailPresenter;

    iput-object p2, p0, Lcom/fimi/album/presenter/MediaDetailPresenter$1;->val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    invoke-direct {p0}, Lcom/fimi/album/biz/FrescoControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter$1;, "Lcom/fimi/album/presenter/MediaDetailPresenter$1;"
    invoke-super {p0, p1, p2}, Lcom/fimi/album/biz/FrescoControllerListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter$1;->val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    iget-object v0, v0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imageInfo"    # Lcom/facebook/imagepipeline/image/ImageInfo;
    .param p3, "animatable"    # Landroid/graphics/drawable/Animatable;

    .prologue
    .line 117
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter$1;, "Lcom/fimi/album/presenter/MediaDetailPresenter$1;"
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/album/biz/FrescoControllerListener;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    .line 118
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter$1;->val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    iget-object v0, v0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter$1;->val$mMediaDetialViewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    iget-object v0, v0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mPhotoDraweeView:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lme/relex/photodraweeview/PhotoDraweeView;->update(II)V

    .line 120
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .prologue
    .line 108
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter$1;, "Lcom/fimi/album/presenter/MediaDetailPresenter$1;"
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/album/presenter/MediaDetailPresenter$1;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
