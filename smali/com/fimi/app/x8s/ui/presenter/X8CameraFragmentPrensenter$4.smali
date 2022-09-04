.class Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;
.super Lcom/fimi/album/biz/FrescoControllerListener;
.source "X8CameraFragmentPrensenter.java"


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

.field final synthetic val$currentFilePath:Ljava/lang/String;

.field final synthetic val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Ljava/lang/String;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 269
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    iput-object p2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->val$currentFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    invoke-direct {p0}, Lcom/fimi/album/biz/FrescoControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 272
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;"
    invoke-super {p0, p1, p2}, Lcom/fimi/album/biz/FrescoControllerListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    .line 274
    .local v0, "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$600(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->val$currentFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromMemoryCache(Landroid/net/Uri;)V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$700(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->val$currentFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromDiskCache(Landroid/net/Uri;)V

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$800(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->val$currentFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromCache(Landroid/net/Uri;)V

    .line 277
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    iget-object v1, v1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v3}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$900(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->val$currentFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v3}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1000(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)I

    move-result v3

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v4}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 278
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imageInfo"    # Lcom/facebook/imagepipeline/image/ImageInfo;
    .param p3, "animatable"    # Landroid/graphics/drawable/Animatable;

    .prologue
    .line 282
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;"
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/album/biz/FrescoControllerListener;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    .line 283
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .prologue
    .line 269
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;"
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
