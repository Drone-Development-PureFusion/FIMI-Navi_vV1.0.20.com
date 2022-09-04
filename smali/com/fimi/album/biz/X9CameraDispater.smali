.class public Lcom/fimi/album/biz/X9CameraDispater;
.super Ljava/lang/Object;
.source "X9CameraDispater.java"

# interfaces
.implements Lcom/fimi/album/iview/IHandlerCallback;
.implements Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;
.implements Lcom/fimi/album/interfaces/ICameraDeviceDispater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IHandlerCallback;",
        "Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;",
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
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/fimi/album/MediaLoadProxy;

    invoke-direct {v0}, Lcom/fimi/album/MediaLoadProxy;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->mMediaLoadProxy:Lcom/fimi/album/MediaLoadProxy;

    .line 51
    iput-boolean v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoadCompleteSuccess:Z

    .line 53
    iput-boolean v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoading:Z

    .line 55
    iput-wide v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->videoCount:J

    .line 57
    iput-wide v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->photoCount:J

    .line 60
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->otherHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDateHash:Ljava/util/LinkedHashMap;

    .line 66
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
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    .local p1, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "saveList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    .local p3, "saveHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;"
    const/4 v10, 0x1

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "cacheFormateDate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 139
    .local v6, "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    const/4 v3, 0x0

    .line 140
    .local v3, "isOneTime":Z
    new-instance v2, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v2}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 141
    .local v2, "headViewModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v2, v10}, Lcom/fimi/album/entity/MediaModel;->setHeadView(Z)V

    .line 142
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    .line 144
    .local v5, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 145
    .local v4, "lastModifyDate":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 146
    :cond_0
    if-eqz v6, :cond_1

    .line 147
    invoke-virtual {p3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    const/4 v3, 0x0

    .line 151
    :cond_1
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v6    # "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 152
    .restart local v6    # "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    new-instance v1, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v1}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 153
    .local v1, "headModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1, v4}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v10}, Lcom/fimi/album/entity/MediaModel;->setCategory(Z)V

    .line 155
    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    move-object v0, v4

    .line 157
    if-nez v3, :cond_2

    .line 158
    const/4 v3, 0x1

    .line 161
    .end local v1    # "headModel":Lcom/fimi/album/entity/MediaModel;
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v4    # "lastModifyDate":Ljava/lang/String;
    .end local v5    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    if-eqz v3, :cond_4

    .line 165
    if-eqz v6, :cond_4

    .line 166
    invoke-virtual {p3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    :cond_4
    return-void
.end method

.method private reallyCameraFolderFile()V
    .locals 2

    .prologue
    .line 91
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    new-instance v0, Lcom/fimi/album/x9/X9MediaFileLoad;

    iget-object v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0, v1}, Lcom/fimi/album/x9/X9MediaFileLoad;-><init>(Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;Ljava/util/List;)V

    .line 92
    .local v0, "mX9Loader":Lcom/fimi/album/x9/X9MediaFileLoad;
    iget-object v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->mMediaLoadProxy:Lcom/fimi/album/MediaLoadProxy;

    invoke-virtual {v1, v0}, Lcom/fimi/album/MediaLoadProxy;->setMediaLoad(Lcom/fimi/album/download/interfaces/IMediaFileLoad;)V

    .line 93
    iget-object v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->mMediaLoadProxy:Lcom/fimi/album/MediaLoadProxy;

    invoke-virtual {v1}, Lcom/fimi/album/MediaLoadProxy;->startLoad()V

    .line 96
    return-void
.end method


# virtual methods
.method public forCameraFolder()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    const/16 v3, 0xa

    .line 69
    const-string v1, "mediax9"

    const-string v2, "forCameraFolder: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoading:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, "mediax9"

    const-string v2, "forCameraFolder1: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoading:Z

    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 74
    .local v0, "mMessage":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 75
    iget-object v1, p0, Lcom/fimi/album/biz/X9CameraDispater;->otherHandler:Landroid/os/Handler;

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
    .line 174
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    .line 178
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    .line 183
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDateHash:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getPhotoCount()J
    .locals 2

    .prologue
    .line 247
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iget-wide v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->photoCount:J

    return-wide v0
.end method

.method public getVideoCount()J
    .locals 2

    .prologue
    .line 239
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iget-wide v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->videoCount:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 82
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoadCompleteSuccess:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/fimi/album/biz/X9CameraDispater;->reallyCameraFolderFile()V

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
    .line 255
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoadCompleteSuccess:Z

    return v0
.end method

.method public onComplete(Z)V
    .locals 10
    .param p1, "success"    # Z

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    const-wide/16 v8, 0x1

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 202
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    iput-wide v4, p0, Lcom/fimi/album/biz/X9CameraDispater;->videoCount:J

    .line 206
    iput-wide v4, p0, Lcom/fimi/album/biz/X9CameraDispater;->photoCount:J

    .line 207
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 208
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    iget-wide v4, p0, Lcom/fimi/album/biz/X9CameraDispater;->videoCount:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/fimi/album/biz/X9CameraDispater;->videoCount:J

    goto :goto_0

    .line 211
    :cond_0
    iget-wide v4, p0, Lcom/fimi/album/biz/X9CameraDispater;->photoCount:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/fimi/album/biz/X9CameraDispater;->photoCount:J

    goto :goto_0

    .line 214
    .end local v1    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 216
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDateHash:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, v2, v3}, Lcom/fimi/album/biz/X9CameraDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    .line 220
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    if-eqz v2, :cond_2

    .line 221
    const-string v2, "X9MediaPresenter"

    const-string v3, "onComplete1: "

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    invoke-interface {v2, v6, v6}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    .line 223
    iput-boolean v6, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoadCompleteSuccess:Z

    .line 231
    .end local v0    # "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    :goto_1
    iput-boolean v7, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoading:Z

    .line 232
    return-void

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    if-eqz v2, :cond_2

    .line 227
    const-string v2, "X9MediaPresenter"

    const-string v3, "onComplete: "

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    invoke-interface {v2, v6, v7}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    goto :goto_1
.end method

