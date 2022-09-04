.class public Lcom/fimi/kernel/upgrade/version/FirmwareInfo;
.super Ljava/lang/Object;
.source "FirmwareInfo.java"

# interfaces
.implements Lcom/fimi/kernel/upgrade/interfaces/IFirmwareInfo;


# instance fields
.field private errorInfo:Ljava/lang/String;

.field private fb:Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;

.field private fileSize:J

.field private firmwareName:Ljava/lang/String;

.field private isForce:Z

.field logicVersion:J

.field private path:Ljava/lang/String;

.field private subTargetId:B

.field private sysId:I

.field private targetId:B

.field private updateContent:Ljava/lang/String;

.field private upgradeResult:Z

.field private versionError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFb()Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->fb:Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->fileSize:J

    return-wide v0
.end method

.method public getFirmwareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->firmwareName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogicVersion()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->logicVersion:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTargetId()B
    .locals 1

    .prologue
    .line 76
    iget-byte v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->subTargetId:B

    return v0
.end method

.method public getSysId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->sysId:I

    return v0
.end method

.method public getTargetId()B
    .locals 1

    .prologue
    .line 108
    iget-byte v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->targetId:B

    return v0
.end method

.method public getUpdateContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->updateContent:Ljava/lang/String;

    return-object v0
.end method

.method public isForce()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->isForce:Z

    return v0
.end method

.method public isUpgradeResult()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->upgradeResult:Z

    return v0
.end method

.method public isVersionError()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->versionError:Z

    return v0
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->errorInfo:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFb(Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;)V
    .locals 0
    .param p1, "fb"    # Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->fb:Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;

    .line 129
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->fileSize:J

    .line 105
    return-void
.end method

.method public setFirmwareName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firmwareName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->firmwareName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setForce(Z)V
    .locals 0
    .param p1, "isForce"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->isForce:Z

    .line 54
    return-void
.end method

.method public setLogicVersion(J)V
    .locals 1
    .param p1, "logicVersion"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->logicVersion:J

    .line 41
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->path:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setSubTargetId(B)V
    .locals 0
    .param p1, "subTargetId"    # B

    .prologue
    .line 80
    iput-byte p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->subTargetId:B

    .line 81
    return-void
.end method

.method public setSysId(I)V
    .locals 0
    .param p1, "sysId"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->sysId:I

    .line 121
    return-void
.end method

.method public setTargetId(B)V
    .locals 0
    .param p1, "targetId"    # B

    .prologue
    .line 112
    iput-byte p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->targetId:B

    .line 113
    return-void
.end method

.method public setUpdateContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateContent"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->updateContent:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setUpgradeResult(Z)V
    .locals 0
    .param p1, "upgradeResult"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->upgradeResult:Z

    .line 89
    return-void
.end method

.method public setVersionError(Z)V
    .locals 0
    .param p1, "versionError"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareInfo;->versionError:Z

    .line 36
    return-void
.end method
