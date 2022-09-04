.class public Lcom/fimi/album/biz/FolderDispater;
.super Ljava/lang/Object;
.source "FolderDispater.java"

# interfaces
.implements Lcom/fimi/album/iview/IHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/album/biz/FolderDispater$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IHandlerCallback;"
    }
.end annotation


# static fields
.field public static final ORIGINAL_PATH:Ljava/lang/String; = "original_path"

.field public static final TAG:Ljava/lang/String;

.field public static final THUMBNAIL_PATH:Ljava/lang/String; = "thumbnail_path"


# instance fields
.field private dataHash:Ljava/util/LinkedHashMap;
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

.field private dataHashPhoto:Ljava/util/LinkedHashMap;
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

.field private dataHashVideo:Ljava/util/LinkedHashMap;
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

.field private defaultFormatPattern:Ljava/lang/String;

.field public isHadForEachFolder:Z

.field public isHadForEachFolderPhoto:Z

.field public isHadForEachFolderVideo:Z

.field private localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private localPhotoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private localPhotoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private localVideoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private localVideoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

.field private mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

.field private otherHandler:Landroid/os/Handler;

.field private photoCount:J

.field private videoCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/album/biz/FolderDispater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    const-wide/16 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/fimi/album/biz/SuffixUtils;->obtain()Lcom/fimi/album/biz/SuffixUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    .line 62
    const-string/jumbo v0, "yyyy.MM.dd HH:mm:ss"

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->defaultFormatPattern:Ljava/lang/String;

    .line 66
    iput-wide v2, p0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 68
    iput-wide v2, p0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 75
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->otherHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHashPhoto:Ljava/util/LinkedHashMap;

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHashVideo:Ljava/util/LinkedHashMap;

    .line 85
    return-void
.end method

