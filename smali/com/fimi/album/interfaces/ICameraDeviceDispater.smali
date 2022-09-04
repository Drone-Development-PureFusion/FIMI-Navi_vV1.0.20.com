.class public interface abstract Lcom/fimi/album/interfaces/ICameraDeviceDispater;
.super Ljava/lang/Object;
.source "ICameraDeviceDispater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract forCameraFolder()V
.end method

.method public abstract getCameraDataList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getCameraDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getCameraDateHash()Ljava/util/LinkedHashMap;
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
.end method

.method public abstract getPhotoCount()J
.end method

.method public abstract getVideoCount()J
.end method

.method public abstract isLoadCompleteSuccess()Z
.end method

.method public abstract reDefaultList()V
.end method

.method public abstract setLoadCompleteSuccess(Z)V
.end method

.method public abstract setPhotoCount(J)V
.end method

.method public abstract setVideoCount(J)V
.end method

.method public abstract setmIDateHandler(Lcom/fimi/album/iview/IDateHandler;)V
.end method
