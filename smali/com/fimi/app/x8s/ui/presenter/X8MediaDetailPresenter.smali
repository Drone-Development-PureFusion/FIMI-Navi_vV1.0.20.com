.class public Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;
.super Ljava/lang/Object;
.source "X8MediaDetailPresenter.java"

# interfaces
.implements Lcom/fimi/album/iview/IViewpaper;
.implements Lme/relex/photodraweeview/OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IViewpaper;",
        "Lme/relex/photodraweeview/OnPhotoTapListener;"
    }
.end annotation


# instance fields
.field private defaultDisplayHeight:I

.field private defaultDisplayWidth:I

.field private mCacheContainer:Landroid/view/ViewGroup;

.field private mCurrentPosition:I

.field private mDataManager:Lcom/fimi/album/biz/DataManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fimi/album/biz/DataManager",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

.field private mOnOriginalDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

.field private mediaModel:Lcom/fimi/album/entity/MediaModel;

.field private modelList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<+",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field protected perfix:Ljava/lang/String;

.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field private viewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

.field private viewPaper:Landroid/support/v4/view/ViewPager;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p2, "viewPaper"    # Landroid/support/v4/view/ViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v4/view/ViewPager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    .local p1, "activity":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "file://"

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->perfix:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    .line 320
    new-instance v0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 401
    new-instance v0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$4;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mOnOriginalDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->defaultDisplayWidth:I

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->defaultDisplayHeight:I

    .line 81
    iput-object p2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->viewPaper:Landroid/support/v4/view/ViewPager;

    .line 82
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->initData()V

    .line 83
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mOnOriginalDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->setUiDownloadListener(Lcom/fimi/album/interfaces/OnDownloadUiListener;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 61
    iget v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->viewPaper:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;
    .param p1, "x1"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->notifyMediaBroardcast(Lcom/fimi/album/entity/MediaModel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/entity/MediaModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;
    .param p1, "x1"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->isCurrentModel(Lcom/fimi/album/entity/MediaModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/album/adapter/MediaDetialViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->viewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/adapter/MediaDetialViewHolder;Lcom/fimi/album/entity/MediaModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;
    .param p1, "x1"    # Lcom/fimi/album/adapter/MediaDetialViewHolder;
    .param p2, "x2"    # Lcom/fimi/album/entity/MediaModel;
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->initItemData(Lcom/fimi/album/adapter/MediaDetialViewHolder;Lcom/fimi/album/entity/MediaModel;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)Lcom/fimi/album/entity/MediaModel;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mediaModel:Lcom/fimi/album/entity/MediaModel;

    return-object v0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0
.end method

.method private initDownload(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 196
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getMediaDownloadProgressView()Lcom/fimi/album/widget/MediaDownloadProgressView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/MediaDownloadProgressView;->setCurrentCount(F)V

    .line 197
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  =============downloadFile222:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getBtnStart()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->media_detail_start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 211
    :cond_0
    return-void
.end method

.method private initItemData(Lcom/fimi/album/adapter/MediaDetialViewHolder;Lcom/fimi/album/entity/MediaModel;Z)V
    .locals 8
    .param p1, "mMediaDetialViewHolder"    # Lcom/fimi/album/adapter/MediaDetialViewHolder;
    .param p2, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;
    .param p3, "isReload"    # Z

    .prologue
    .line 214
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    invoke-virtual {p2}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "file":Ljava/io/File;
    const-string v2, ""

    .line 217
    .local v2, "fileUrl":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->perfix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    :goto_0
    iget-object v4, p1, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    iget-object v4, p1, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mPhotoDraweeView:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-virtual {v4, p0}, Lme/relex/photodraweeview/PhotoDraweeView;->setOnPhotoTapListener(Lme/relex/photodraweeview/OnPhotoTapListener;)V

    .line 230
    if-eqz p3, :cond_0

    .line 231
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v3

    .line 232
    .local v3, "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromMemoryCache(Landroid/net/Uri;)V

    .line 233
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromDiskCache(Landroid/net/Uri;)V

    .line 234
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromCache(Landroid/net/Uri;)V

    .line 237
    .end local v3    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    :cond_0
    iget-object v4, p1, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mPhotoDraweeView:Lme/relex/photodraweeview/PhotoDraweeView;

    iget v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->defaultDisplayWidth:I

    iget v6, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->defaultDisplayHeight:I

    new-instance v7, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;

    invoke-direct {v7, p0, p1, p3, p2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$1;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;Lcom/fimi/album/adapter/MediaDetialViewHolder;ZLcom/fimi/album/entity/MediaModel;)V

    invoke-static {v4, v2, v5, v6, v7}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;IILcom/facebook/drawee/controller/ControllerListener;)V

    .line 258
    return-void

    .line 220
    :cond_1
    invoke-virtual {p2}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->perfix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/fimi/album/entity/MediaModel;->getThumLocalFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 223
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->perfix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/fimi/album/entity/MediaModel;->getThumLocalFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isCurrentModel(Lcom/fimi/album/entity/MediaModel;)Z
    .locals 4
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    const/4 v1, 0x0

    .line 476
    const-string/jumbo v0, "zhej"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCurrentModel: modelNoList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 483
    :goto_0
    return v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 483
    goto :goto_0
.end method

.method private notifyMediaBroardcast(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 339
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v1, "deleteIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "deleteItem"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 342
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 343
    const-string v2, "deleteItemAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 345
    return-void
.end method


# virtual methods
.method public deleteItem(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 267
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 269
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-static {}, Lcom/fimi/x8sdk/controller/CameraManager;->getInstansCameraManager()Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$2;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)V

    invoke-virtual {v1, v2, v3}, Lcom/fimi/x8sdk/controller/CameraManager;->deleteOnlineFile(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 314
    .end local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 297
    .restart local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->viewPaper:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    invoke-virtual {v1, p1}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->deleteItem(I)V

    .line 298
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/kernel/utils/FileTool;->deleteFile(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->notifyMediaBroardcast(Lcom/fimi/album/entity/MediaModel;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->notifyCameraBroardcast(Lcom/fimi/album/entity/MediaModel;)V

    .line 301
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->finish()V

    .line 303
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->setOnDestory()V

    goto :goto_0

    .line 304
    :cond_1
    iget v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 305
    iget v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    goto :goto_0

    .line 307
    :cond_2
    iget v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    goto :goto_0

    .line 310
    .end local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->finish()V

    .line 311
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->setOnDestory()V

    goto :goto_0
.end method

.method public downloadFile(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 365
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 367
    .local v0, "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->startDownload(Lcom/fimi/album/entity/MediaModel;)V

    .line 379
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setStop(Z)V

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 372
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->stopTask()V

    goto :goto_1

    .line 375
    :cond_3
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isDownloadFail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getBtnStart()Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->media_detail_cancle:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 377
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->startDownload(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_1
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 506
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    iget v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    return v0
.end method

.method public getMediaFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 517
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    const/4 v0, 0x0

    .line 518
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 521
    :cond_0
    return-object v0
.end method

.method public hideFragment()V
    .locals 0

    .prologue
    .line 503
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    const/4 v4, 0x0

    .line 99
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 100
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->album_adapter_detail_item:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/fimi/album/adapter/MediaDetialViewHolder;

    invoke-direct {v2, v1}, Lcom/fimi/album/adapter/MediaDetialViewHolder;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->viewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    .line 102
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->viewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCacheContainer:Landroid/view/ViewGroup;

    .line 104
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->viewHolder:Lcom/fimi/album/adapter/MediaDetialViewHolder;

    invoke-direct {p0, v2, v0, v4}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->initItemData(Lcom/fimi/album/adapter/MediaDetialViewHolder;Lcom/fimi/album/entity/MediaModel;Z)V

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    return-object v1
.end method

.method public isDownloadFinish()Z
    .locals 1

    .prologue
    .line 525
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile()Z

    move-result v0

    return v0
.end method

.method public notifyCameraBroardcast(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 356
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaModel;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v2, "LOCALFILEDELETEEIVER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v2, "LOCLAFILEDELETEITEM"

    check-cast v1, Ljava/io/Serializable;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaModel;>;"
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 361
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 362
    return-void
.end method

.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 384
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getIvTopBar()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->showTopBar(Z)V

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->showTopBar(Z)V

    .line 388
    iget v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    goto :goto_0
.end method

.method public setOnDestory()V
    .locals 1

    .prologue
    .line 487
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mOnOriginalDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mOnOriginalDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 490
    :cond_0
    return-void
.end method

.method public showShare()V
    .locals 0

    .prologue
    .line 496
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    return-void
.end method

.method public showTopBottom(I)V
    .locals 5
    .param p1, "currentPosition"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    const/4 v4, 0x0

    .line 179
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 180
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCacheContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/fimi/app/x8s/R$id;->iv_top_bar:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .line 182
    .local v0, "customVideoView":Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
    if-nez v0, :cond_1

    .line 193
    .end local v0    # "customVideoView":Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v0    # "customVideoView":Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->topBarShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showBar(Z)V

    .line 190
    :goto_1
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setTotalTime(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showBar(Z)V

    goto :goto_1
.end method

.method public startActivity()V
    .locals 5

    .prologue
    .line 529
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    const-string v2, "moweiru"

    const-string v3, "startActivity=="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 531
    new-instance v0, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;

    invoke-direct {v0}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;-><init>()V

    .line 532
    .local v0, "info":Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->setName(Ljava/lang/String;)V

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->perfix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v4, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->setPath(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->setDuration(Ljava/lang/String;)V

    .line 540
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    const-class v3, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "FmMediaPlayer_FmMediaInfo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 542
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 544
    .end local v0    # "info":Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public updateFileName(I)V
    .locals 2
    .param p1, "currentSelectPosition"    # I

    .prologue
    .line 393
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getPhotoText()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_0
    return-void
.end method

.method public updateItem(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter<TT;>;"
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mediaModel:Lcom/fimi/album/entity/MediaModel;

    .line 118
    iput p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mCurrentPosition:I

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 120
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alanqiu  =============downloadFile11111:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getPhotoText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownloadBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownload()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->topBarShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    :goto_1
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->initDownload(Lcom/fimi/album/entity/MediaModel;)V

    .line 165
    :goto_2
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 166
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getBtnPlayMax()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->topBarShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownload()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getTvFileName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownloadBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getTvPercent()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getBtnStart()Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->media_detail_cancle:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownloadBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownloadBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 156
    :cond_5
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownload()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlDownloadBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->topBarShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 161
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getRlSelectBottom()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 168
    :cond_7
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getBtnPlayMax()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method
