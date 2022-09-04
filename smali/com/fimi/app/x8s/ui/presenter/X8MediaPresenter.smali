.class public Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;
.super Ljava/lang/Object;
.source "X8MediaPresenter.java"

# interfaces
.implements Lcom/fimi/album/iview/IDateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IDateHandler;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private iMediaCameraConnected:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;

.field private isFirstEnterCamera:Z

.field private mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

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

.field private mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

.field runnable:Ljava/lang/Runnable;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    .local p1, "activity":Landroid/app/Activity;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "X8MediaPresenter"

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->TAG:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->isFirstEnterCamera:Z

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->handler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$3;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->runnable:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    .line 50
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;

    invoke-direct {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-virtual {v0, v1}, Lcom/fimi/album/biz/DataManager;->setCameraDeviceDispater(Lcom/fimi/album/interfaces/ICameraDeviceDispater;)V

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0, p0}, Lcom/fimi/album/biz/DataManager;->setIdataImpl(Lcom/fimi/album/iview/IDateHandler;)V

    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->isFirstEnterCamera:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/album/biz/DataManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->iMediaCameraConnected:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;

    return-object v0
.end method


# virtual methods
.method public currentFragmentType()V
    .locals 3

    .prologue
    .line 190
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getFragmentList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getTlTitleCategoly()Landroid/support/design/widget/TabLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    .line 192
    .local v0, "currentPosition":I
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getFragmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 193
    sget-object v1, Lcom/fimi/album/biz/X9HandleType$FragmentType;->CAMERA:Lcom/fimi/album/biz/X9HandleType$FragmentType;

    sput-object v1, Lcom/fimi/album/biz/X9HandleType;->fragmentType:Lcom/fimi/album/biz/X9HandleType$FragmentType;

    .line 198
    .end local v0    # "currentPosition":I
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v0    # "currentPosition":I
    :cond_1
    sget-object v1, Lcom/fimi/album/biz/X9HandleType$FragmentType;->LOCAL_MEDIA_LIB:Lcom/fimi/album/biz/X9HandleType$FragmentType;

    sput-object v1, Lcom/fimi/album/biz/X9HandleType;->fragmentType:Lcom/fimi/album/biz/X9HandleType$FragmentType;

    goto :goto_0
.end method

.method public enterSelectMode(ZZ)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "isNeedPreform"    # Z

    .prologue
    .line 182
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->enterSelectMode(ZZ)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->enterSelectMode(ZZ)V

    goto :goto_0
.end method

.method public forCameraFolder()V
    .locals 2

    .prologue
    .line 113
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->showProgress(Z)V

    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->forX9CameraFolder()V

    .line 115
    return-void
.end method

.method public forEachFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    const/4 v3, 0x1

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->showProgress(Z)V

    .line 102
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/album/biz/DataManager;->forEachFolder(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->showProgress(Z)V

    .line 105
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->noDataTipCallback(Z)V

    .line 106
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showSelectBtn()V

    goto :goto_0
.end method

.method public isModelListEmpty()Z
    .locals 2

    .prologue
    .line 252
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    const/4 v0, 0x1

    .line 253
    .local v0, "ret":Z
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->isModelListEmpty()Z

    move-result v0

    .line 258
    :goto_0
    return v0

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->isModelListEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isModelListEmpty(Z)Z
    .locals 2
    .param p1, "isCamera"    # Z

    .prologue
    .line 262
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    const/4 v0, 0x0

    .line 263
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->isModelListEmpty()Z

    move-result v0

    .line 268
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->isModelListEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public loadDateComplete(ZZ)V
    .locals 2
    .param p1, "isCamera"    # Z
    .param p2, "isSuccess"    # Z

    .prologue
    .line 63
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->onStartReshAdapter()V

    .line 86
    return-void
.end method

.method public onDisConnect()V
    .locals 2

    .prologue
    .line 272
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->removeCameraDefaultVaribale()V

    .line 273
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->noDataTipCallback(Z)V

    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->reshAdapter()V

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showSelectBtn()V

    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getRlTopBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->onDisConnect()V

    .line 278
    return-void
.end method

.method public onStartReshAdapter()V
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->reshAdapter()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->reshAdapter()V

    goto :goto_0
.end method

.method public reDefaultVaribale()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->reLocalDefaultVaribale()V

    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->removeCallBack()V

    .line 123
    return-void
.end method

.method public refreshLoadDataComplete()V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    return-void
.end method

.method public removeCameraDefaultVaribale()V
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->reX9CameraDefaultVaribale()V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->removeCallBack()V

    .line 131
    return-void
.end method

.method public selectBtn(Z)V
    .locals 1
    .param p1, "selectState"    # Z

    .prologue
    .line 150
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->enterSelectAllMode()V

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->cancalSelectAllMode()V

    goto :goto_0

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->enterSelectAllMode()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->cancalSelectAllMode()V

    goto :goto_0
.end method

.method public selectFileSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 168
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->selectFileSize(I)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->selectFileSize(I)V

    goto :goto_0
.end method

.method public setCameraConnectedState(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;)V
    .locals 0
    .param p1, "iMediaCameraConnected"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;

    .prologue
    .line 281
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->iMediaCameraConnected:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;

    .line 282
    return-void
.end method

.method public switchLoadMedia()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter<TT;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v1

    if-gez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->showProgress(Z)V

    .line 204
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->noDataTipCallback(Z)V

    .line 205
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_album_connect_camera:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v1}, Lcom/fimi/album/biz/DataManager;->isX9CameraLoad()Z

    move-result v1

    if-nez v1, :cond_3

    .line 209
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->isFirstEnterCamera:Z

    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getAutoCameraStateADV()Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    move-result-object v0

    .line 211
    .local v0, "stateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isNoTFCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->isModelListEmpty(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->noDataTipCallback(Z)V

    .line 213
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showSelectBtn()V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->forCameraFolder()V

    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->noDataTipCallback(Z)V

    goto :goto_0

    .line 223
    .end local v0    # "stateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v1

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v1}, Lcom/fimi/album/biz/DataManager;->isX9CameraLoad()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->removeCameraDefaultVaribale()V

    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->reshAdapter()V

    .line 226
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->isModelListEmpty(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->noDataTipCallback(Z)V

    .line 227
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showSelectBtn()V

    goto/16 :goto_0

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->reshAdapter()V

    .line 231
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showSelectBtn()V

    .line 232
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mMediaActivity:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->showProgress(Z)V

    goto/16 :goto_0

    .line 235
    :cond_5
    const-string v1, "X8MediaPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchLoadMedia: 3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v3}, Lcom/fimi/album/biz/DataManager;->isX9LocalLoad()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
