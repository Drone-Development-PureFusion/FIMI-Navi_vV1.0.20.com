.class public Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
.super Ljava/lang/Object;
.source "MediaDownloadInfo.java"


# instance fields
.field private compeleteZize:J

.field private endPos:J

.field public id:Ljava/lang/Long;

.field private startPos:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JJJLjava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "startPos"    # J
    .param p4, "endPos"    # J
    .param p6, "compeleteZize"    # J
    .param p8, "url"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->id:Ljava/lang/Long;

    .line 24
    iput-wide p2, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->startPos:J

    .line 25
    iput-wide p4, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->endPos:J

    .line 26
    iput-wide p6, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->compeleteZize:J

    .line 27
    iput-object p8, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->url:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCompeleteZize()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->compeleteZize:J

    return-wide v0
.end method

.method public getEndPos()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->endPos:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartPos()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->startPos:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCompeleteZize(J)V
    .locals 1
    .param p1, "compeleteZize"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->compeleteZize:J

    .line 64
    return-void
.end method

.method public setEndPos(J)V
    .locals 1
    .param p1, "endPos"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->endPos:J

    .line 56
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->id:Ljava/lang/Long;

    .line 40
    return-void
.end method

.method public setStartPos(J)V
    .locals 1
    .param p1, "startPos"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->startPos:J

    .line 48
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->url:Ljava/lang/String;

    .line 72
    return-void
.end method
