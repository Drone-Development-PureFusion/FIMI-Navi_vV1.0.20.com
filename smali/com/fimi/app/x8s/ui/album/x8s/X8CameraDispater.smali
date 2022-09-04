.class public Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;
.super Ljava/lang/Object;
.source "X8CameraDispater.java"

# interfaces
.implements Lcom/fimi/album/iview/IHandlerCallback;
.implements Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;
.implements Lcom/fimi/album/interfaces/ICameraDeviceDispater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IHandlerCallback;",
        "Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;",
        "Lcom/fimi/album/interfaces/ICameraDeviceDispater;"
    }
.end annotation


# instance fields
.field private cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private cameraDateHash:Ljava/util/LinkedHashMap;
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

.field private isLoadCompleteSuccess:Z

.field private isLoading:Z

.field private mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

.field private mMediaLoadProxy:Lcom/fimi/album/MediaLoadProxy;

.field private otherHandler:Landroid/os/Handler;

.field private photoCount:J

.field private videoCount:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/fimi/album/MediaLoadProxy;

    invoke-direct {v0}, Lcom/fimi/album/MediaLoadProxy;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->mMediaLoadProxy:Lcom/fimi/album/MediaLoadProxy;

    .line 52
    iput-boolean v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoadCompleteSuccess:Z

    .line 54
    iput-boolean v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoading:Z

    .line 56
    iput-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->videoCount:J

    .line 58
    iput-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->photoCount:J

    .line 61
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->otherHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDateHash:Ljava/util/LinkedHashMap;

    .line 67
    return-void
.end method

.method private addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V
    .locals 12
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
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    .local p1, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "saveList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    .local p3, "saveHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;"
    const/4 v11, 0x1

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "cacheFormateDate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 103
    .local v6, "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    const/4 v3, 0x0

    .line 104
    .local v3, "isOneTime":Z
    new-instance v2, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v2}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 105
    .local v2, "headViewModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v2, v11}, Lcom/fimi/album/entity/MediaModel;->setHeadView(Z)V

    .line 106
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    .line 108
    .local v5, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 109
    .local v4, "lastModifyDate":Ljava/lang/String;
    const-string v8, "moweiru"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModifyDate==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 111
    :cond_0
    if-eqz v6, :cond_1

    .line 112
    invoke-virtual {p3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    const/4 v3, 0x0

    .line 116
    :cond_1
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v6    # "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 117
    .restart local v6    # "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    new-instance v1, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v1}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 118
    .local v1, "headModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1, v4}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1, v11}, Lcom/fimi/album/entity/MediaModel;->setCategory(Z)V

    .line 120
    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    move-object v0, v4

    .line 122
    if-nez v3, :cond_2

    .line 123
    const/4 v3, 0x1

    .line 126
    .end local v1    # "headModel":Lcom/fimi/album/entity/MediaModel;
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v4    # "lastModifyDate":Ljava/lang/String;
    .end local v5    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    if-eqz v3, :cond_4

    .line 130
    if-eqz v6, :cond_4

    .line 131
    invoke-virtual {p3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    :cond_4
    return-void
.end method

.method private reallyCameraFolderFile()V
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;Ljava/util/List;)V

    .line 94
    .local v0, "mX8Loader":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->mMediaLoadProxy:Lcom/fimi/album/MediaLoadProxy;

    invoke-virtual {v1, v0}, Lcom/fimi/album/MediaLoadProxy;->setMediaLoad(Lcom/fimi/album/download/interfaces/IMediaFileLoad;)V

    .line 95
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->mMediaLoadProxy:Lcom/fimi/album/MediaLoadProxy;

    invoke-virtual {v1}, Lcom/fimi/album/MediaLoadProxy;->startLoad()V

    .line 97
    return-void
.end method


# virtual methods
.method public forCameraFolder()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    const/16 v2, 0xa

    .line 70
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoading:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoading:Z

    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 74
    .local v0, "mMessage":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    .end local v0    # "mMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getCameraDataList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getCameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getCameraDateHash()Ljava/util/LinkedHashMap;
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
    .line 155
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDateHash:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getPhotoCount()J
    .locals 2

    .prologue
    .line 221
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iget-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->photoCount:J

    return-wide v0
.end method

.method public getVideoCount()J
    .locals 2

    .prologue
    .line 213
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iget-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->videoCount:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 82
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoadCompleteSuccess:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->reallyCameraFolderFile()V

    .line 85
    :cond_0
    const-string v0, "mediax9"

    const-string v1, "handleMessage: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadCompleteSuccess()Z
    .locals 1

    .prologue
    .line 229
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoadCompleteSuccess:Z

    return v0
.end method

.method public onComplete(Z)V
    .locals 10
    .param p1, "success"    # Z

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    const-wide/16 v8, 0x1

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 174
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    iput-wide v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->videoCount:J

    .line 178
    iput-wide v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->photoCount:J

    .line 179
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 180
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    iget-wide v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->videoCount:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->videoCount:J

    goto :goto_0

    .line 183
    :cond_0
    iget-wide v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->photoCount:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->photoCount:J

    goto :goto_0

    .line 186
    .end local v1    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 188
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDateHash:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    .line 196
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    invoke-interface {v2, v6, v6}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    .line 198
    iput-boolean v6, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoadCompleteSuccess:Z

    .line 205
    .end local v0    # "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    :goto_1
    iput-boolean v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoading:Z

    .line 206
    return-void

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    invoke-interface {v2, v6, v7}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    goto :goto_1
.end method

.method public reDefaultList()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoading:Z

    .line 162
    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoadCompleteSuccess:Z

    .line 163
    iput-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->videoCount:J

    .line 164
    iput-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->photoCount:J

    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->cameraDateHash:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 168
    return-void
.end method

.method public setLoadCompleteSuccess(Z)V
    .locals 0
    .param p1, "loadCompleteSuccess"    # Z

    .prologue
    .line 233
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->isLoadCompleteSuccess:Z

    .line 234
    return-void
.end method

.method public setPhotoCount(J)V
    .locals 1
    .param p1, "photoCount"    # J

    .prologue
    .line 225
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iput-wide p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->photoCount:J

    .line 226
    return-void
.end method

.method public setVideoCount(J)V
    .locals 1
    .param p1, "videoCount"    # J

    .prologue
    .line 217
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iput-wide p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->videoCount:J

    .line 218
    return-void
.end method

.method public setmIDateHandler(Lcom/fimi/album/iview/IDateHandler;)V
    .locals 0
    .param p1, "mIDateHandler"    # Lcom/fimi/album/iview/IDateHandler;

    .prologue
    .line 209
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;, "Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater<TT;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    .line 210
    return-void
.end method
