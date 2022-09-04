.class public Lcom/fimi/x8sdk/update/fwpack/FwInfo;
.super Ljava/lang/Object;
.source "FwInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UPDATE_RESULT_FAILED:Ljava/lang/String; = "1"

.field public static final UPDATE_RESULT_SUCCESS:Ljava/lang/String; = "0"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private fwType:B

.field private modelId:B

.field private schedule:I

.field private softwareVer:S

.field private stepVer:B

.field private sysName:Ljava/lang/String;

.field private typeId:B

.field private updateResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFwType()B
    .locals 1

    .prologue
    .line 43
    iget-byte v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->fwType:B

    return v0
.end method

.method public getModelId()B
    .locals 1

    .prologue
    .line 27
    iget-byte v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->modelId:B

    return v0
.end method

.method public getSchedule()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->schedule:I

    return v0
.end method

.method public getSoftwareVer()S
    .locals 1

    .prologue
    .line 51
    iget-short v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->softwareVer:S

    return v0
.end method

.method public getStepVer()B
    .locals 1

    .prologue
    .line 60
    iget-byte v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->stepVer:B

    return v0
.end method

.method public getSysName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->sysName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()B
    .locals 1

    .prologue
    .line 35
    iget-byte v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->typeId:B

    return v0
.end method

.method public getUpdateResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->updateResult:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->errorCode:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFwType(B)V
    .locals 0
    .param p1, "fwType"    # B

    .prologue
    .line 47
    iput-byte p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->fwType:B

    .line 48
    return-void
.end method

.method public setModelId(B)V
    .locals 0
    .param p1, "modelId"    # B

    .prologue
    .line 31
    iput-byte p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->modelId:B

    .line 32
    return-void
.end method

.method public setSchedule(I)V
    .locals 0
    .param p1, "schedule"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->schedule:I

    .line 99
    return-void
.end method

.method public setSoftwareVer(S)V
    .locals 0
    .param p1, "softwareVer"    # S

    .prologue
    .line 55
    iput-short p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->softwareVer:S

    .line 56
    return-void
.end method

.method public setStepVer(B)V
    .locals 0
    .param p1, "stepVer"    # B

    .prologue
    .line 64
    iput-byte p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->stepVer:B

    .line 65
    return-void
.end method

.method public setSysName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->sysName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTypeId(B)V
    .locals 0
    .param p1, "typeId"    # B

    .prologue
    .line 39
    iput-byte p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->typeId:B

    .line 40
    return-void
.end method

.method public setUpdateResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateResult"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->updateResult:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FwInfo [modelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->modelId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->typeId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fwType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->fwType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", softwareVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->softwareVer:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stepVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->stepVer:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->updateResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
