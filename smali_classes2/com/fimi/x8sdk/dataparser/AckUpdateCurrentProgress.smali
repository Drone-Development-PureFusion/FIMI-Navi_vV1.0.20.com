.class public Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckUpdateCurrentProgress.java"


# instance fields
.field deviceNumber:I

.field updateCurrentProgressEntitys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->updateCurrentProgressEntitys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeviceNumber()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->deviceNumber:I

    return v0
.end method

.method public getUpdateCurrentProgressEntitys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->updateCurrentProgressEntitys:Ljava/util/List;

    return-object v0
.end method

.method public setDeviceNumber(I)V
    .locals 0
    .param p1, "deviceNumber"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->deviceNumber:I

    .line 49
    return-void
.end method

.method public setUpdateCurrentProgressEntitys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "updateCurrentProgressEntitys":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->updateCurrentProgressEntitys:Ljava/util/List;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v1, "updateCurrentProgressEntityStr":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->updateCurrentProgressEntitys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    .line 64
    .local v0, "updateCurrentProgressEntity":Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentProgressEntity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 66
    .end local v0    # "updateCurrentProgressEntity":Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AckUpdateCurrentProgress{deviceNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->deviceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updateCurrentProgressEntitys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    return-object v2
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 9
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 21
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v8

    iput v8, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->deviceNumber:I

    .line 22
    iget v8, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->deviceNumber:I

    if-ltz v8, :cond_0

    .line 23
    iget-object v8, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->updateCurrentProgressEntitys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 24
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v8, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->deviceNumber:I

    if-ge v2, v8, :cond_0

    .line 25
    new-instance v7, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;

    invoke-direct {v7}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;-><init>()V

    .line 26
    .local v7, "updateCurrentProgressEntity":Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    .line 27
    .local v1, "devTargetID":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    .line 28
    .local v0, "devModuleID":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v3

    .line 29
    .local v3, "msgModuleID":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v6

    .line 30
    .local v6, "stage":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    .line 31
    .local v5, "schedule":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v4

    .line 32
    .local v4, "result":S
    invoke-virtual {v7, v1}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->setDevTargetID(I)V

    .line 33
    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->setDevModuleID(I)V

    .line 34
    invoke-virtual {v7, v3}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->setMsgModuleID(I)V

    .line 35
    invoke-virtual {v7, v6}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->setStage(I)V

    .line 36
    invoke-virtual {v7, v5}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->setSchedule(I)V

    .line 37
    invoke-virtual {v7, v4}, Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;->setResult(I)V

    .line 38
    iget-object v8, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->updateCurrentProgressEntitys:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "devModuleID":B
    .end local v1    # "devTargetID":B
    .end local v2    # "i":I
    .end local v3    # "msgModuleID":B
    .end local v4    # "result":S
    .end local v5    # "schedule":B
    .end local v6    # "stage":B
    .end local v7    # "updateCurrentProgressEntity":Lcom/fimi/x8sdk/entity/UpdateCurrentProgressEntity;
    :cond_0
    return-void
.end method
