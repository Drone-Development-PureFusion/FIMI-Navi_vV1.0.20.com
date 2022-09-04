.class public Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;
.super Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;
.source "X8LocalFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "X9LocalFragmentPresente"

.field public static final UPDATELOCALITEM:Ljava/lang/String; = "UPDATELOCALITEM"

.field public static final UPDATELOCALITEMRECEIVER:Ljava/lang/String; = "UPDATELOCALITEMRECEIVER"


# instance fields
.field private defaultBound:I

.field private durationHandler:Landroid/os/Handler;

.field private mUpdateLocalItemReceiver:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter",
            "<TT;>.Update",
            "LocalItemReceiver;"
        }
    .end annotation
.end field

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;)V
    .locals 7
    .param p1, "mRecyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "mPanelRecycleAdapter"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .param p3, "mISelectData"    # Lcom/fimi/album/iview/ISelectData;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;Z)V

    .line 45
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->defaultBound:I

    .line 49
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->durationHandler:Landroid/os/Handler;

    .line 50
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mainHandler:Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->doTrans()V

    .line 52
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 53
    .local v6, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v0, v6, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 54
    check-cast v6, Landroid/support/v7/widget/GridLayoutManager;

    .end local v6    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iput-object v6, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->registerReciver()V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isScrollRecycle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->durationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    .prologue
    .line 38
    iget v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->defaultBound:I

    return v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isScrollRecycle:Z

    return p1
.end method