.method private addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    .local p1, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "saveList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    .local p3, "saveHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;"
    const/4 v10, 0x1

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "cacheFormateDate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 363
    .local v6, "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    const/4 v3, 0x0

    .line 364
    .local v3, "isOneTime":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 365
    new-instance v2, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v2}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 366
    .local v2, "headViewModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v2, v10}, Lcom/fimi/album/entity/MediaModel;->setHeadView(Z)V

    .line 367
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v2    # "headViewModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    .line 370
    .local v5, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 371
    .local v4, "lastModifyDate":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 372
    :cond_1
    if-eqz v6, :cond_2

    .line 373
    invoke-virtual {p3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 375
    const/4 v3, 0x0

    .line 377
    :cond_2
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v6    # "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 378
    .restart local v6    # "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    new-instance v1, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v1}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 379
    .local v1, "headModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1, v4}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1, v10}, Lcom/fimi/album/entity/MediaModel;->setCategory(Z)V

    .line 381
    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    move-object v0, v4

    .line 383
    if-nez v3, :cond_3

    .line 384
    const/4 v3, 0x1

    .line 387
    .end local v1    # "headModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    .end local v4    # "lastModifyDate":Ljava/lang/String;
    .end local v5    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_4
    if-eqz v3, :cond_5

    .line 391
    if-eqz v6, :cond_5

    .line 392
    invoke-virtual {p3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 396
    :cond_5
    return-void
.end method


# virtual methods
.method public forEachFolder(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    const/4 v2, 0x3

    .line 88
    iget-boolean v1, p0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolder:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/album/biz/FolderDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 90
    .local v0, "mMessage":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 91
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/fimi/album/biz/FolderDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    .end local v0    # "mMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public forEachFolderPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 97
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-boolean v2, p0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolderPhoto:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fimi/album/biz/FolderDispater;->otherHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 99
    .local v1, "mMessage":Landroid/os/Message;
    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "original_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v2, "thumbnail_path"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 104
    iget-object v2, p0, Lcom/fimi/album/biz/FolderDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "mMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public forEachFolderVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 109
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-boolean v2, p0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolderVideo:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fimi/album/biz/FolderDispater;->otherHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 111
    .local v1, "mMessage":Landroid/os/Message;
    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->what:I

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "original_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "thumbnail_path"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 116
    iget-object v2, p0, Lcom/fimi/album/biz/FolderDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "mMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getDataHash()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDataHashPhoto()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHashPhoto:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDataHashVideo()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHashVideo:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getLocalDataList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getLocalDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getLocalPhotoDataList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getLocalPhotoDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getLocalVideoDataList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getLocalVideoDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getPhotoCount()J
    .locals 2

    .prologue
    .line 482
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-wide v0, p0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    return-wide v0
.end method

.method public getVideoCount()J
    .locals 2

    .prologue
    .line 474
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-wide v0, p0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    const-wide/16 v4, 0x0

    .line 122
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 123
    iput-wide v4, p0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 124
    iput-wide v4, p0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 125
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/fimi/album/biz/FolderDispater;->reallyHandlerFolderFile(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 126
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 127
    iput-wide v4, p0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "original_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "thumbnail_path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fimi/album/biz/FolderDispater$State;->PHOTO:Lcom/fimi/album/biz/FolderDispater$State;

    invoke-virtual {p0, v1, v2, v3}, Lcom/fimi/album/biz/FolderDispater;->reallyHandlerFolderFile(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/album/biz/FolderDispater$State;)V

    goto :goto_0

    .line 130
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 131
    iput-wide v4, p0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "original_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "thumbnail_path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fimi/album/biz/FolderDispater$State;->VIDEO:Lcom/fimi/album/biz/FolderDispater$State;

    invoke-virtual {p0, v1, v2, v3}, Lcom/fimi/album/biz/FolderDispater;->reallyHandlerFolderFile(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/album/biz/FolderDispater$State;)V

    goto :goto_0
.end method

.method public isHadForEachFolder()Z
    .locals 1

    .prologue
    .line 425
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolder:Z

    return v0
.end method

.method public reDefaultList()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    const-wide/16 v0, 0x0

    .line 400
    iput-wide v0, p0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 401
    iput-wide v0, p0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 402
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 403
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 404
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolder:Z

    .line 406
    return-void
.end method

.method public rePhotoDefaultList()V
    .locals 2

    .prologue
    .line 409
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 410
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 411
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 412
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHashPhoto:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolderPhoto:Z

    .line 414
    return-void
.end method

.method public reVideoDefaultList()V
    .locals 2

    .prologue
    .line 417
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 418
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 419
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 420
    iget-object v0, p0, Lcom/fimi/album/biz/FolderDispater;->dataHashVideo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolderVideo:Z

    .line 422
    return-void
.end method

.method public reallyHandlerFolderFile(Ljava/lang/String;)V
    .locals 18
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 139
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "cacheListPhoto":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v4, "cacheListVideo":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v8, "floder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 145
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 146
    .local v9, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 147
    .local v7, "files":[Ljava/io/File;
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 148
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 149
    array-length v13, v7

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_3

    aget-object v5, v7, v12

    .line 150
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 151
    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "filePath":Ljava/lang/String;
    new-instance v10, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v10}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 155
    .local v10, "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcom/fimi/album/entity/MediaModel;->setFileSize(J)V

    .line 156
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->defaultFormatPattern:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/fimi/kernel/utils/DateFormater;->dateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v10, v6}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 160
    const-string v14, "."

    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/biz/FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    invoke-virtual {v14, v6}, Lcom/fimi/album/biz/SuffixUtils;->judgeFileType(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 163
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 164
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 165
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V

    .line 167
    const-string v14, "orgin"

    const-string v15, "thum"

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/biz/FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    iget-object v15, v15, Lcom/fimi/album/biz/SuffixUtils;->fileFormatThm:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatJpg:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setThumLocalFilePath(Ljava/lang/String;)V

    .line 173
    :goto_2
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 169
    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 171
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 178
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v10    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 179
    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 180
    .local v11, "temp_file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 181
    array-length v13, v7

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_3

    aget-object v5, v7, v12

    .line 182
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 183
    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 185
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 186
    .restart local v6    # "filePath":Ljava/lang/String;
    new-instance v10, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v10}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 187
    .restart local v10    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcom/fimi/album/entity/MediaModel;->setFileSize(J)V

    .line 188
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 189
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->defaultFormatPattern:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/fimi/kernel/utils/DateFormater;->dateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v10, v6}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/biz/FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    invoke-virtual {v14, v6}, Lcom/fimi/album/biz/SuffixUtils;->judgeFileType(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 194
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 198
    :goto_5
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 196
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    goto :goto_5

    .line 203
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v10    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    .end local v11    # "temp_file":Ljava/io/File;
    :cond_6
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v2, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/album/biz/FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lcom/fimi/album/biz/FolderDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    .line 207
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v3, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/album/biz/FolderDispater;->dataHashPhoto:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v13}, Lcom/fimi/album/biz/FolderDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    .line 211
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v4, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/album/biz/FolderDispater;->dataHashVideo:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13}, Lcom/fimi/album/biz/FolderDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    if-eqz v12, :cond_7

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    .line 217
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolder:Z

    .line 225
    .end local v7    # "files":[Ljava/io/File;
    .end local v9    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_7
    :goto_6
    return-void

    .line 221
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    if-eqz v12, :cond_7

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    goto :goto_6
.end method

.method public reallyHandlerFolderFile(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/album/biz/FolderDispater$State;)V
    .locals 22
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "thumbnailPath"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/fimi/album/biz/FolderDispater$State;

    .prologue
    .line 229
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v4, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, "cacheListPhoto":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v6, "cacheListVideo":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v10, "floder":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 234
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 235
    .local v11, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 237
    .local v9, "files":[Ljava/io/File;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    aget-object v7, v9, v16

    .line 238
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 239
    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "filePath":Ljava/lang/String;
    new-instance v12, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v12}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 243
    .local v12, "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setFileSize(J)V

    .line 244
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 245
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->defaultFormatPattern:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/fimi/kernel/utils/DateFormater;->dateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v12, v8}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 248
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V

    .line 249
    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/fimi/album/biz/SuffixUtils;->judgeFileType(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 252
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 253
    invoke-virtual {v12}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "delay_mode"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 254
    sget-object v18, Lcom/fimi/album/entity/MediaModel$recordType;->delay_record:Lcom/fimi/album/entity/MediaModel$recordType;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setVideoType(Lcom/fimi/album/entity/MediaModel$recordType;)V

    .line 258
    :cond_2
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".mp4"

    const-string v21, ".jpg"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "thumbnailVedeoPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    const-string v18, "//"

    const-string v19, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "////"

    const-string v20, "/"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v14, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 261
    invoke-virtual {v12, v15}, Lcom/fimi/album/entity/MediaModel;->setThumLocalFilePath(Ljava/lang/String;)V

    .line 263
    :cond_3
    sget-object v18, Lcom/fimi/album/biz/FolderDispater$State;->PHOTO:Lcom/fimi/album/biz/FolderDispater$State;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 264
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 266
    :cond_4
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v14    # "thumbnailFile":Ljava/io/File;
    .end local v15    # "thumbnailVedeoPath":Ljava/lang/String;
    :goto_3
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 255
    :cond_5
    invoke-virtual {v12}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "dynamic_mode"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 256
    sget-object v18, Lcom/fimi/album/entity/MediaModel$recordType;->dynamic_delay_record:Lcom/fimi/album/entity/MediaModel$recordType;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setVideoType(Lcom/fimi/album/entity/MediaModel$recordType;)V

    goto :goto_2

    .line 268
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 274
    sget-object v18, Lcom/fimi/album/biz/FolderDispater$State;->VIDEO:Lcom/fimi/album/biz/FolderDispater$State;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 277
    :cond_7
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 284
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v12    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_8
    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_c

    .line 285
    invoke-virtual {v11}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    .line 286
    .local v13, "temp_file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 287
    array-length v0, v9

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    aget-object v7, v9, v16

    .line 288
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 289
    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 287
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 291
    :cond_9
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 292
    .restart local v8    # "filePath":Ljava/lang/String;
    new-instance v12, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v12}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 293
    .restart local v12    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setFileSize(J)V

    .line 294
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 295
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->defaultFormatPattern:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/fimi/kernel/utils/DateFormater;->dateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v12, v8}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/fimi/album/biz/SuffixUtils;->judgeFileType(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 300
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 301
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".mp4"

    const-string v21, ".jpg"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 302
    .restart local v15    # "thumbnailVedeoPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    const-string v18, "//"

    const-string v19, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "////"

    const-string v20, "/"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v14    # "thumbnailFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 304
    invoke-virtual {v12, v15}, Lcom/fimi/album/entity/MediaModel;->setThumLocalFilePath(Ljava/lang/String;)V

    .line 306
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 307
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v14    # "thumbnailFile":Ljava/io/File;
    .end local v15    # "thumbnailVedeoPath":Ljava/lang/String;
    :goto_6
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 309
    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 310
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 311
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 319
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v12    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    .end local v13    # "temp_file":Ljava/io/File;
    :cond_c
    sget-object v16, Lcom/fimi/album/biz/FolderDispater$State;->ALL:Lcom/fimi/album/biz/FolderDispater$State;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_10

    .line 320
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Lcom/fimi/album/biz/FolderDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    .line 333
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    sget-object v16, Lcom/fimi/album/biz/FolderDispater$State;->ALL:Lcom/fimi/album/biz/FolderDispater$State;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    .line 335
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolder:Z

    .line 337
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    sget-object v16, Lcom/fimi/album/biz/FolderDispater$State;->PHOTO:Lcom/fimi/album/biz/FolderDispater$State;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_e

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    .line 339
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolderPhoto:Z

    .line 341
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    sget-object v16, Lcom/fimi/album/biz/FolderDispater$State;->VIDEO:Lcom/fimi/album/biz/FolderDispater$State;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    .line 343
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolderVideo:Z

    .line 350
    .end local v9    # "files":[Ljava/io/File;
    .end local v11    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_f
    :goto_8
    return-void

    .line 323
    .restart local v9    # "files":[Ljava/io/File;
    .restart local v11    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_10
    sget-object v16, Lcom/fimi/album/biz/FolderDispater$State;->PHOTO:Lcom/fimi/album/biz/FolderDispater$State;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_11

    .line 324
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->localPhotoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->dataHashPhoto:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/fimi/album/biz/FolderDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    goto/16 :goto_7

    .line 328
    :cond_11
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->localVideoDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->dataHashVideo:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v6, v1, v2}, Lcom/fimi/album/biz/FolderDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    goto/16 :goto_7

    .line 346
    .end local v9    # "files":[Ljava/io/File;
    .end local v11    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    goto :goto_8