.method public reDefaultList()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoading:Z

    .line 190
    iput-boolean v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoadCompleteSuccess:Z

    .line 191
    iput-wide v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->videoCount:J

    .line 192
    iput-wide v2, p0, Lcom/fimi/album/biz/X9CameraDispater;->photoCount:J

    .line 193
    iget-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 194
    iget-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 195
    iget-object v0, p0, Lcom/fimi/album/biz/X9CameraDispater;->cameraDateHash:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 196
    return-void
.end method

.method public setLoadCompleteSuccess(Z)V
    .locals 0
    .param p1, "loadCompleteSuccess"    # Z

    .prologue
    .line 259
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iput-boolean p1, p0, Lcom/fimi/album/biz/X9CameraDispater;->isLoadCompleteSuccess:Z

    .line 260
    return-void
.end method

.method public setPhotoCount(J)V
    .locals 1
    .param p1, "photoCount"    # J

    .prologue
    .line 251
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iput-wide p1, p0, Lcom/fimi/album/biz/X9CameraDispater;->photoCount:J

    .line 252
    return-void
.end method

.method public setVideoCount(J)V
    .locals 1
    .param p1, "videoCount"    # J

    .prologue
    .line 243
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iput-wide p1, p0, Lcom/fimi/album/biz/X9CameraDispater;->videoCount:J

    .line 244
    return-void
.end method

.method public setmIDateHandler(Lcom/fimi/album/iview/IDateHandler;)V
    .locals 0
    .param p1, "mIDateHandler"    # Lcom/fimi/album/iview/IDateHandler;

    .prologue
    .line 235
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    iput-object p1, p0, Lcom/fimi/album/biz/X9CameraDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    .line 236
    return-void
.end method

.method public test()V
    .locals 6

    .prologue
    .line 99
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater;, "Lcom/fimi/album/biz/X9CameraDispater<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/FimiLogger/X9/MediaFile/image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v0}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 102
    .local v0, "m":Lcom/fimi/album/entity/MediaModel;
    const-string v3, "A"

    invoke-virtual {v0, v3}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setLocalFileDir(Ljava/lang/String;)V

    .line 104
    const-string v2, "https://cdn.awsbj0.fds.api.mi-img.com/mediasdata/firmware-C1.zip"

    .line 105
    .local v2, "thum":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/fimi/album/entity/MediaModel;->setFileUrl(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/fimi/album/entity/MediaModel;->setDownLoadThum(Z)V

    .line 108
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;

    new-instance v5, Lcom/fimi/album/biz/X9CameraDispater$1;

    invoke-direct {v5, p0}, Lcom/fimi/album/biz/X9CameraDispater$1;-><init>(Lcom/fimi/album/biz/X9CameraDispater;)V

    invoke-direct {v4, v0, v5}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;-><init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 133
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method
