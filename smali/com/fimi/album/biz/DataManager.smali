.class public Lcom/fimi/album/biz/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static mDataManager:Lcom/fimi/album/biz/DataManager;


# instance fields
.field private mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

.field private mFolderDispater:Lcom/fimi/album/biz/FolderDispater;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/fimi/album/biz/FolderDispater;

    invoke-direct {v0}, Lcom/fimi/album/biz/FolderDispater;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    .line 25
    return-void
.end method

.method public static obtain()Lcom/fimi/album/biz/DataManager;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/fimi/album/biz/DataManager;->mDataManager:Lcom/fimi/album/biz/DataManager;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/fimi/album/biz/DataManager;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/fimi/album/biz/DataManager;->mDataManager:Lcom/fimi/album/biz/DataManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/fimi/album/biz/DataManager;

    invoke-direct {v0}, Lcom/fimi/album/biz/DataManager;-><init>()V

    sput-object v0, Lcom/fimi/album/biz/DataManager;->mDataManager:Lcom/fimi/album/biz/DataManager;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/fimi/album/biz/DataManager;->mDataManager:Lcom/fimi/album/biz/DataManager;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public forEachFolder(Ljava/lang/String;)V
    .locals 1
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 43
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0, p1}, Lcom/fimi/album/biz/FolderDispater;->forEachFolder(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public forEachFolderPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 47
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/album/biz/FolderDispater;->forEachFolderPhoto(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public forEachFolderVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 51
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/album/biz/FolderDispater;->forEachFolderVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public forX9CameraFolder()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->forCameraFolder()V

    .line 102
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
    .line 97
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getDataHash()Ljava/util/LinkedHashMap;

    move-result-object v0

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
    .line 73
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getDataHashPhoto()Ljava/util/LinkedHashMap;

    move-result-object v0

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
    .line 85
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getDataHashVideo()Ljava/util/LinkedHashMap;

    move-result-object v0

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
    .line 65
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getLocalDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

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
    .line 69
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getLocalDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPhotoCount()J
    .locals 2

    .prologue
    .line 156
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getPhotoCount()J

    move-result-wide v0

    return-wide v0
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
    .line 77
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getLocalPhotoDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

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
    .line 81
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getLocalPhotoDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLocalVideoCount()J
    .locals 2

    .prologue
    .line 152
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getVideoCount()J

    move-result-wide v0

    return-wide v0
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
    .line 89
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getLocalVideoDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

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
    .line 93
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->getLocalVideoDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getX8CameraPhotoCount()J
    .locals 2

    .prologue
    .line 180
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->getPhotoCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getX8CameraVideoCount()J
    .locals 2

    .prologue
    .line 176
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->getVideoCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getX9CameraDataHash()Ljava/util/LinkedHashMap;
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
    .line 140
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->getCameraDateHash()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getX9CameraDataList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->getCameraDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getX9CameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->getCameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX9CameraPhotoCount()J
    .locals 2

    .prologue
    .line 172
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->getPhotoCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getX9CameraVideoCount()J
    .locals 2

    .prologue
    .line 168
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->getVideoCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isHadLoadDate()Z
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolder()Z

    move-result v0

    return v0
.end method

.method public isX9CameraLoad()Z
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->isLoadCompleteSuccess()Z

    move-result v0

    return v0
.end method

.method public isX9LocalLoad()Z
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->isHadForEachFolder()Z

    move-result v0

    return v0
.end method

.method public reLocalDefaultVaribale()V
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->reDefaultList()V

    .line 121
    return-void
.end method

.method public reLocalPhotoDefaultVaribale()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->rePhotoDefaultList()V

    .line 125
    return-void
.end method

.method public reLocalVideoDefaultVaribale()V
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->reVideoDefaultList()V

    .line 129
    return-void
.end method

.method public reX9CameraDefaultVaribale()V
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->reDefaultList()V

    .line 133
    return-void
.end method

.method public removeCallBack()V
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0}, Lcom/fimi/album/biz/FolderDispater;->removeCallBack()V

    .line 137
    return-void
.end method

.method public setCameraDeviceDispater(Lcom/fimi/album/interfaces/ICameraDeviceDispater;)V
    .locals 0
    .param p1, "mCameraDispater"    # Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    .prologue
    .line 28
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iput-object p1, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    .line 29
    return-void
.end method

.method public setIdataImpl(Lcom/fimi/album/iview/IDateHandler;)V
    .locals 1
    .param p1, "idataImpl"    # Lcom/fimi/album/iview/IDateHandler;

    .prologue
    .line 55
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0, p1}, Lcom/fimi/album/biz/FolderDispater;->setmIDateHandler(Lcom/fimi/album/iview/IDateHandler;)V

    .line 56
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0, p1}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->setmIDateHandler(Lcom/fimi/album/iview/IDateHandler;)V

    .line 57
    return-void
.end method

.method public setLocalIdataImpl(Lcom/fimi/album/iview/IDateHandler;)V
    .locals 1
    .param p1, "idataImpl"    # Lcom/fimi/album/iview/IDateHandler;

    .prologue
    .line 60
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0, p1}, Lcom/fimi/album/biz/FolderDispater;->setmIDateHandler(Lcom/fimi/album/iview/IDateHandler;)V

    .line 61
    return-void
.end method

.method public setLocalLoad(Z)V
    .locals 1
    .param p1, "isload"    # Z

    .prologue
    .line 193
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0, p1}, Lcom/fimi/album/biz/FolderDispater;->setHadForEachFolder(Z)V

    .line 194
    return-void
.end method

.method public setLocalPhotoCount(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 148
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/album/biz/FolderDispater;->setPhotoCount(J)V

    .line 149
    return-void
.end method

.method public setLocalVideoCount(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 144
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mFolderDispater:Lcom/fimi/album/biz/FolderDispater;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/album/biz/FolderDispater;->setVideoCount(J)V

    .line 145
    return-void
.end method

.method public setX9CameraPhotoCount(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 164
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0, p1, p2}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->setPhotoCount(J)V

    .line 165
    return-void
.end method

.method public setX9CameraVideoCount(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 160
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0, p1, p2}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->setVideoCount(J)V

    .line 161
    return-void
.end method

.method public setX9CameralLoad(Z)V
    .locals 1
    .param p1, "isload"    # Z

    .prologue
    .line 197
    .local p0, "this":Lcom/fimi/album/biz/DataManager;, "Lcom/fimi/album/biz/DataManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/DataManager;->mCameraDispater:Lcom/fimi/album/interfaces/ICameraDeviceDispater;

    invoke-interface {v0, p1}, Lcom/fimi/album/interfaces/ICameraDeviceDispater;->setLoadCompleteSuccess(Z)V

    .line 198
    return-void
.end method
