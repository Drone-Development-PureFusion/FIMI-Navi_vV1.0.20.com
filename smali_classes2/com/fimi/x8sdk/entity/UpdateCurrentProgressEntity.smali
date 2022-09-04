.class public Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;
.super Ljava/lang/Object;
.source "UpdateCurrentProgressEntity.java"


# instance fields
.field devModuleID:I

.field devTargetID:I

.field msgModuleID:I

.field result:I

.field schedule:I

.field stage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevModuleID()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->devModuleID:I

    return v0
.end method

.method public getDevTargetID()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->devTargetID:I

    return v0
.end method

.method public getMsgModuleID()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->msgModuleID:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->result:I

    return v0
.end method

.method public getSchedule()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->schedule:I

    return v0
.end method

.method public getStage()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->stage:I

    return v0
.end method

.method public setDevModuleID(I)V
    .locals 0
    .param p1, "devModuleID"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->devModuleID:I

    .line 29
    return-void
.end method

.method public setDevTargetID(I)V
    .locals 0
    .param p1, "devTargetID"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->devTargetID:I

    .line 21
    return-void
.end method

.method public setMsgModuleID(I)V
    .locals 0
    .param p1, "msgModuleID"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->msgModuleID:I

    .line 37
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->result:I

    .line 61
    return-void
.end method

.method public setSchedule(I)V
    .locals 0
    .param p1, "schedule"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->schedule:I

    .line 53
    return-void
.end method

.method public setStage(I)V
    .locals 0
    .param p1, "stage"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->stage:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateCurrentProgressEntity{devTargetID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->devTargetID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devModuleID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->devModuleID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgModuleID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->msgModuleID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->stage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", schedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->schedule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
