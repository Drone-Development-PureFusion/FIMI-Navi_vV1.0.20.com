.class public abstract Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;
.super Ljava/lang/Object;
.source "X8BaseMediaFragmentPresenter.java"

# interfaces
.implements Lcom/fimi/album/iview/IRecycleAdapter;
.implements Lcom/fimi/album/iview/IHandlerCallback;
.implements Lcom/fimi/album/iview/IBroadcastPreform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IRecycleAdapter;",
        "Lcom/fimi/album/iview/IHandlerCallback;",
        "Lcom/fimi/album/iview/IBroadcastPreform;"
    }
.end annotation


# instance fields
.field private final RESH_DELETE_NOTIFY:I

.field private final RESH_NOTIFY:I

.field private final TAG:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected defaultPhtotHeight:I

.field protected defaultPhtotWidth:I

.field protected deleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected isCamera:Z

.field protected isEnterSelectMode:Z

.field protected isResh:Z

.field protected isScrollRecycle:Z

.field protected mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mHandler:Landroid/os/Handler;

.field protected mISelectData:Lcom/fimi/album/iview/ISelectData;

.field protected mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected modelList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected perfix:Ljava/lang/String;

.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field protected selectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected stateHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;Z)V
    .locals 2
    .param p1, "mRecyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "mPanelRecycleAdapter"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .param p3, "mISelectData"    # Lcom/fimi/album/iview/ISelectData;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "isCamera"    # Z

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/16 v1, 0x78

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "X9BaseMediaFragmentPren"

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    .line 68
    const-string v0, "file://"

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->perfix:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->defaultPhtotHeight:I

    .line 70
    iput v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->defaultPhtotWidth:I

    .line 73
    const/16 v0, 0x378

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->RESH_NOTIFY:I

    .line 74
    const/16 v0, 0x377

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->RESH_DELETE_NOTIFY:I

    .line 75
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mHandler:Landroid/os/Handler;

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isResh:Z

    .line 678
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 103
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 104
    iput-object p2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    .line 105
    iput-object p3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    .line 106
    iput-object p4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    .line 107
    iput-boolean p5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isCamera:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static englishConvertDigital(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "englishData"    # Ljava/lang/String;

    .prologue
    .line 779
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy.MM.dd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 780
    .local v1, "digitalSdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM/dd/yyyy"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 782
    .local v3, "englishSdf":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 784
    .local v0, "digitalData":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    .line 785
    :catch_0
    move-exception v2

    .line 786
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private preformSelectEvent(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 591
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 610
    :goto_0
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 595
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    .line 596
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz p1, :cond_2

    .line 597
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->addSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    .line 599
    invoke-virtual {v1, p1}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 594
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 602
    :cond_2
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    .line 604
    invoke-virtual {v1, p1}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    goto :goto_2

    .line 608
    .end local v1    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->notifyAllVisible()V

    .line 609
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callBackSelectSize(I)V

    goto :goto_0
.end method


# virtual methods
.method protected addSelectModel(Lcom/fimi/album/entity/MediaModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    .local p1, "mode":Lcom/fimi/album/entity/MediaModel;, "TT;"
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isHeadView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    return-void
.end method

.method public calculationSelectFileSize()J
    .locals 6

    .prologue
    .line 613
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const-wide/16 v0, 0x0

    .line 614
    .local v0, "capacity":J
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    .line 615
    .local v2, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 616
    goto :goto_0

    .line 617
    .end local v2    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return-wide v0
.end method

.method protected callAddSingleFile()V
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->addSingleFile()V

    .line 259
    :cond_0
    return-void
.end method

.method protected callAllSelectMode(Z)V
    .locals 1
    .param p1, "isAll"    # Z

    .prologue
    .line 309
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0, p1}, Lcom/fimi/album/iview/ISelectData;->allSelectMode(Z)V

    .line 312
    :cond_0
    return-void
.end method

.method protected callBackDeleteFile()V
    .locals 1

    .prologue
    .line 283
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->deleteFile()V

    .line 286
    :cond_0
    return-void
.end method

.method protected callBackEnterSelectMode()V
    .locals 1

    .prologue
    .line 265
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->enterSelectMode()V

    .line 268
    :cond_0
    return-void
.end method

.method protected callBackQuitSelectMode()V
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->quitSelectMode()V

    .line 277
    :cond_0
    return-void
.end method

.method protected callBackSelectSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 250
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->calculationSelectFileSize()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/fimi/album/iview/ISelectData;->selectSize(IJ)V

    .line 253
    :cond_0
    return-void
.end method

.method public callDeleteComplete()V
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->onDeleteComplete()V

    .line 301
    :cond_0
    return-void
.end method

.method protected callStartDownload()V
    .locals 1

    .prologue
    .line 289
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->startDownload()V

    .line 292
    :cond_0
    return-void
.end method

.method public canCalAsyncTask()V
    .locals 0

    .prologue
    .line 453
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    return-void
.end method

.method public cancalSelectAllMode()V
    .locals 1

    .prologue
    .line 584
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->preformSelectEvent(Z)V

    .line 585
    return-void
.end method

.method protected changeDownloadProgress(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "progress"    # I

    .prologue
    .line 168
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mDownloadStateView:Lcom/fimi/album/widget/DownloadStateView;

    invoke-virtual {v0, p2}, Lcom/fimi/album/widget/DownloadStateView;->setProgress(I)V

    .line 169
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mTvDownloadState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    sget v2, Lcom/example/album/R$string;->media_downlown_download:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method protected changeDownloadState(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Lcom/fimi/album/widget/DownloadStateView$State;)V
    .locals 3
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "state"    # Lcom/fimi/album/widget/DownloadStateView$State;

    .prologue
    .line 153
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mDownloadStateView:Lcom/fimi/album/widget/DownloadStateView;

    invoke-virtual {v0, p2}, Lcom/fimi/album/widget/DownloadStateView;->setState(Lcom/fimi/album/widget/DownloadStateView$State;)V

    .line 154
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOAD_FAIL:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne p2, v0, :cond_1

    .line 155
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mTvDownloadState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    sget v2, Lcom/example/album/R$string;->media_downlown_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne p2, v0, :cond_0

    .line 157
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mTvDownloadState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    sget v2, Lcom/example/album/R$string;->media_downlown_stop:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "state"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 129
    check-cast v1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;

    .line 131
    .local v1, "panelRecycleViewHolder":Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
    iget-object v2, v1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    .end local v1    # "panelRecycleViewHolder":Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 133
    check-cast v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    .line 134
    .local v0, "bodyRecycleViewHolder":Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    if-nez p3, :cond_1

    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mDownloadStateView:Lcom/fimi/album/widget/DownloadStateView;

    invoke-virtual {v2}, Lcom/fimi/album/widget/DownloadStateView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 135
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvDownloadMask:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvSelectMask:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_1
    if-nez p3, :cond_2

    .line 139
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvSelectMask:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvSelectMask:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected changeViewState(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # I
    .param p3, "resBg"    # I

    .prologue
    .line 118
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    return-void
.end method

.method protected clearSelectData()V
    .locals 1

    .prologue
    .line 318
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    return-void
.end method

.method public deleteCameraSelectFile()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/4 v6, 0x0

    .line 621
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 622
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 623
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 624
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 625
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4, v6}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 627
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v4, v3}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 623
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 632
    .end local v3    # "j":I
    :cond_2
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 633
    iput-boolean v6, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isEnterSelectMode:Z

    .line 634
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 635
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 636
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v4, v2}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 634
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 639
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callBackDeleteFile()V

    .line 640
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 641
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/fimi/widget/CustomLoadManage;->showNoClick(Landroid/content/Context;)V

    .line 644
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 645
    move v0, v1

    .line 646
    .local v0, "finalI":I
    invoke-static {}, Lcom/fimi/x8sdk/controller/CameraManager;->getInstansCameraManager()Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v5

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->deleteList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;

    invoke-direct {v6, p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$2;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;I)V

    invoke-virtual {v5, v4, v6}, Lcom/fimi/x8sdk/controller/CameraManager;->deleteOnlineFile(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 674
    .end local v0    # "finalI":I
    :cond_6
    return-void
.end method

.method public deleteSelectFile()V
    .locals 6

    .prologue
    .line 500
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/4 v4, 0x0

    .line 501
    .local v4, "startDeletePosition":Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 502
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    .line 503
    .local v2, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isContainsModel(Lcom/fimi/album/entity/MediaModel;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelPosition(Lcom/fimi/album/entity/MediaModel;)I

    move-result v3

    .line 505
    .local v3, "position":I
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v5, v3}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->remoteItem(I)V

    .line 506
    if-nez v4, :cond_0

    .line 507
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 510
    .end local v3    # "position":I
    :cond_0
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->sendBroadcastMediaScannerScanFile(Ljava/lang/String;)V

    .line 512
    invoke-static {v0}, Lcom/fimi/kernel/utils/FileTool;->deleteFile(Ljava/lang/String;)V

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->sendBroadcastUpdateDeleteItem()V

    .line 516
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->updateDeleteItems()V

    .line 517
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 518
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isEnterSelectMode:Z

    .line 519
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callBackDeleteFile()V

    .line 520
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callDeleteComplete()V

    .line 521
    return-void
.end method

.method public downLoadFile()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/4 v5, 0x0

    .line 540
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 541
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 542
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 543
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3, v5}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 544
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v3, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 540
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 547
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3, v5}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 548
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v3, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 541
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 553
    .end local v1    # "j":I
    :cond_3
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->startDownload(Ljava/util/List;)V

    .line 555
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 556
    iput-boolean v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isEnterSelectMode:Z

    .line 557
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callStartDownload()V

    .line 559
    iput-boolean v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isResh:Z

    .line 560
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 561
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 562
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3, v5}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 563
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v3, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 560
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 566
    :cond_5
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 567
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x378

    iput v3, v2, Landroid/os/Message;->what:I

    .line 568
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 569
    return-void
