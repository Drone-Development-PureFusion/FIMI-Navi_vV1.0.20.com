.class public Lcom/fimi/album/download/entity/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private downloading:Z

.field private fileName:Ljava/lang/String;

.field private finished:I

.field private isDownloadFinish:Z

.field private isStop:Z

.field private length:I

.field private path:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/album/download/entity/FileInfo;->isStop:Z

    return-void
.end method


# virtual methods
.method public getDownloadFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/fimi/album/download/entity/FileInfo;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "downloadName":Ljava/lang/String;
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/album/download/entity/FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFinished()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/fimi/album/download/entity/FileInfo;->finished:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/fimi/album/download/entity/FileInfo;->length:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/album/download/entity/FileInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/album/download/entity/FileInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadFinish()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/fimi/album/download/entity/FileInfo;->isDownloadFinish:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/fimi/album/download/entity/FileInfo;->downloading:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/fimi/album/download/entity/FileInfo;->isStop:Z

    return v0
.end method

.method public setDownloadFinish(Z)V
    .locals 0
    .param p1, "isDownloadFinish"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/fimi/album/download/entity/FileInfo;->isDownloadFinish:Z

    .line 34
    return-void
.end method

.method public setDownloading(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/fimi/album/download/entity/FileInfo;->downloading:Z

    .line 14
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fimi/album/download/entity/FileInfo;->fileName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFinished(I)V
    .locals 0
    .param p1, "finished"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/fimi/album/download/entity/FileInfo;->finished:I

    .line 80
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/fimi/album/download/entity/FileInfo;->length:I

    .line 72
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fimi/album/download/entity/FileInfo;->path:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setStop(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/fimi/album/download/entity/FileInfo;->isStop:Z

    .line 88
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fimi/album/download/entity/FileInfo;->url:Ljava/lang/String;

    .line 64
    return-void
.end method
