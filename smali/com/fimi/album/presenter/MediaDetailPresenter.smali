.class public Lcom/fimi/album/presenter/MediaDetailPresenter;
.super Ljava/lang/Object;
.source "MediaDetailPresenter.java"

# interfaces
.implements Lcom/fimi/album/iview/IViewpaper;
.implements Lme/relex/photodraweeview/OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/ui/MediaDetailActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IViewpaper;",
        "Lme/relex/photodraweeview/OnPhotoTapListener;"
    }
.end annotation


# instance fields
.field private cacheContainer:Landroid/view/ViewGroup;

.field private defaultDisplayHeight:I

.field private defaultDisplayWidth:I

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

.field private mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

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
.method public constructor <init>(Lcom/fimi/album/ui/MediaDetailActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p2, "viewPaper"    # Landroid/support/v4/view/ViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v4/view/ViewPager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    .local p1, "activity":Lcom/fimi/album/ui/MediaDetailActivity;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "file://"

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->perfix:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    .line 50
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/ui/MediaDetailActivity;

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    .line 51
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->defaultDisplayWidth:I

    .line 52
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->defaultDisplayHeight:I

    .line 53
    iput-object p2, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->viewPaper:Landroid/support/v4/view/ViewPager;

    .line 54
    invoke-direct {p0}, Lcom/fimi/album/presenter/MediaDetailPresenter;->initData()V

    .line 55
    return-void
.end method

.method private goVideoPlayActivity(Lcom/fimi/album/adapter/MediaDetialViewHolder;I)V
    .locals 4
    .param p1, "mMediaDetialViewHolder"    # Lcom/fimi/album/adapter/MediaDetialViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 144
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    iget-object v2, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 145
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    const-class v3, Lcom/fimi/album/ui/VideoPlayActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "videoPlayUrl"

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v2, v0}, Lcom/fimi/album/ui/MediaDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mDataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0
.end method

.method private initItemData(Lcom/fimi/album/adapter/MediaDetialViewHolder;ILcom/fimi/album/entity/MediaModel;)V
    .locals 7
    .param p1, "mMediaDetialViewHolder"    # Lcom/fimi/album/adapter/MediaDetialViewHolder;
    .param p2, "position"    # I
    .param p3, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 91
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v3}, Lcom/fimi/album/ui/MediaDetailActivity;->getPhotoText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "file":Ljava/io/File;
    const-string v2, ""

    .line 95
    .local v2, "fileUrl":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->perfix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    :goto_0
    iget-object v3, p1, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    iget-object v3, p1, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mPhotoDraweeView:Lme/relex/photodraweeview/PhotoDraweeView;

    invoke-virtual {v3, p0}, Lme/relex/photodraweeview/PhotoDraweeView;->setOnPhotoTapListener(Lme/relex/photodraweeview/OnPhotoTapListener;)V

    .line 108
    iget-object v3, p1, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mPhotoDraweeView:Lme/relex/photodraweeview/PhotoDraweeView;

    iget v4, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->defaultDisplayWidth:I

    iget v5, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->defaultDisplayHeight:I

    new-instance v6, Lcom/fimi/album/presenter/MediaDetailPresenter$1;

    invoke-direct {v6, p0, p1}, Lcom/fimi/album/presenter/MediaDetailPresenter$1;-><init>(Lcom/fimi/album/presenter/MediaDetailPresenter;Lcom/fimi/album/adapter/MediaDetialViewHolder;)V

    invoke-static {v3, v2, v4, v5, v6}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;IILcom/facebook/drawee/controller/ControllerListener;)V

    .line 135
    return-void

    .line 98
    :cond_0
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->getThumFileUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public deleteItem(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 154
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    .line 156
    .local v2, "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v1, "deleteIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "deleteItem"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    const-string v3, "deleteItemAction"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v3}, Lcom/fimi/album/ui/MediaDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 162
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->viewPaper:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    invoke-virtual {v3, p1}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->deleteItem(I)V

    .line 163
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fimi/kernel/utils/FileTool;->deleteFile(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v3}, Lcom/fimi/album/ui/MediaDetailActivity;->finish()V

    .line 170
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "deleteIntent":Landroid/content/Intent;
    .end local v2    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v3}, Lcom/fimi/album/ui/MediaDetailActivity;->finish()V

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 70
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 71
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    iget-object v3, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v3}, Lcom/fimi/album/ui/MediaDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/example/album/R$layout;->album_adapter_detail_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/fimi/album/adapter/MediaDetialViewHolder;

    invoke-direct {v2, v1}, Lcom/fimi/album/adapter/MediaDetialViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    .local v2, "viewHolder":Lcom/fimi/album/adapter/MediaDetialViewHolder;
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 74
    iput-object p1, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->cacheContainer:Landroid/view/ViewGroup;

    .line 75
    invoke-direct {p0, v2, p2, v0}, Lcom/fimi/album/presenter/MediaDetailPresenter;->initItemData(Lcom/fimi/album/adapter/MediaDetialViewHolder;ILcom/fimi/album/entity/MediaModel;)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    return-object v1
.end method

.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getLlHeadViewGroup()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getLlHeadViewGroup()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getRlHeadDirection()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getRlHeadDirection()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    :goto_1
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getLlHeadViewGroup()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getRlHeadDirection()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateFileName(I)V
    .locals 2
    .param p1, "currentSelectPosition"    # I

    .prologue
    .line 189
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->getPhotoText()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method

.method public updateItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/fimi/album/presenter/MediaDetailPresenter;, "Lcom/fimi/album/presenter/MediaDetailPresenter<TT;>;"
    iget-object v1, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 87
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    iget-object v1, p0, Lcom/fimi/album/presenter/MediaDetailPresenter;->mMediaActivity:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v1}, Lcom/fimi/album/ui/MediaDetailActivity;->getPhotoText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