.end method

.method public enterSelectAllMode()V
    .locals 1

    .prologue
    .line 577
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->preformSelectEvent(Z)V

    .line 578
    return-void
.end method

.method public enterSelectMode(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 418
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isEnterSelectMode:Z

    .line 419
    if-nez p1, :cond_0

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->preformSelectEvent(Z)V

    .line 422
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->showCategorySelectView(Z)V

    .line 423
    return-void
.end method

.method protected getModel(I)Lcom/fimi/album/entity/MediaModel;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->getOriginalData()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 215
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    goto :goto_0
.end method

.method protected getOriginalData()V
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 196
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataHash()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 200
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getDataHash()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    goto :goto_0
.end method

.method protected goMediaDetailActivity(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 461
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    const-class v6, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    .line 464
    .local v4, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    const-string v5, "moweiru"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaModel===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 466
    .local v1, "formatDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 467
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    const/4 v0, 0x0

    .line 468
    .local v0, "dataPosition":I
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 469
    if-eqz v1, :cond_2

    .line 470
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 475
    :cond_3
    const-string v5, "selectPosition"

    sub-int v6, p1, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string/jumbo v5, "zhej"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "goMediaDetailActivity: modelList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, p1, v0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected isContainsModel(Lcom/fimi/album/entity/MediaModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    .local p1, "model":Lcom/fimi/album/entity/MediaModel;, "TT;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->getOriginalData()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isModelListEmpty()Z
    .locals 2

    .prologue
    .line 729
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/4 v0, 0x1

    .line 730
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 733
    :cond_0
    return v0
.end method

.method protected modelPosition(Lcom/fimi/album/entity/MediaModel;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    .local p1, "model":Lcom/fimi/album/entity/MediaModel;, "TT;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->getOriginalData()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public notifyAddCallback(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 792
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callAddSingleFile()V

    .line 793
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isEnterSelectMode:Z

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->preformDataSelect(Lcom/fimi/album/entity/MediaModel;)V

    .line 795
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 796
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callAllSelectMode(Z)V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callAllSelectMode(Z)V

    goto :goto_0
.end method

.method protected notifyAllVisible()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/4 v3, -0x1

    .line 740
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_4

    .line 742
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 743
    .local v0, "firstVisibleItem":I
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 744
    .local v1, "lastVisibleItem":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 762
    .end local v0    # "firstVisibleItem":I
    .end local v1    # "lastVisibleItem":I
    :cond_0
    :goto_0
    return-void

    .line 747
    .restart local v0    # "firstVisibleItem":I
    .restart local v1    # "lastVisibleItem":I
    :cond_1
    add-int/lit8 v2, v0, -0x14

    if-lez v2, :cond_2

    .line 748
    add-int/lit8 v0, v0, -0x14

    .line 752
    :goto_1
    add-int/lit8 v2, v1, 0x14

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 753
    add-int/lit8 v1, v1, 0x14

    .line 757
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 750
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 755
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_2

    .line 759
    .end local v0    # "firstVisibleItem":I
    .end local v1    # "lastVisibleItem":I
    :cond_4
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 488
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteItemAction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    const-string v1, "deleteItem"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 490
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->updateDeleteItem(I)V

    .line 494
    .end local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return-void
.end method

.method protected preformDataSelect(Lcom/fimi/album/entity/MediaModel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    .local p1, "mode":Lcom/fimi/album/entity/MediaModel;, "TT;"
    const/4 v8, 0x0

    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, "firstIndex":I
    const/4 v0, 0x0

    .line 379
    .local v0, "count":I
    const/4 v4, 0x0

    .line 380
    .local v4, "selectCount":I
    const/4 v3, 0x0

    .line 381
    .local v3, "isEnter":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 382
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v8

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 383
    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    .line 382
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 384
    if-nez v3, :cond_3

    .line 385
    move v1, v2

    .line 392
    :cond_0
    :goto_2
    const/4 v3, 0x1

    .line 381
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :cond_2
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    goto :goto_1

    .line 387
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 388
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 394
    :cond_4
    if-eqz v3, :cond_1

    .line 399
    :cond_5
    if-ne v0, v4, :cond_7

    .line 400
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v5

    if-nez v5, :cond_6

    .line 401
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 402
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v5, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    .line 410
    :cond_6
    :goto_3
    return-void

    .line 405
    :cond_7
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 406
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5, v8}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 407
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v5, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    goto :goto_3
.end method

.method protected preformMode(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p2, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    .local p1, "model":Lcom/fimi/album/entity/MediaModel;, "TT;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    move-object v0, p2

    check-cast v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    .line 348
    .local v0, "bodyRecycleViewHolder":Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mDownloadStateView:Lcom/fimi/album/widget/DownloadStateView;

    invoke-virtual {v1}, Lcom/fimi/album/widget/DownloadStateView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v1

    if-nez v1, :cond_2

    .line 352
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->addSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    .line 353
    invoke-virtual {p1, v5}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 354
    invoke-virtual {p0, p1, p2, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 363
    :goto_1
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->preformDataSelect(Lcom/fimi/album/entity/MediaModel;)V

    .line 364
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 365
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callAllSelectMode(Z)V

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    .line 358
    invoke-virtual {p1, v4}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 359
    const/16 v1, 0x8

    invoke-virtual {p0, p1, p2, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->changeSelectViewState(Lcom/fimi/album/entity/MediaModel;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 367
    :cond_3
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->callAllSelectMode(Z)V

    goto :goto_0
.end method

.method public querySelectSize()I
    .locals 1

    .prologue
    .line 437
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public refreshData()V
    .locals 0

    .prologue
    .line 444
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->getOriginalData()V

    .line 445
    return-void
.end method

.method public abstract registerDownloadListerner()V
.end method

.method public abstract registerReciver()V
.end method

.method protected removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    .local p1, "mode":Lcom/fimi/album/entity/MediaModel;, "TT;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public sendBroadcastMediaScannerScanFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 770
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    if-eqz p1, :cond_0

    .line 771
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 773
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 774
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 776
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public sendBroadcastUpdateDeleteItem()V
    .locals 3

    .prologue
    .line 528
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 529
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 531
    const-string v2, "LOCALFILEDELETEEIVER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v2, "LOCLAFILEDELETEITEM"

    check-cast v1, Ljava/io/Serializable;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 533
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 534
    return-void
.end method

.method public setEnterSelectMode(Z)V
    .locals 0
    .param p1, "enterSelectMode"    # Z

    .prologue
    .line 426
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isEnterSelectMode:Z

    .line 427
    return-void
.end method

.method public abstract showCategorySelectView(Z)V
.end method

.method protected showDownloadImg(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Z)V
    .locals 4
    .param p1, "holder"    # Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    .param p2, "isShow"    # Z

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter<TT;>;"
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 177
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mDownloadStateView:Lcom/fimi/album/widget/DownloadStateView;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/fimi/album/widget/DownloadStateView;->setVisibility(I)V

    .line 178
    iget-object v3, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mTvDownloadState:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvSelectMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvDownloadMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    :cond_1
    move v0, v2

    .line 178
    goto :goto_1

    .line 182
    :cond_2
    if-eqz p2, :cond_3

    .line 183
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvSelectMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvDownloadMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 186
    :cond_3
    iget-object v0, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvDownloadMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public abstract unRegisterReciver()V
.end method
