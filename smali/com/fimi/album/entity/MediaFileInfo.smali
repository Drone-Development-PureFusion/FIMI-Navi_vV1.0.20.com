.class public Lcom/fimi/album/entity/MediaFileInfo;
.super Ljava/lang/Object;
.source "MediaFileInfo.java"


# instance fields
.field private attr:Ljava/lang/String;

.field private gentime:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private thumbsize:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/album/entity/MediaFileInfo;->attr:Ljava/lang/String;

    return-object v0
.end method

.method public getGentime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/album/entity/MediaFileInfo;->gentime:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/album/entity/MediaFileInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/album/entity/MediaFileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/album/entity/MediaFileInfo;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbsize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fimi/album/entity/MediaFileInfo;->thumbsize:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/album/entity/MediaFileInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAttr(Ljava/lang/String;)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/album/entity/MediaFileInfo;->attr:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setGentime(Ljava/lang/String;)V
    .locals 0
    .param p1, "gentime"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fimi/album/entity/MediaFileInfo;->gentime:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fimi/album/entity/MediaFileInfo;->md5:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/album/entity/MediaFileInfo;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/album/entity/MediaFileInfo;->size:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setThumbsize(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbsize"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fimi/album/entity/MediaFileInfo;->thumbsize:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/album/entity/MediaFileInfo;->time:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/album/entity/MediaFileInfo;->name:Ljava/lang/String;

    return-object v0
.end method
