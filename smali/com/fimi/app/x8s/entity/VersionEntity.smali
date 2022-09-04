.class public Lcom/fimi/app/x8s/entity/VersionEntity;
.super Ljava/lang/Object;
.source "VersionEntity.java"


# instance fields
.field private hasNewVersion:Z

.field private tag:I

.field private version:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;
    .param p4, "hasNewVersion"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->tag:I

    .line 26
    iput-object p2, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionName:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionCode:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->hasNewVersion:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionName:Ljava/lang/String;

    .line 34
    if-eqz p3, :cond_2

    .line 35
    invoke-virtual {p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getVersionDetails()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "dt":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 37
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 39
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 44
    .end local v1    # "split":[Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionCode:Ljava/lang/String;

    .line 48
    .end local v0    # "dt":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionCode:Ljava/lang/String;

    .line 49
    return-void

    .line 42
    .restart local v0    # "dt":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 46
    .end local v0    # "dt":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionCode:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->tag:I

    return v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hasNewVersion()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->hasNewVersion:Z

    return v0
.end method

.method public isHasNewVersion()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->hasNewVersion:Z

    return v0
.end method

.method public setHasNewVersion(Z)V
    .locals 0
    .param p1, "hasNewVersion"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->hasNewVersion:Z

    .line 73
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->tag:I

    .line 81
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionCode:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/VersionEntity;->versionName:Ljava/lang/String;

    .line 57
    return-void
.end method
