.class public Lcom/fimi/album/presenter/X9CameraPrensenter;
.super Lcom/fimi/album/presenter/BaseFragmentPresenter;
.source "X9CameraPrensenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Lcom/fimi/album/presenter/BaseFragmentPresenter;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private defaultBound:I

.field private durationHandler:Landroid/os/Handler;

.field private mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/album/adapter/PanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;)V
    .locals 2
    .param p1, "mRecyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "mPanelRecycleAdapter"    # Lcom/fimi/album/adapter/PanelRecycleAdapter;
    .param p3, "mISelectData"    # Lcom/fimi/album/iview/ISelectData;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fimi/album/presenter/BaseFragmentPresenter;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/album/adapter/PanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;)V

    .line 31
    const/16 v1, 0x32

    iput v1, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->defaultBound:I

    .line 35
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->durationHandler:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->mainHandler:Landroid/os/Handler;

    .line 37
    invoke-direct {p0}, Lcom/fimi/album/presenter/X9CameraPrensenter;->doTrans()V

    .line 38
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 39
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iput-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/presenter/X9CameraPrensenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/presenter/X9CameraPrensenter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->durationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/album/presenter/X9CameraPrensenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/presenter/X9CameraPrensenter;

    .prologue
    .line 27
    iget v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->defaultBound:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/album/presenter/X9CameraPrensenter;Lcom/fimi/album/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/album/presenter/X9CameraPrensenter;
    .param p1, "x1"    # Lcom/fimi/album/adapter/PanelRecycleViewHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/album/presenter/X9CameraPrensenter;->onItemCategoryClick(Lcom/fimi/album/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/album/presenter/X9CameraPrensenter;Lcom/fimi/album/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/album/presenter/X9CameraPrensenter;
    .param p1, "x1"    # Lcom/fimi/album/adapter/BodyRecycleViewHolder;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/album/presenter/X9CameraPrensenter;->onItemLongClick(Lcom/fimi/album/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V

    return-void
.end method

