.class public Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MediaDetailViewPaperAdapter.java"


# instance fields
.field private mIViewpaper:Lcom/fimi/album/iview/IViewpaper;

.field private mdataManager:Lcom/fimi/album/biz/DataManager;

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


# direct methods
.method public constructor <init>(Lcom/fimi/album/iview/IViewpaper;)V
    .locals 1
    .param p1, "mIViewpaper"    # Lcom/fimi/album/iview/IViewpaper;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 22
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    .line 27
    iput-object p1, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->mIViewpaper:Lcom/fimi/album/iview/IViewpaper;

    .line 28
    invoke-direct {p0}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->initData()V

    .line 29
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0
.end method


# virtual methods
.method public deleteItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 72
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->mIViewpaper:Lcom/fimi/album/iview/IViewpaper;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->mIViewpaper:Lcom/fimi/album/iview/IViewpaper;

    invoke-interface {v0, p1, p2}, Lcom/fimi/album/iview/IViewpaper;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 49
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
