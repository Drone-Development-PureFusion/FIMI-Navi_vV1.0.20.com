.class public Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "X8sPanelRecycleAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field public static final HEADTYPE:I = 0x30

.field public static final ITEMBODYTYPE:I = 0x20

.field public static final ITEMHEADTYPE:I = 0x10

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private bodySpanCount:I

.field private context:Landroid/content/Context;

.field private headCount:I

.field private headSpanCount:I

.field private internalListBound:I

.field private isCamera:Z

.field private mINodataTip:Lcom/fimi/album/iview/INodataTip;

.field private mIRecycleAdapter:Lcom/fimi/album/iview/IRecycleAdapter;

.field private mainHandler:Landroid/os/Handler;

.field private mdataManager:Lcom/fimi/album/biz/DataManager;

.field private modelList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private otherHandler:Landroid/os/Handler;

.field private stateHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/fimi/album/iview/INodataTip;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCamera"    # Z
    .param p3, "mINodataTip"    # Lcom/fimi/album/iview/INodataTip;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    const/4 v1, 0x4

    .line 69
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    .line 49
    iput v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->headSpanCount:I

    .line 51
    iput v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->headCount:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->bodySpanCount:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->internalListBound:I

    .line 70
    iput-boolean p2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->isCamera:Z

    .line 71
    invoke-direct {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->initData()V

    .line 72
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->context:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->otherHandler:Landroid/os/Handler;

    .line 74
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mainHandler:Landroid/os/Handler;

    .line 75
    iput-object p3, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->isHeadView(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->headCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->isCategoryType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->headSpanCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->bodySpanCount:I

    return v0
.end method

.method private changeMediaModelState(Lcom/fimi/album/entity/MediaModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    .local p1, "mediaModel":Lcom/fimi/album/entity/MediaModel;, "TT;"
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 363
    .local v0, "createTime":J
    invoke-virtual {p1, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 364
    const-string/jumbo v3, "yyyy.MM.dd HH:mm:ss"

    invoke-static {v0, v1, v3}, Lcom/fimi/kernel/utils/DateFormater;->dateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 366
    .end local v0    # "createTime":J
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 367
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 444
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->isCamera:Z

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 446
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataHash()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    .line 447
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 452
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getDataHash()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    .line 453
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0
.end method

.method private isCategoryType(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    const/4 v1, 0x0

    .line 400
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz p1, :cond_0

    .line 401
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 402
    .local v0, "model":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const/4 v1, 0x1

    .line 408
    .end local v0    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return v1
.end method

.method private isHeadView(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    const/4 v1, 0x0

    .line 382
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz p1, :cond_0

    .line 383
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 384
    .local v0, "model":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isHeadView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 390
    .end local v0    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return v1
.end method

.method private judgeIsNoData()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    const/4 v1, 0x1

    .line 418
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    invoke-interface {v0, v1}, Lcom/fimi/album/iview/INodataTip;->noDataTipCallback(Z)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/album/iview/INodataTip;->noDataTipCallback(Z)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    invoke-interface {v0, v1}, Lcom/fimi/album/iview/INodataTip;->noDataTipCallback(Z)V

    goto :goto_0
.end method

.method private notifyAddNewItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 476
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRangeInserted(II)V

    .line 478
    return-void
.end method

.method private statisticalFileCount(Lcom/fimi/album/entity/MediaModel;Z)V
    .locals 11
    .param p1, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "isAdd"    # Z

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isHeadView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    .line 218
    .local v0, "count":I
    if-eqz p2, :cond_3

    .line 219
    const/4 v0, 0x1

    .line 223
    :goto_1
    iget-boolean v2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->isCamera:Z

    if-eqz v2, :cond_5

    .line 224
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/album/biz/DataManager;->getX9CameraVideoCount()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/fimi/album/biz/DataManager;->setX9CameraVideoCount(J)V

    .line 229
    :goto_2
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/biz/DataManager;->getX9CameraPhotoCount()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 230
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/biz/DataManager;->getX9CameraVideoCount()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 231
    const/4 v2, 0x2

    invoke-virtual {p0, v10, v2}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRangeRemoved(II)V

    .line 232
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/biz/DataManager;->reX9CameraDefaultVaribale()V

    .line 233
    invoke-direct {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->judgeIsNoData()V

    .line 247
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 248
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 249
    iput v10, v1, Landroid/os/Message;->arg1:I

    .line 250
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 221
    .end local v1    # "message":Landroid/os/Message;
    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    .line 227
    :cond_4
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/album/biz/DataManager;->getX9CameraPhotoCount()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/fimi/album/biz/DataManager;->setX9CameraPhotoCount(J)V

    goto :goto_2

    .line 236
    :cond_5
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/album/biz/DataManager;->getLocalVideoCount()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/fimi/album/biz/DataManager;->setLocalVideoCount(J)V

    .line 241
    :goto_4
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/biz/DataManager;->getLocalPhotoCount()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 242
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/biz/DataManager;->getLocalVideoCount()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 243
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/biz/DataManager;->reLocalDefaultVaribale()V

    .line 244
    invoke-direct {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->judgeIsNoData()V

    goto :goto_3

    .line 239
    :cond_6
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v2

    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/album/biz/DataManager;->getLocalPhotoCount()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/fimi/album/biz/DataManager;->setLocalPhotoCount(J)V

    goto :goto_4
.end method


# virtual methods
.method public addItemReally(Lcom/fimi/album/entity/MediaModel;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    .local p1, "mediaModel":Lcom/fimi/album/entity/MediaModel;, "TT;"
    invoke-direct/range {p0 .. p1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->changeMediaModelState(Lcom/fimi/album/entity/MediaModel;)V

    .line 275
    const/4 v9, 0x0

    .line 276
    .local v9, "inserterPosition":I
    if-eqz p1, :cond_3

    .line 277
    const/4 v14, 0x0

    .line 278
    .local v14, "modelNoHeadListPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/album/entity/MediaModel;

    .line 279
    .local v8, "indexMediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v8}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_1

    .line 285
    .end local v8    # "indexMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 286
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->statisticalFileCount(Lcom/fimi/album/entity/MediaModel;Z)V

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v4, v17, v18

    .line 288
    .local v4, "currentFormatData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 289
    new-instance v15, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 290
    .local v15, "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 291
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    const/4 v6, 0x0

    .line 292
    .local v6, "forEachPosition":I
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 293
    add-int/lit8 v6, v6, 0x1

    .line 294
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 295
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 296
    .local v3, "compareValue":I
    if-gez v3, :cond_2

    .line 297
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v17

    add-int v9, v9, v17

    .line 298
    goto :goto_1

    .line 282
    .end local v3    # "compareValue":I
    .end local v4    # "currentFormatData":Ljava/lang/String;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;"
    .end local v6    # "forEachPosition":I
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    .end local v15    # "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    .restart local v8    # "indexMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 284
    goto/16 :goto_0

    .line 308
    .end local v8    # "indexMediaModel":Lcom/fimi/album/entity/MediaModel;
    .restart local v4    # "currentFormatData":Ljava/lang/String;
    .restart local v6    # "forEachPosition":I
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    .restart local v15    # "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v17

    if-nez v17, :cond_5

    .line 309
    new-instance v7, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v7}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 310
    .local v7, "headviewModel":Lcom/fimi/album/entity/MediaModel;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/fimi/album/entity/MediaModel;->setHeadView(Z)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 312
    add-int/lit8 v9, v9, 0x1

    .line 313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->isCamera:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 314
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/fimi/album/biz/DataManager;->setLocalLoad(Z)V

    .line 332
    .end local v7    # "headviewModel":Lcom/fimi/album/entity/MediaModel;
    :goto_2
    new-instance v12, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v12}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 333
    .local v12, "mediaModel1":Lcom/fimi/album/entity/MediaModel;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setCategory(Z)V

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v15, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v4    # "currentFormatData":Ljava/lang/String;
    .end local v6    # "forEachPosition":I
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    .end local v12    # "mediaModel1":Lcom/fimi/album/entity/MediaModel;
    .end local v14    # "modelNoHeadListPosition":I
    .end local v15    # "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 353
    .local v13, "message":Landroid/os/Message;
    const/16 v17, 0x7

    move/from16 v0, v17

    iput v0, v13, Landroid/os/Message;->what:I

    .line 354
    iput v9, v13, Landroid/os/Message;->arg1:I

    .line 355
    move-object/from16 v0, p1

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mainHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void

    .line 316
    .end local v13    # "message":Landroid/os/Message;
    .restart local v4    # "currentFormatData":Ljava/lang/String;
    .restart local v6    # "forEachPosition":I
    .restart local v7    # "headviewModel":Lcom/fimi/album/entity/MediaModel;
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    .restart local v14    # "modelNoHeadListPosition":I
    .restart local v15    # "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    :cond_4
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/fimi/album/biz/DataManager;->setX9CameralLoad(Z)V

    goto :goto_2

    .line 319
    .end local v7    # "headviewModel":Lcom/fimi/album/entity/MediaModel;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 343
    .end local v6    # "forEachPosition":I
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    .end local v15    # "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 344
    .local v10, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .line 347
    .local v16, "position":I
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v16, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method public addNewItem(Lcom/fimi/album/entity/MediaModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    .local p1, "mediaModel":Lcom/fimi/album/entity/MediaModel;, "TT;"
    if-nez p1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 263
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 264
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 414
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 371
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->isHeadView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/16 v0, 0x30

    .line 377
    :goto_0
    return v0

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->isCategoryType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const/16 v0, 0x10

    goto :goto_0

    .line 377
    :cond_1
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 460
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->judgeIsNoData()V

    .line 462
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyDataSetChanged()V

    .line 471
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 463
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 464
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->addItemReally(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 465
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 466
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyAddNewItem(I)V

    .line 467
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v1, v0}, Lcom/fimi/album/iview/INodataTip;->notifyAddCallback(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 468
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 469
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 100
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 102
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 103
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 104
    .local v0, "mGridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v2, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 119
    .end local v0    # "mGridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 123
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mIRecycleAdapter:Lcom/fimi/album/iview/IRecycleAdapter;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mIRecycleAdapter:Lcom/fimi/album/iview/IRecycleAdapter;

    invoke-interface {v0, p1, p2}, Lcom/fimi/album/iview/IRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 126
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    const/4 v6, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/16 v4, 0x30

    if-ne p2, v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_recyleview_head:I

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "inflate":Landroid/view/View;
    new-instance v4, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;

    invoke-direct {v4, v0}, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;-><init>(Landroid/view/View;)V

    move-object v2, v1

    .line 95
    .end local v0    # "inflate":Landroid/view/View;
    .end local v1    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .local v2, "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-object v4

    .line 88
    .end local v2    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v1    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    const/16 v4, 0x10

    if-ne p2, v4, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_panel_view_holder:I

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "view":Landroid/view/View;
    new-instance v1, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;

    .end local v1    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {v1, v3}, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;-><init>(Landroid/view/View;)V

    .restart local v1    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_1
    move-object v2, v1

    .end local v1    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v2    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object v4, v1

    .line 95
    goto :goto_0

    .line 92
    .end local v2    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    .restart local v1    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_body_view_holder:I

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 93
    .restart local v3    # "view":Landroid/view/View;
    new-instance v1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    .end local v1    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {v1, v3}, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;-><init>(Landroid/view/View;)V

    .restart local v1    # "rvViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_1
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 439
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    invoke-direct {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->initData()V

    .line 440
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 441
    return-void
.end method

.method public remoteItem(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    const/4 v8, 0x0

    .line 134
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    .line 135
    .local v4, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "localPath":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v8

    .line 137
    .local v1, "formateDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getItemPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRemoved(I)V

    .line 140
    invoke-direct {p0, v4, v8}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->statisticalFileCount(Lcom/fimi/album/entity/MediaModel;Z)V

    .line 141
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 142
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 143
    .local v2, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 145
    .local v0, "cacheModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v0    # "cacheModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->internalListBound:I

    if-ge v5, v6, :cond_2

    .line 152
    iget-object v6, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getItemPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRemoved(I)V

    .line 158
    .end local v2    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    :cond_2
    return-void
.end method

.method public removeCallBack()V
    .locals 0

    .prologue
    .line 483
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    return-void
.end method

.method public setmIRecycleAdapter(Lcom/fimi/album/iview/IRecycleAdapter;)V
    .locals 0
    .param p1, "mIRecycleAdapter"    # Lcom/fimi/album/iview/IRecycleAdapter;

    .prologue
    .line 79
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->mIRecycleAdapter:Lcom/fimi/album/iview/IRecycleAdapter;

    .line 80
    return-void
.end method

.method public updateDeleteItem(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    const/4 v7, 0x0

    .line 175
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    .line 176
    .local v4, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v4, :cond_3

    .line 177
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "formateDate":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "localPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    invoke-direct {p0, v4, v7}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->statisticalFileCount(Lcom/fimi/album/entity/MediaModel;Z)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRemoved(I)V

    .line 182
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 183
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 184
    .local v2, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    if-eqz v2, :cond_5

    .line 185
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 186
    .local v0, "cacheModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v0    # "cacheModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->internalListBound:I

    if-ge v5, v6, :cond_5

    .line 193
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->internalListBound:I

    if-ge v5, v6, :cond_2

    .line 194
    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 195
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRemoved(I)V

    .line 197
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-virtual {p0, p1, v5}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRangeRemoved(II)V

    .line 203
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->judgeIsNoData()V

    .line 211
    .end local v1    # "formateDate":Ljava/lang/String;
    .end local v2    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    .end local v3    # "localPath":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 199
    .restart local v1    # "formateDate":Ljava/lang/String;
    .restart local v2    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    .restart local v3    # "localPath":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v6, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 208
    .end local v2    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    :cond_5
    invoke-direct {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->judgeIsNoData()V

    .line 209
    iget-object v5, p0, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-virtual {p0, p1, v5}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_2
.end method

.method public updateDeleteItems()V
    .locals 0

    .prologue
    .line 166
    .local p0, "this":Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;, "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->notifyDataSetChanged()V

    .line 167
    return-void
.end method
