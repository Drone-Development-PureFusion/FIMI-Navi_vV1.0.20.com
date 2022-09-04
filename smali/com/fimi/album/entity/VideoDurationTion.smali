.class public Lcom/fimi/album/entity/VideoDurationTion;
.super Ljava/lang/Object;
.source "VideoDurationTion.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field formateVideoTime:Ljava/lang/String;

.field holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

.field mediaModel:Lcom/fimi/album/entity/MediaModel;

.field private position:I


# direct methods
.method public constructor <init>(Lcom/fimi/album/adapter/BodyRecycleViewHolder;Lcom/fimi/album/entity/MediaModel;I)V
    .locals 0
    .param p1, "holder"    # Lcom/fimi/album/adapter/BodyRecycleViewHolder;
    .param p2, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;
    .param p3, "position"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/fimi/album/entity/VideoDurationTion;->holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    .line 17
    iput-object p2, p0, Lcom/fimi/album/entity/VideoDurationTion;->mediaModel:Lcom/fimi/album/entity/MediaModel;

    .line 18
    iput p3, p0, Lcom/fimi/album/entity/VideoDurationTion;->position:I

    .line 19
    return-void
.end method


# virtual methods
.method public getFormateVideoTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/album/entity/VideoDurationTion;->formateVideoTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHolder()Lcom/fimi/album/adapter/BodyRecycleViewHolder;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/album/entity/VideoDurationTion;->holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    return-object v0
.end method

.method public getMediaModel()Lcom/fimi/album/entity/MediaModel;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/album/entity/VideoDurationTion;->mediaModel:Lcom/fimi/album/entity/MediaModel;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/album/entity/VideoDurationTion;->position:I

    return v0
.end method

.method public setFormateVideoTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "formateVideoTime"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/album/entity/VideoDurationTion;->formateVideoTime:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setHolder(Lcom/fimi/album/adapter/BodyRecycleViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/album/entity/VideoDurationTion;->holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    .line 35
    return-void
.end method

.method public setMediaModel(Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fimi/album/entity/VideoDurationTion;->mediaModel:Lcom/fimi/album/entity/MediaModel;

    .line 43
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/fimi/album/entity/VideoDurationTion;->position:I

    .line 59
    return-void
.end method
