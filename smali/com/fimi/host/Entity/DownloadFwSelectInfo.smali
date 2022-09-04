.class public Lcom/fimi/host/Entity/DownloadFwSelectInfo;
.super Ljava/lang/Object;
.source "DownloadFwSelectInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private detailBuffer:Ljava/lang/StringBuffer;

.field private fileSize:J

.field private index:I

.field private isForceSign:Z

.field private isSelect:Z

.field private mUpfirewareDtoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field

.field private product:Lcom/fimi/host/common/ProductEnum;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->mUpfirewareDtoList:Ljava/util/List;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isSelect:Z

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->index:I

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->detailBuffer:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public add2List(Lcom/fimi/network/entity/UpfirewareDto;)V
    .locals 1
    .param p1, "dto"    # Lcom/fimi/network/entity/UpfirewareDto;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->mUpfirewareDtoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public addAll2List(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    iget-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->mUpfirewareDtoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    return-void
.end method

.method public addDetail(Ljava/lang/String;)V
    .locals 3
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 63
    iget v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->index:I

    .line 64
    iget-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->detailBuffer:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, "obj":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->detailBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->mUpfirewareDtoList:Ljava/util/List;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->fileSize:J

    return-wide v0
.end method

.method public getProduct()Lcom/fimi/host/common/ProductEnum;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->product:Lcom/fimi/host/common/ProductEnum;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceSign()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isForceSign:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isSelect:Z

    return v0
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->fileSize:J

    .line 36
    return-void
.end method

.method public setForceSign(Z)V
    .locals 0
    .param p1, "forceSign"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isForceSign:Z

    .line 61
    return-void
.end method

.method public setProduct(Lcom/fimi/host/common/ProductEnum;)V
    .locals 0
    .param p1, "product"    # Lcom/fimi/host/common/ProductEnum;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->product:Lcom/fimi/host/common/ProductEnum;

    .line 54
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isSelect:Z

    .line 46
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->title:Ljava/lang/String;

    .line 21
    return-void
.end method