.method static synthetic access$402(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isScrollRecycle:Z

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;
    .param p1, "x1"    # Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->onItemCategoryClick(Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;
    .param p1, "x1"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->onItemLongClick(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    return-object v0
.end method

.method private doBodyTrans(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 249
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    .line 250
    .local v2, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-nez v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {v2, p2}, Lcom/fimi/album/entity/MediaModel;->setItemPosition(I)V

    .line 254
    const/4 v3, 0x0

    .line 255
    .local v3, "photoUrl":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "currentFilePath":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getThumLocalFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 257
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getThumLocalFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getThumLocalFilePath()Ljava/lang/String;

    move-result-object v3

    .line 265
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 274
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->album_video_loading:I

    invoke-virtual {v4, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setBackgroundResource(I)V

    .line 279
    :goto_2
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 281
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mFileSize:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/fimi/kernel/utils/ByteUtil;->getNetFileSizeDescription(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_3
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isLoadThulm()Z

    move-result v4

    if-nez v4, :cond_8

    .line 286
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setTag(Ljava/lang/Object;)V

    .line 287
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->perfix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->defaultPhtotWidth:I

    iget v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->defaultPhtotHeight:I

    invoke-static {v4, v5, v6, v7}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 288
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/fimi/album/entity/MediaModel;->setLoadThulm(Z)V

    .line 296
    :cond_3
    :goto_4
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 297
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvVideoFlag:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_ablumn_normal_vedio_mark:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    invoke-virtual {v4, v0}, Lcom/fimi/album/widget/MediaStrokeTextView;->setTag(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 300
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    invoke-virtual {v4, v8}, Lcom/fimi/album/widget/MediaStrokeTextView;->setVisibility(I)V

    .line 301
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/album/widget/MediaStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_4
    :goto_5
    iget-boolean v4, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isEnterSelectMode:Z

    if-eqz v4, :cond_b

    .line 310
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 311
    invoke-virtual {p0, v2, p1, v8}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 323
    :goto_6
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v5, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;

    invoke-direct {v5, p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V

    invoke-virtual {v4, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v5, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$5;

    invoke-direct {v5, p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$5;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V

    invoke-virtual {v4, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 262
    :cond_5
    move-object v3, v0

    goto/16 :goto_1

    .line 276
    :cond_6
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->album_photo_loading:I

    invoke-virtual {v4, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 283
    :cond_7
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mFileSize:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 290
    :cond_8
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 291
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setTag(Ljava/lang/Object;)V

    .line 292
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->perfix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->defaultPhtotWidth:I

    iget v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->defaultPhtotHeight:I

    invoke-static {v4, v5, v6, v7}, Lcom/fimi/kernel/utils/FrescoUtils;->displayPhoto(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    goto/16 :goto_4

    .line 305
    :cond_9
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvVideoFlag:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_ablumn_normal_photo_mark:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v4, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/fimi/album/widget/MediaStrokeTextView;->setVisibility(I)V

    goto :goto_5

    .line 313
    :cond_a
    invoke-virtual {p0, v2, p1, v9}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_6

    .line 316
    :cond_b
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 317
    invoke-virtual {p0, v2, p1, v8}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_6

    .line 319
    :cond_c
    invoke-virtual {p0, v2, p1, v9}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_6
.end method

.method private doHeadTrans(Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;I)V
    .locals 8
    .param p1, "headRecyleViewHolder"    # Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 146
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;->mTvHeard:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_album_head_title:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/album/biz/DataManager;->getLocalVideoCount()J

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

    .line 148
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/album/biz/DataManager;->getLocalPhotoCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method private doPanelTrans(Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    .line 161
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->tvTitleDescription:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_select:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    new-instance v2, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$3;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isEnterSelectMode:Z

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :goto_1
    return-void

    .line 178
    :cond_1
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_unselect:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private doTrans()V
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$1;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 90
    return-void
.end method

.method private onItemCategoryClick(Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V
    .locals 6
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
    .param p2, "position"    # I
    .param p3, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    const/4 v5, 0x0

    .line 200
    if-eqz p3, :cond_0

    .line 201
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 202
    .local v0, "formatDate":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 203
    .local v1, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    const-string v2, "moweiru"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(mediaModel.isSelect():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p3}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-direct {p0, v1, v5}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->perfomSelectCategory(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V

    .line 215
    .end local v0    # "formatDate":Ljava/lang/String;
    .end local v1    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v0    # "formatDate":Ljava/lang/String;
    .restart local v1    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->perfomSelectCategory(Ljava/util/concurrent/CopyOnWriteArrayList;Z)V

    goto :goto_0
.end method

.method private onItemLongClick(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 1
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 348
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isEnterSelectMode:Z

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isEnterSelectMode:Z

    .line 350
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->callBackEnterSelectMode()V

    .line 352
    :cond_0
    invoke-virtual {p0, p3}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->preformMode(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 354
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->callBackSelectSize(I)V

    .line 355
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
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    .local p1, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/album/entity/MediaModel;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
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

    .line 219
    .local v0, "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz p2, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    invoke-virtual {v0, v5}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->addSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v0, v4}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 232
    .end local v0    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->notifyAllVisible()V

    .line 233
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->callBackSelectSize(I)V

    .line 235
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 236
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->callAllSelectMode(Z)V

    .line 240
    :goto_1
    return-void

    .line 238
    :cond_3
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->callAllSelectMode(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 95
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v10, :cond_3

    iget-object v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v7, :cond_3

    .line 96
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 97
    .local v2, "firstVisibleItem":I
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 98
    .local v3, "lastVisibleItem":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    .line 125
    .end local v2    # "firstVisibleItem":I
    .end local v3    # "lastVisibleItem":I
    :cond_0
    :goto_0
    return v10

    .line 101
    .restart local v2    # "firstVisibleItem":I
    .restart local v3    # "lastVisibleItem":I
    :cond_1
    if-gt v2, v3, :cond_0

    .line 102
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v4

    .line 103
    .local v4, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getVideoDuration()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fimi/kernel/utils/VideoDuration;->getVideoDuration(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    const-string v7, "mm:ss"

    invoke-static {v8, v9, v7}, Lcom/fimi/kernel/utils/DateFormater;->dateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "time":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/fimi/album/entity/MediaModel;->setVideoDuration(Ljava/lang/String;)V

    .line 106
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 107
    .local v6, "updateMessage":Landroid/os/Message;
    const/4 v7, 0x2

    iput v7, v6, Landroid/os/Message;->what:I

    .line 108
    iput v2, v6, Landroid/os/Message;->arg1:I

    .line 109
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "updateMessage":Landroid/os/Message;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 112
    iget-boolean v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isScrollRecycle:Z

    if-eqz v7, :cond_1

    .line 113
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->durationHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v2    # "firstVisibleItem":I
    .end local v3    # "lastVisibleItem":I
    .end local v4    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v8, :cond_0

    .line 119
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 120
    .local v0, "currentPsition":I
    iget-object v7, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v7, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 136
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    instance-of v0, p1, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->doHeadTrans(Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;I)V

    .line 143
    :goto_0
    return-void

    .line 138
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    instance-of v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    if-eqz v0, :cond_1

    .line 139
    check-cast p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->doBodyTrans(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V

    goto :goto_0

    .line 141
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    check-cast p1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->doPanelTrans(Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;I)V

    goto :goto_0
.end method

.method public onItemClick(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 365
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    invoke-virtual {p0, p3}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    .line 366
    .local v0, "currentMode":Lcom/fimi/album/entity/MediaModel;
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->isEnterSelectMode:Z

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0, v0, p1}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->preformMode(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 369
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->callBackSelectSize(I)V

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->goMediaDetailActivity(I)V

    goto :goto_0
.end method

.method public registerDownloadListerner()V
    .locals 0

    .prologue
    .line 404
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    return-void
.end method

.method public registerReciver()V
    .locals 3

    .prologue
    .line 395
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mUpdateLocalItemReceiver:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;

    .line 396
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "UPDATELOCALITEMRECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mUpdateLocalItemReceiver:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 399
    return-void
.end method

.method public showCategorySelectView(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 378
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 379
    .local v0, "firstVisibleItem":I
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 380
    .local v1, "lastVisibleItem":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 390
    :cond_0
    return-void

    .line 383
    :cond_1
    :goto_0
    if-gt v0, v1, :cond_0

    .line 384
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    .line 385
    .local v2, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v3, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 388
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 389
    goto :goto_0
.end method

.method public unRegisterReciver()V
    .locals 2

    .prologue
    .line 408
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->mUpdateLocalItemReceiver:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$UpdateLocalItemReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    return-void
.end method
