.class public abstract Lcom/fimi/album/presenter/BaseFragmentPresenter;
.super Ljava/lang/Object;
.source "BaseFragmentPresenter.java"

# interfaces
.implements Lcom/fimi/album/iview/IBroadcastPreform;
.implements Lcom/fimi/album/iview/IRecycleAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IBroadcastPreform;",
        "Lcom/fimi/album/iview/IRecycleAdapter;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field protected static isScrollRecycle:Z


# instance fields
.field protected context:Landroid/content/Context;

.field protected defaultPhtotHeight:I

.field protected defaultPhtotWidth:I

.field protected isEnterSelectMode:Z

.field protected mISelectData:Lcom/fimi/album/iview/ISelectData;

.field protected mPanelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/album/adapter/PanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;)V
    .locals 2
    .param p1, "mRecyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "mPanelRecycleAdapter"    # Lcom/fimi/album/adapter/PanelRecycleAdapter;
    .param p3, "mISelectData"    # Lcom/fimi/album/iview/ISelectData;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    const/16 v1, 0x78

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    .line 40
    const-string v0, "file://"

    iput-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->perfix:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->defaultPhtotHeight:I

    .line 42
    iput v1, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->defaultPhtotWidth:I

    .line 47
    iput-object p1, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 48
    iput-object p2, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    .line 49
    iput-object p3, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    .line 50
    iput-object p4, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->context:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private preformSelectEvent(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 314
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iget-object v2, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 333
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 318
    invoke-virtual {p0, v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->getModel(I)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    .line 319
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz p1, :cond_2

    .line 320
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 321
    invoke-virtual {p0, v1}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->addSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    .line 322
    invoke-virtual {v1, p1}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 317
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {p0, v1}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    .line 327
    invoke-virtual {v1, p1}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    goto :goto_2

    .line 331
    .end local v1    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    iget-object v2, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    invoke-virtual {v2}, Lcom/fimi/album/adapter/PanelRecycleAdapter;->notifyDataSetChanged()V

    .line 332
    iget-object v2, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->callBackSelectSize(I)V

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
    .line 166
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    .local p1, "mode":Lcom/fimi/album/entity/MediaModel;, "TT;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method protected callBackDeleteFile()V
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->deleteFile()V

    .line 151
    :cond_0
    return-void
.end method

.method protected callBackEnterSelectMode()V
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->enterSelectMode()V

    .line 133
    :cond_0
    return-void
.end method

.method protected callBackQuitSelectMode()V
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    invoke-interface {v0}, Lcom/fimi/album/iview/ISelectData;->quitSelectMode()V

    .line 142
    :cond_0
    return-void
.end method

.method protected callBackSelectSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 121
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Lcom/fimi/album/iview/ISelectData;->selectSize(IJ)V

    .line 124
    :cond_0
    return-void
.end method

.method public canCalAsyncTask()V
    .locals 0

    .prologue
    .line 236
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    return-void
.end method

.method public cancalSelectAllMode()V
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->preformSelectEvent(Z)V

    .line 308
    return-void
.end method

.method protected changeViewState(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # I
    .param p3, "resBg"    # I

    .prologue
    .line 62
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    return-void
.end method

.method protected clearSelectData()V
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    return-void
.end method

.method public deleteSelectFile()V
    .locals 6

    .prologue
    .line 277
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    const/4 v4, 0x0

    .line 278
    .local v4, "startDeletePosition":Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 279
    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    .line 280
    .local v2, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {p0, v2}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->isContainsModel(Lcom/fimi/album/entity/MediaModel;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 281
    invoke-virtual {p0, v2}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelPosition(Lcom/fimi/album/entity/MediaModel;)I

    move-result v3

    .line 282
    .local v3, "position":I
    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    invoke-virtual {v5, v3}, Lcom/fimi/album/adapter/PanelRecycleAdapter;->remoteItem(I)V

    .line 283
    if-nez v4, :cond_0

    .line 284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 287
    .end local v3    # "position":I
    :cond_0
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/fimi/kernel/utils/FileTool;->deleteFile(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    invoke-virtual {v5}, Lcom/fimi/album/adapter/PanelRecycleAdapter;->updateDeleteItems()V

    .line 291
    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 292
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->isEnterSelectMode:Z

    .line 293
    invoke-virtual {p0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->callBackDeleteFile()V

    .line 294
    return-void
.end method

.method public enterSelectAllMode()V
    .locals 1

    .prologue
    .line 300
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->preformSelectEvent(Z)V

    .line 301
    return-void
.end method

.method public enterSelectMode(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 208
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iput-boolean p1, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->isEnterSelectMode:Z

    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->preformSelectEvent(Z)V

    .line 212
    :cond_0
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
    .line 81
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->getOriginalData()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    goto :goto_0
.end method

.method protected getOriginalData()V
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getDataHash()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    .line 72
    return-void
.end method

.method protected goMediaDetailActivity(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 244
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->context:Landroid/content/Context;

    const-class v6, Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    .line 246
    .local v4, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "formatDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->stateHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 248
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    const/4 v0, 0x0

    .line 249
    .local v0, "dataPosition":I
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 251
    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    :cond_1
    const-string v5, "selectPosition"

    sub-int v6, p1, v0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    iget-object v5, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method protected isContainsModel(Lcom/fimi/album/entity/MediaModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    .local p1, "model":Lcom/fimi/album/entity/MediaModel;, "TT;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->getOriginalData()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

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
    .line 111
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    .local p1, "model":Lcom/fimi/album/entity/MediaModel;, "TT;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->getOriginalData()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    const-string v1, "deleteItem"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 268
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    iget-object v1, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->mPanelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    iget-object v2, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/album/adapter/PanelRecycleAdapter;->updateDeleteItem(I)V

    .line 271
    :cond_0
    return-void
.end method

.method protected preformMode(Lcom/fimi/album/entity/MediaModel;Landroid/view/View;III)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "state"    # I
    .param p4, "selectBg"    # I
    .param p5, "unSelectBg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    .local p1, "model":Lcom/fimi/album/entity/MediaModel;, "TT;"
    if-nez p1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isSelect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    invoke-virtual {p0, p1}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->addSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 194
    invoke-virtual {p0, p2, p3, p4}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->changeViewState(Landroid/view/View;II)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fimi/album/entity/MediaModel;->setSelect(Z)V

    .line 198
    invoke-virtual {p0, p2, p3, p5}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->changeViewState(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public querySelectSize()I
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public refreshData()V
    .locals 0

    .prologue
    .line 227
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    invoke-virtual {p0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->getOriginalData()V

    .line 228
    return-void
.end method

.method protected removeSelectModel(Lcom/fimi/album/entity/MediaModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/fimi/album/presenter/BaseFragmentPresenter;, "Lcom/fimi/album/presenter/BaseFragmentPresenter<TT;>;"
    .local p1, "mode":Lcom/fimi/album/entity/MediaModel;, "TT;"
    iget-object v0, p0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method
