.class public Lcom/fimi/album/MediaLoadProxy;
.super Ljava/lang/Object;
.source "MediaLoadProxy.java"

# interfaces
.implements Lcom/fimi/album/download/interfaces/IMediaFileLoad;


# instance fields
.field load:Lcom/fimi/album/download/interfaces/IMediaFileLoad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMediaLoad(Lcom/fimi/album/download/interfaces/IMediaFileLoad;)V
    .locals 0
    .param p1, "load"    # Lcom/fimi/album/download/interfaces/IMediaFileLoad;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/fimi/album/MediaLoadProxy;->load:Lcom/fimi/album/download/interfaces/IMediaFileLoad;

    .line 10
    return-void
.end method

.method public startLoad()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fimi/album/MediaLoadProxy;->load:Lcom/fimi/album/download/interfaces/IMediaFileLoad;

    invoke-interface {v0}, Lcom/fimi/album/download/interfaces/IMediaFileLoad;->startLoad()V

    .line 14
    return-void
.end method

.method public stopLoad()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/album/MediaLoadProxy;->load:Lcom/fimi/album/download/interfaces/IMediaFileLoad;

    invoke-interface {v0}, Lcom/fimi/album/download/interfaces/IMediaFileLoad;->stopLoad()V

    .line 18
    return-void
.end method