.method private doBodyTrans(Lcom/fimi/album/adapter/BodyRecycleViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/fimi/album/adapter/BodyRecycleViewHolder;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 159
    invoke-virtual {p0, p2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    .line 160
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1, p2}, Lcom/fimi/album/entity/MediaModel;->setItemPosition(I)V

    .line 161
    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "currentFilePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isLoadThulm()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setTag(Ljava/lang/Object;)V

    .line 171
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->perfix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->defaultPhtotWidth:I

    iget v5, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->defaultPhtotHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 172
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/album/entity/MediaModel;->setLoadThulm(Z)V

    .line 179
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->tvDuringdate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->tvDuringdate:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->tvDuringdate:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->isEnterSelectMode:Z

    if-eqz v2, :cond_7

    .line 190
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    sget v3, Lcom/example/album/R$drawable;->album_icon_share_media_active:I

    invoke-virtual {p0, v2, v6, v3}, Lcom/fimi/album/presenter/X9CameraPrensenter;->changeViewState(Landroid/view/View;II)V

    .line 203
    :goto_3
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Lcom/fimi/album/presenter/X9CameraPrensenter$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/fimi/album/presenter/X9CameraPrensenter$4;-><init>(Lcom/fimi/album/presenter/X9CameraPrensenter;Lcom/fimi/album/adapter/BodyRecycleViewHolder;I)V

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Lcom/fimi/album/presenter/X9CameraPrensenter$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/fimi/album/presenter/X9CameraPrensenter$5;-><init>(Lcom/fimi/album/presenter/X9CameraPrensenter;Lcom/fimi/album/adapter/BodyRecycleViewHolder;I)V

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 174
    :cond_4
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 175
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->perfix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->defaultPhtotWidth:I

    iget v5, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->defaultPhtotHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    goto :goto_1

    .line 186
    :cond_5
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->tvDuringdate:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 193
    :cond_6
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    sget v3, Lcom/example/album/R$drawable;->album_icon_share_media_nomal:I

    invoke-virtual {p0, v2, v6, v3}, Lcom/fimi/album/presenter/X9CameraPrensenter;->changeViewState(Landroid/view/View;II)V

    goto :goto_3

    .line 196
    :cond_7
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 197
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    sget v3, Lcom/example/album/R$drawable;->album_icon_share_media_active:I

    invoke-virtual {p0, v2, v6, v3}, Lcom/fimi/album/presenter/X9CameraPrensenter;->changeViewState(Landroid/view/View;II)V

    goto :goto_3

    .line 199
    :cond_8
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    sget v3, Lcom/example/album/R$drawable;->album_icon_share_media_nomal:I

    invoke-virtual {p0, v2, v7, v3}, Lcom/fimi/album/presenter/X9CameraPrensenter;->changeViewState(Landroid/view/View;II)V

    goto :goto_3
.end method

.method private doPanelTrans(Lcom/fimi/album/adapter/PanelRecycleViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/fimi/album/adapter/PanelRecycleViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 105
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    invoke-virtual {p0, p2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    .line 106
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->tvTitleDescription:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->ivIconSelect:Landroid/widget/ImageView;

    sget v2, Lcom/example/album/R$drawable;->album_btn_category_select_press:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v1, p1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->tvAllSelect:Landroid/widget/TextView;

    sget v2, Lcom/example/album/R$string;->media_select_all_no:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->rlRightSelect:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/fimi/album/presenter/X9CameraPrensenter$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/fimi/album/presenter/X9CameraPrensenter$3;-><init>(Lcom/fimi/album/presenter/X9CameraPrensenter;Lcom/fimi/album/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void

    .line 112
    :cond_1
    iget-object v1, p1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->ivIconSelect:Landroid/widget/ImageView;

    sget v2, Lcom/example/album/R$drawable;->album_btn_category_select_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v1, p1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->tvAllSelect:Landroid/widget/TextView;

    sget v2, Lcom/example/album/R$string;->media_select_all:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private doTrans()V
    .locals 2

    .prologue
    .line 45
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/album/presenter/X9CameraPrensenter$1;

    invoke-direct {v1, p0}, Lcom/fimi/album/presenter/X9CameraPrensenter$1;-><init>(Lcom/fimi/album/presenter/X9CameraPrensenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    .line 56
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/album/presenter/X9CameraPrensenter$2;

    invoke-direct {v1, p0}, Lcom/fimi/album/presenter/X9CameraPrensenter$2;-><init>(Lcom/fimi/album/presenter/X9CameraPrensenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 75
    return-void
.end method

.method private onItemCategoryClick(Lcom/fimi/album/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V
    .locals 4
    .param p1, "holder"    # Lcom/fimi/album/adapter/PanelRecycleViewHolder;
    .param p2, "position"    # I
    .param p3, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 125
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    if-eqz p3, :cond_0

    .line 126
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "formatDate":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    .local v1, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    iget-object v2, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->context:Landroid/content/Context;

    sget v3, Lcom/example/album/R$string;->media_select_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->tvAllSelect:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->perfomSelectCategory(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V

    .line 135
    .end local v0    # "formatDate":Ljava/lang/String;
    .end local v1    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v0    # "formatDate":Ljava/lang/String;
    .restart local v1    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->perfomSelectCategory(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V

    goto :goto_0
.end method

.method private onItemLongClick(Lcom/fimi/album/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 6
    .param p1, "holder"    # Lcom/fimi/album/adapter/BodyRecycleViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 228
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->isEnterSelectMode:Z

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->isEnterSelectMode:Z

    .line 230
    invoke-virtual {p0}, Lcom/fimi/album/presenter/X9CameraPrensenter;->callBackEnterSelectMode()V

    .line 232
    :cond_0
    invoke-virtual {p0, p3}, Lcom/fimi/album/presenter/X9CameraPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lcom/example/album/R$drawable;->album_icon_share_media_active:I

    sget v5, Lcom/example/album/R$drawable;->album_icon_share_media_nomal:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/album/presenter/X9CameraPrensenter;->preformMode(Lcom/fimi/album/entity/MediaModel;Landroid/view/View;III)V

    .line 233
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/album/presenter/X9CameraPrensenter;->callBackSelectSize(I)V

    .line 234
    return-void
.end method

.method private perfomSelectCategory(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V
    .locals 5
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
    .line 138
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    .local p1, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    .line 139
    .local v2, "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz p2, :cond_0

    .line 140
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->addSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 143
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 147
    .end local v2    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    iget-object v3, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 148
    .local v0, "firstVisibleItem":I
    iget-object v3, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 149
    .local v1, "lastVisibleItem":I
    iget-object v3, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->mPanelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/fimi/album/adapter/PanelRecycleAdapter;->notifyItemRangeChanged(II)V

    .line 150
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 80
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 91
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    instance-of v0, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->doBodyTrans(Lcom/fimi/album/adapter/BodyRecycleViewHolder;I)V

    .line 96
    :goto_0
    return-void

    .line 94
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    check-cast p1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->doPanelTrans(Lcom/fimi/album/adapter/PanelRecycleViewHolder;I)V

    goto :goto_0
.end method

.method public onItemClick(Lcom/fimi/album/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 6
    .param p1, "holder"    # Lcom/fimi/album/adapter/BodyRecycleViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 244
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter;, "Lcom/fimi/album/presenter/X9CameraPrensenter<TT;>;"
    invoke-virtual {p0, p3}, Lcom/fimi/album/presenter/X9CameraPrensenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    .line 245
    .local v1, "currentMode":Lcom/fimi/album/entity/MediaModel;
    iget-boolean v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->isEnterSelectMode:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v2, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lcom/example/album/R$drawable;->album_icon_share_media_active:I

    sget v5, Lcom/example/album/R$drawable;->album_icon_share_media_nomal:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/album/presenter/X9CameraPrensenter;->preformMode(Lcom/fimi/album/entity/MediaModel;Landroid/view/View;III)V

    .line 247
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/album/presenter/X9CameraPrensenter;->callBackSelectSize(I)V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/album/presenter/X9CameraPrensenter;->goMediaDetailActivity(I)V

    goto :goto_0
.end method
