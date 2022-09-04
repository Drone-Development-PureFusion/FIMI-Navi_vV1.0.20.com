.class public Lcom/fimi/network/entity/ApkVersionDto;
.super Lcom/fimi/network/entity/BaseModel;
.source "ApkVersionDto.java"


# instance fields
.field private fileEncode:Ljava/lang/String;

.field private fimiID:Ljava/lang/String;

.field private newVersion:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private sysname:Ljava/lang/String;

.field private updcontents:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fimi/network/entity/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileEncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/network/entity/ApkVersionDto;->fileEncode:Ljava/lang/String;

    return-object v0
.end method

.method public getFimiID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/network/entity/ApkVersionDto;->fimiID:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fimi/network/entity/ApkVersionDto;->newVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/network/entity/ApkVersionDto;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSysname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/network/entity/ApkVersionDto;->sysname:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdcontents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/network/entity/ApkVersionDto;->updcontents:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/network/entity/ApkVersionDto;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFileEncode(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileEncode"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/network/entity/ApkVersionDto;->fileEncode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFimiID(Ljava/lang/String;)V
    .locals 0
    .param p1, "fimiID"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/network/entity/ApkVersionDto;->fimiID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fimi/network/entity/ApkVersionDto;->newVersion:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fimi/network/entity/ApkVersionDto;->pkgName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSysname(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysname"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/network/entity/ApkVersionDto;->sysname:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUpdcontents(Ljava/lang/String;)V
    .locals 0
    .param p1, "updcontents"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fimi/network/entity/ApkVersionDto;->updcontents:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fimi/network/entity/ApkVersionDto;->url:Ljava/lang/String;

    .line 62
    return-void
.end method
