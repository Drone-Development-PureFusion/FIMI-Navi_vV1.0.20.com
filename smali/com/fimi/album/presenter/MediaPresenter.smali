.class public Lcom/fimi/album/presenter/MediaPresenter;
.super Ljava/lang/Object;
.source "MediaPresenter.java"

# interfaces
.implements Lcom/fimi/album/iview/IDateHandler;


# annotations
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

.field private mMediaActivity:Lcom/fimi/album/ui/MediaActivity;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter;, "Lcom/fimi/album/presenter/MediaPresenter<TT;>;"
    .local p1, "activity":Landroid/app/Activity;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    .line 29
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/ui/MediaActivity;

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaActivity;

    .line 30
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0, p0}, Lcom/fimi/album/biz/DataManager;->setIdataImpl(Lcom/fimi/album/iview/IDateHandler;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/presenter/MediaPresenter;)Lcom/fimi/album/ui/MediaActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/presenter/MediaPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaActivity;

    return-object v0
.end method


# virtual methods
.method public enterSelectMode(ZZ)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "isNeedPreform"    # Z

    .prologue
    .line 99
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter;, "Lcom/fimi/album/presenter/MediaPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaActivity;->getLocalFragment()Lcom/fimi/album/ui/albumfragment/LocalFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fimi/album/ui/albumfragment/LocalFragment;->enterSelectMode(ZZ)V

    .line 100
    return-void
.end method

.method public forEachFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 55
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter;, "Lcom/fimi/album/presenter/MediaPresenter<TT;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/fimi/album/presenter/MediaPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaActivity;

    invoke-virtual {v1}, Lcom/fimi/album/ui/MediaActivity;->getmProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/fimi/album/presenter/MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/album/biz/DataManager;->forEachFolder(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public loadDateComplete(ZZ)V
    .locals 2
    .param p1, "isCamera"    # Z
    .param p2, "isSuccess"    # Z

    .prologue
    .line 35
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter;, "Lcom/fimi/album/presenter/MediaPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fimi/album/presenter/MediaPresenter$1;

    invoke-direct {v1, p0}, Lcom/fimi/album/presenter/MediaPresenter$1;-><init>(Lcom/fimi/album/presenter/MediaPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    invoke-virtual {p0}, Lcom/fimi/album/presenter/MediaPresenter;->onStartReshAdapter()V

    .line 42
    return-void
.end method

.method public onStartReshAdapter()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter;, "Lcom/fimi/album/presenter/MediaPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaActivity;->getLocalFragment()Lcom/fimi/album/ui/albumfragment/LocalFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/ui/albumfragment/LocalFragment;->reshAdapter()V

    .line 77
    return-void
.end method

.method public reDefaultVaribale()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter;, "Lcom/fimi/album/presenter/MediaPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->reLocalDefaultVaribale()V

    .line 69
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->removeCallBack()V

    .line 70
    return-void
.end method

.method public refreshLoadDataComplete()V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter;, "Lcom/fimi/album/presenter/MediaPresenter<TT;>;"
    return-void
.end method

.method public selectBtn(Z)V
    .locals 1
    .param p1, "selectState"    # Z

    .prologue
    .line 85
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter;, "Lcom/fimi/album/presenter/MediaPresenter<TT;>;"
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaActivity;->getLocalFragment()Lcom/fimi/album/ui/albumfragment/LocalFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/ui/albumfragment/LocalFragment;->enterSelectAllMode()V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaActivity;->getLocalFragment()Lcom/fimi/album/ui/albumfragment/LocalFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/ui/albumfragment/LocalFragment;->cancalSelectAllMode()V

    goto :goto_0
.end method
