.class public Lcom/fimi/network/entity/Download;
.super Ljava/lang/Object;
.source "Download.java"


# instance fields
.field private fileEncode:Ljava/lang/String;

.field private forceSign:Ljava/lang/String;

.field private modelID:Ljava/lang/String;

.field private newVersion:Ljava/lang/String;

.field private pushFireType:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private sysid:Ljava/lang/String;

.field private sysname:Ljava/lang/String;

.field private updcontents:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileEncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->fileEncode:Ljava/lang/String;

    return-object v0
.end method

.method public getForceSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->forceSign:Ljava/lang/String;

    return-object v0
.end method

.method public getModelID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->modelID:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->newVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPushFireType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->pushFireType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSysid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->sysid:Ljava/lang/String;

    return-object v0
.end method

.method public getSysname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->sysname:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdcontents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->updcontents:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/network/entity/Download;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFileEncode(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileEncode"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->fileEncode:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setForceSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "forceSign"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->forceSign:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setModelID(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelID"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->modelID:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->newVersion:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPushFireType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushFireType"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->pushFireType:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->status:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSysid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysid"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->sysid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSysname(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysname"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->sysname:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUpdcontents(Ljava/lang/String;)V
    .locals 0
    .param p1, "updcontents"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->updcontents:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fimi/network/entity/Download;->url:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download{fileEncode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->fileEncode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceSign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->forceSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sysid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->sysid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->newVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushFireType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->pushFireType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sysname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->sysname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updcontents=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->updcontents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->modelID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/Download;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
