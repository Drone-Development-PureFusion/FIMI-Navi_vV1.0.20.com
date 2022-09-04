.class public Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
.super Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;
.source "X8CameraFragmentPrensenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter",
        "<TT;>;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field public static final LOCALFILEDELETEEIVER:Ljava/lang/String; = "LOCALFILEDELETEEIVER"

.field public static final LOCLAFILEDELETEITEM:Ljava/lang/String; = "LOCLAFILEDELETEITEM"

.field private static final TAG:Ljava/lang/String; = "X8CameraFragmentPrensenter"


# instance fields
.field private defaultBound:I

.field private durationHandler:Landroid/os/Handler;

.field private mLocalFileDeleteReceiver:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter",
            "<TT;>.",
            "LocalFileDeleteReceiver;"
        }
    .end annotation
.end field

.field private mMediaDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

.field private mOnDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

.field private mOnOriginalDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;)V
    .locals 7
    .param p1, "mRecyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "mPanelRecycleAdapter"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .param p3, "mISelectData"    # Lcom/fimi/album/iview/ISelectData;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;Z)V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->defaultBound:I

    .line 422
    new-instance v0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mOnDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 453
    new-instance v0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$9;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mOnOriginalDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 63
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->durationHandler:Landroid/os/Handler;

    .line 64
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mainHandler:Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->doTrans()V

    .line 66
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 67
    .local v6, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v0, v6, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 68
    check-cast v6, Landroid/support/v7/widget/GridLayoutManager;

    .end local v6    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iput-object v6, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 70
    :cond_0
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mMediaDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mMediaDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mOnDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->setOnDownloadUiListener(Lcom/fimi/album/interfaces/OnDownloadUiListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->registerReciver()V

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isScrollRecycle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->durationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->defaultPhtotWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->defaultPhtotHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
    .param p1, "x1"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->onItemLongClick(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isResh:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->defaultBound:I

    return v0
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isScrollRecycle:Z

    return p1
.end method

.method static synthetic access$402(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isScrollRecycle:Z

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
    .param p1, "x1"    # Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->onItemCategoryClick(Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->perfix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->perfix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->perfix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->perfix:Ljava/lang/String;

    return-object v0
.end method

.method private doBodyTrans(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 250
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    .line 252
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {v1, p2}, Lcom/fimi/album/entity/MediaModel;->setItemPosition(I)V

    .line 257
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getThumLocalFilePath()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "currentFilePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->album_video_loading:I

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setBackgroundResource(I)V

    .line 267
    :goto_1
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isDownLoadThum()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_5

    .line 268
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->perfix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->defaultPhtotWidth:I

    iget v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->defaultPhtotHeight:I

    new-instance v6, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;

    invoke-direct {v6, p0, v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$4;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Ljava/lang/String;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;IILcom/facebook/drawee/controller/ControllerListener;)V

    .line 294
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 295
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvVideoFlag:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_ablumn_normal_vedio_mark:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    invoke-virtual {v2, v0}, Lcom/fimi/album/widget/MediaStrokeTextView;->setTag(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    invoke-virtual {v2, v7}, Lcom/fimi/album/widget/MediaStrokeTextView;->setVisibility(I)V

    .line 299
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/album/widget/MediaStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_3
    :goto_3
    iget-boolean v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isEnterSelectMode:Z

    if-eqz v2, :cond_8

    .line 308
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 309
    invoke-virtual {p0, v1, p1, v7}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 321
    :goto_4
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$6;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 336
    iget-boolean v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isCamera:Z

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getProgress()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->changeDownloadProgress(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V

    .line 338
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 339
    sget-object v2, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOADING:Lcom/fimi/album/widget/DownloadStateView$State;

    invoke-virtual {p0, p1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->changeDownloadState(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Lcom/fimi/album/widget/DownloadStateView$State;)V

    .line 340
    invoke-virtual {p0, p1, v9}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->showDownloadImg(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Z)V

    .line 350
    :goto_5
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 351
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvDownloaded:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    :goto_6
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 358
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mFileSize:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/fimi/kernel/utils/ByteUtil;->getNetFileSizeDescription(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_7
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mDownloadStateView:Lcom/fimi/album/widget/DownloadStateView;

    new-instance v3, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;

    invoke-direct {v3, p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$7;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Lcom/fimi/album/entity/MediaModel;)V

    invoke-virtual {v2, v3}, Lcom/fimi/album/widget/DownloadStateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 265
    :cond_4
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->album_photo_loading:I

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 288
    :cond_5
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    const-string v2, "X8CameraFragmentPrensenter"

    const-string v3, "doBodyTrans3: "

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->perfix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->defaultPhtotWidth:I

    iget v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->defaultPhtotHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 303
    :cond_6
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvVideoFlag:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_ablumn_normal_photo_mark:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/fimi/album/widget/MediaStrokeTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 311
    :cond_7
    invoke-virtual {p0, v1, p1, v8}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_4

    .line 314
    :cond_8
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 315
    invoke-virtual {p0, v1, p1, v7}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_4

    .line 317
    :cond_9
    invoke-virtual {p0, v1, p1, v8}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_4

    .line 341
    :cond_a
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 342
    sget-object v2, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    invoke-virtual {p0, p1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->changeDownloadState(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Lcom/fimi/album/widget/DownloadStateView$State;)V

    .line 343
    invoke-virtual {p0, p1, v9}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->showDownloadImg(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Z)V

    goto/16 :goto_5

    .line 344
    :cond_b
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isDownloadFail()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 345
    sget-object v2, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOAD_FAIL:Lcom/fimi/album/widget/DownloadStateView$State;

    invoke-virtual {p0, p1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->changeDownloadState(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Lcom/fimi/album/widget/DownloadStateView$State;)V

    .line 346
    invoke-virtual {p0, p1, v9}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->showDownloadImg(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Z)V

    goto/16 :goto_5

    .line 348
    :cond_c
    invoke-virtual {p0, p1, v7}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->showDownloadImg(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Z)V

    goto/16 :goto_5

    .line 353
    :cond_d
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvDownloaded:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 361
    :cond_e
    iget-object v2, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mFileSize:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private doHeadTrans(Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;I)V
    .locals 8
    .param p1, "headRecyleViewHolder"    # Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 171
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;->mTvHeard:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_album_head_title:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/album/biz/DataManager;->getX8CameraVideoCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/album/biz/DataManager;->getX8CameraPhotoCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method private doPanelTrans(Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 182
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    .line 183
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->tvTitleDescription:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_select:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    new-instance v2, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$3;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isEnterSelectMode:Z

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :goto_1
    return-void

    .line 188
    :cond_1
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_unselect:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private doTrans()V
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$1;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 109
    return-void
.end method

.method private onItemCategoryClick(Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
    .param p2, "position"    # I
    .param p3, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 207
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    if-eqz p3, :cond_0

    .line 208
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "formatDate":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 210
    .local v1, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->perfomSelectCategory(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V

    .line 216
    .end local v0    # "formatDate":Ljava/lang/String;
    .end local v1    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    :cond_0
    :goto_0
    return-void

    .line 213
    .restart local v0    # "formatDate":Ljava/lang/String;
    .restart local v1    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->perfomSelectCategory(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V

    goto :goto_0
.end method

.method private onItemLongClick(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 1
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 390
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isEnterSelectMode:Z

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isEnterSelectMode:Z

    .line 392
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->callBackEnterSelectMode()V

    .line 394
    :cond_0
    invoke-virtual {p0, p3}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->preformMode(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 396
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->callBackSelectSize(I)V

    .line 397
    return-void
.end method

.method private perfomSelectCategory(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V
    .locals 6
    .param p2, "isSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    .local p1, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 220
    .local v0, "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz p2, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-virtual {v0, v5}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->addSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v0, v4}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 233
    .end local v0    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->notifyAllVisible()V

    .line 234
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->callBackSelectSize(I)V

    .line 235
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 236
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->callAllSelectMode(Z)V

    .line 240
    :goto_1
    return-void

    .line 238
    :cond_3
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->callAllSelectMode(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    const/4 v7, 0x1

    .line 114
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v7, :cond_5

    .line 115
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 117
    .local v2, "firstVisibleItem":I
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 118
    .local v3, "lastVisibleItem":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 147
    .end local v2    # "firstVisibleItem":I
    .end local v3    # "lastVisibleItem":I
    :cond_0
    :goto_0
    return v7

    .line 121
    .restart local v2    # "firstVisibleItem":I
    .restart local v3    # "lastVisibleItem":I
    :cond_1
    iget-boolean v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isScrollRecycle:Z

    if-nez v5, :cond_4

    .line 122
    :goto_1
    if-gt v2, v3, :cond_3

    .line 123
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v4

    .line 124
    .local v4, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->isDownLoadThum()Z

    move-result v5

    if-nez v5, :cond_2

    .line 125
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 126
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mMediaDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-virtual {v5, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->addData(Lcom/fimi/album/entity/MediaModel;)V

    .line 129
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 130
    goto :goto_1

    .line 131
    .end local v4    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mMediaDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mMediaDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    iget-boolean v5, v5, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->isDownload:Z

    if-nez v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mMediaDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->startDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v2    # "firstVisibleItem":I
    .end local v3    # "lastVisibleItem":I
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "firstVisibleItem":I
    .restart local v3    # "lastVisibleItem":I
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mMediaDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->stopDownload()V

    .line 136
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->durationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 140
    .end local v2    # "firstVisibleItem":I
    .end local v3    # "lastVisibleItem":I
    :cond_5
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 141
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 142
    .local v0, "currentPsition":I
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v5, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 158
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    if-gez p2, :cond_0

    .line 168
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 161
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    instance-of v0, p1, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;

    if-eqz v0, :cond_1

    .line 162
    check-cast p1, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->doHeadTrans(Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;I)V

    goto :goto_0

    .line 163
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    instance-of v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    if-eqz v0, :cond_2

    .line 164
    check-cast p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->doBodyTrans(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V

    goto :goto_0

    .line 166
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    check-cast p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->doPanelTrans(Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;I)V

    goto :goto_0
.end method

.method public onItemClick(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 407
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    invoke-virtual {p0, p3}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    .line 408
    .local v0, "currentMode":Lcom/fimi/album/entity/MediaModel;
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->isEnterSelectMode:Z

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0, v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->preformMode(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 411
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->callBackSelectSize(I)V

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->goMediaDetailActivity(I)V

    goto :goto_0
.end method

.method public registerDownloadListerner()V
    .locals 2

    .prologue
    .line 524
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mOnOriginalDownloadUiListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->setUiDownloadListener(Lcom/fimi/album/interfaces/OnDownloadUiListener;)V

    .line 525
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyDataSetChanged()V

    .line 528
    :cond_0
    return-void
.end method

.method public registerReciver()V
    .locals 3

    .prologue
    .line 516
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mLocalFileDeleteReceiver:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

    .line 517
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 518
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "LOCALFILEDELETEEIVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mLocalFileDeleteReceiver:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 520
    return-void
.end method

.method public showCategorySelectView(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 499
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 500
    .local v0, "firstVisibleItem":I
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 501
    .local v1, "lastVisibleItem":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 511
    :cond_0
    return-void

    .line 504
    :cond_1
    :goto_0
    if-gt v0, v1, :cond_0

    .line 505
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    .line 506
    .local v2, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 507
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v3, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 509
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 510
    goto :goto_0
.end method

.method public unRegisterReciver()V
    .locals 2

    .prologue
    .line 532
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->mLocalFileDeleteReceiver:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 533
    return-void
.end method
