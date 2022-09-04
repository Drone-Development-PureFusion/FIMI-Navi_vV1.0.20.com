.class public abstract Lcom/fimi/album/adapter/BaseRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseRecycleAdapter.java"

# interfaces
.implements Lcom/fimi/album/iview/IHandlerCallback;


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
        "Lcom/fimi/album/iview/IHandlerCallback;"
    }
.end annotation


# static fields
.field public static final ITEMBODYTYPE:I = 0x20

.field public static final ITEMHEADTYPE:I = 0x10

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private bodySpanCount:I

.field protected context:Landroid/content/Context;

.field private headSpanCount:I

.field private internalListBound:I

.field protected mINodataTip:Lcom/fimi/album/iview/INodataTip;

.field protected mainHandler:Landroid/os/Handler;

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

.field protected otherHandler:Landroid/os/Handler;

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
    .line 26
    const-class v0, Lcom/fimi/album/adapter/BaseRecycleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fimi/album/iview/INodataTip;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mINodataTip"    # Lcom/fimi/album/iview/INodataTip;

    .prologue
    .line 54
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    invoke-static {}, Lcom/fimi/album/biz/DataManager;->obtain()Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->headSpanCount:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->bodySpanCount:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->internalListBound:I

    .line 55
    invoke-direct {p0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->initData()V

    .line 56
    iput-object p1, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->context:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->otherHandler:Landroid/os/Handler;

    .line 58
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mainHandler:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/adapter/BaseRecycleAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/adapter/BaseRecycleAdapter;

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->headSpanCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/album/adapter/BaseRecycleAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/adapter/BaseRecycleAdapter;

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->bodySpanCount:I

    return v0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getDataHash()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    .line 65
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mdataManager:Lcom/fimi/album/biz/DataManager;

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->getLocalDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    return-void
.end method

.method private judgeIsNoData()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    const/4 v1, 0x1

    .line 277
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    invoke-interface {v0, v1}, Lcom/fimi/album/iview/INodataTip;->noDataTipCallback(Z)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/album/iview/INodataTip;->noDataTipCallback(Z)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mINodataTip:Lcom/fimi/album/iview/INodataTip;

    invoke-interface {v0, v1}, Lcom/fimi/album/iview/INodataTip;->noDataTipCallback(Z)V

    goto :goto_0
.end method

.method private notifyAddNewItem(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 315
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyItemInserted(I)V

    .line 317
    return-void
.end method


# virtual methods
.method public addItemReally(Lcom/fimi/album/entity/MediaModel;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    .local p1, "mediaModel":Lcom/fimi/album/entity/MediaModel;, "TT;"
    const/4 v12, 0x1

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "inserterPosition":I
    if-eqz p1, :cond_1

    .line 188
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "currentFormatData":Ljava/lang/String;
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 191
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 192
    .local v9, "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 193
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    const/4 v3, 0x0

    .line 194
    .local v3, "forEachPosition":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 195
    add-int/lit8 v3, v3, 0x1

    .line 196
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 197
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "compareValue":I
    if-lez v0, :cond_0

    .line 199
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    add-int/2addr v4, v11

    .line 200
    goto :goto_0

    .line 207
    .end local v0    # "compareValue":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;"
    :cond_0
    if-ne v3, v12, :cond_2

    .line 208
    new-instance v7, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v7}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 209
    .local v7, "mediaModel1":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v7, v12}, Lcom/fimi/album/entity/MediaModel;->setCategory(Z)V

    .line 210
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v9, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v9, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_1
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v1    # "currentFormatData":Ljava/lang/String;
    .end local v3    # "forEachPosition":I
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    .end local v7    # "mediaModel1":Lcom/fimi/album/entity/MediaModel;
    .end local v9    # "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 237
    .local v8, "message":Landroid/os/Message;
    const/4 v11, 0x7

    iput v11, v8, Landroid/os/Message;->what:I

    .line 238
    iput v4, v8, Landroid/os/Message;->arg1:I

    .line 239
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    return-void

    .line 216
    .end local v8    # "message":Landroid/os/Message;
    .restart local v1    # "currentFormatData":Ljava/lang/String;
    .restart local v3    # "forEachPosition":I
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    .restart local v9    # "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    :cond_2
    new-instance v7, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v7}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 217
    .restart local v7    # "mediaModel1":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v7, v12}, Lcom/fimi/album/entity/MediaModel;->setCategory(Z)V

    .line 218
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v9, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v9, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, v4, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 222
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 226
    .end local v3    # "forEachPosition":I
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;>;"
    .end local v7    # "mediaModel1":Lcom/fimi/album/entity/MediaModel;
    .end local v9    # "newList":Ljava/util/concurrent/CopyOnWriteArrayList;
    :cond_3
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 227
    .local v5, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 228
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 230
    .local v10, "position":I
    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v11, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v11, v12, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public addNewItem(Lcom/fimi/album/entity/MediaModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    .local p1, "mediaModel":Lcom/fimi/album/entity/MediaModel;, "TT;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 175
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 272
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    invoke-direct {p0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->judgeIsNoData()V

    .line 273
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 245
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->isCategoryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/16 v0, 0x10

    .line 248
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 304
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyDataSetChanged()V

    .line 311
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 307
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {p0, v0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->addItemReally(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 308
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 309
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyAddNewItem(I)V

    goto :goto_0
.end method

.method protected isCategoryType(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    const/4 v1, 0x0

    .line 259
    iget-object v2, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz p1, :cond_0

    .line 260
    iget-object v2, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 261
    .local v0, "model":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isCategory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    const/4 v1, 0x1

    .line 267
    .end local v0    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return v1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 70
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 71
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 72
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 73
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 74
    .local v0, "mGridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v2, Lcom/fimi/album/adapter/BaseRecycleAdapter$1;

    invoke-direct {v2, p0}, Lcom/fimi/album/adapter/BaseRecycleAdapter$1;-><init>(Lcom/fimi/album/adapter/BaseRecycleAdapter;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 86
    .end local v0    # "mGridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 298
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    invoke-direct {p0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->initData()V

    .line 299
    iget-object v0, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    return-void
.end method

.method public remoteItem(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 94
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    .line 95
    .local v4, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "localPath":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "formateDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 100
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 101
    .local v2, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    if-eqz v2, :cond_2

    .line 102
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

    .line 103
    .local v0, "cacheModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "cacheModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->internalListBound:I

    if-ge v5, v6, :cond_2

    .line 110
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    .end local v2    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    :cond_2
    return-void
.end method

.method public removeCallBack()V
    .locals 0

    .prologue
    .line 322
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    return-void
.end method

.method public updateDeleteItem(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 131
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/album/entity/MediaModel;

    .line 132
    .local v4, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v4, :cond_3

    .line 133
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "formateDate":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "localPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0, p1}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyItemRemoved(I)V

    .line 137
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 138
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->stateHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 139
    .local v2, "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    if-eqz v2, :cond_5

    .line 140
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

    .line 141
    .local v0, "cacheModel":Lcom/fimi/album/entity/MediaModel;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "cacheModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->internalListBound:I

    if-ge v5, v6, :cond_5

    .line 148
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->internalListBound:I

    if-ge v5, v6, :cond_2

    .line 149
    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 150
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyItemRemoved(I)V

    .line 152
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-virtual {p0, p1, v5}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyItemRangeRemoved(II)V

    .line 158
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->judgeIsNoData()V

    .line 166
    .end local v1    # "formateDate":Ljava/lang/String;
    .end local v2    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    .end local v3    # "localPath":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 154
    .restart local v1    # "formateDate":Ljava/lang/String;
    .restart local v2    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    .restart local v3    # "localPath":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v6, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 155
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 163
    .end local v2    # "internalList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    :cond_5
    invoke-direct {p0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->judgeIsNoData()V

    .line 164
    iget-object v5, p0, Lcom/fimi/album/adapter/BaseRecycleAdapter;->modelList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-virtual {p0, p1, v5}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_2
.end method

.method public updateDeleteItems()V
    .locals 0

    .prologue
    .line 122
    .local p0, "this":Lcom/fimi/album/adapter/BaseRecycleAdapter;, "Lcom/fimi/album/adapter/BaseRecycleAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/fimi/album/adapter/BaseRecycleAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method