.end method

.method public removeCallBack()V
    .locals 0

    .prologue
    .line 491
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    return-void
.end method

.method public setHadForEachFolder(Z)V
    .locals 0
    .param p1, "hadForEachFolder"    # Z

    .prologue
    .line 429
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iput-boolean p1, p0, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolder:Z

    .line 430
    return-void
.end method

.method public setPhotoCount(J)V
    .locals 1
    .param p1, "photoCount"    # J

    .prologue
    .line 486
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iput-wide p1, p0, Lcom/fimi/album/biz/FolderDispater;->photoCount:J

    .line 487
    return-void
.end method

.method public setVideoCount(J)V
    .locals 1
    .param p1, "videoCount"    # J

    .prologue
    .line 478
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iput-wide p1, p0, Lcom/fimi/album/biz/FolderDispater;->videoCount:J

    .line 479
    return-void
.end method

.method public setmIDateHandler(Lcom/fimi/album/iview/IDateHandler;)V
    .locals 0
    .param p1, "mIDateHandler"    # Lcom/fimi/album/iview/IDateHandler;

    .prologue
    .line 470
    .local p0, "this":Lcom/fimi/album/biz/FolderDispater;, "Lcom/fimi/album/biz/FolderDispater<TT;>;"
    iput-object p1, p0, Lcom/fimi/album/biz/FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    .line 471
    return-void
.end method
