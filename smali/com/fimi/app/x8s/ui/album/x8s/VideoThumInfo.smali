.class public Lcom/fimi/app/x8s/ui/album/x8s/VideoThumInfo;
.super Ljava/lang/Object;
.source "VideoThumInfo.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/VideoThumInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/VideoThumInfo;->fileSize:J

    return-wide v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/VideoThumInfo;->fileName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/VideoThumInfo;->fileSize:J

    .line 26
    return-void
.end method
