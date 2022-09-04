.class public Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoNotifyFwFile.java"


# instance fields
.field devModuleId:I

.field devTargetId:I

.field fwNumber:I

.field fwTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/FwType;",
            ">;"
        }
    .end annotation
.end field

.field msgModuleId:I

.field notifyType:I

.field reserve:I

.field result:I

.field schedule:I

.field stage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwTypeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDevModuleId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devModuleId:I

    return v0
.end method

.method public getDevTargetId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devTargetId:I

    return v0
.end method

.method public getFwNumber()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwNumber:I

    return v0
.end method

.method public getFwTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/FwType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getMsgModuleId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->msgModuleId:I

    return v0
.end method

.method public getNotifyType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->notifyType:I

    return v0
.end method

.method public getReserve()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->reserve:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->result:I

    return v0
.end method

.method public getSchedule()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->schedule:I

    return v0
.end method

.method public getStage()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->stage:I

    return v0
.end method

.method public setFwNumber(I)V
    .locals 0
    .param p1, "fwNumber"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwNumber:I

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoNotifyFwFile{notifyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->notifyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fwNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devTargetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devTargetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devModuleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devModuleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgModuleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->msgModuleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->stage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", schedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->schedule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->reserve:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 6
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->notifyType:I

    .line 32
    iget v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->notifyType:I

    packed-switch v5, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->result:I

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->result:I

    goto :goto_0

    .line 40
    :pswitch_2
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwNumber:I

    .line 41
    iget v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwNumber:I

    if-ltz v5, :cond_0

    .line 42
    iget-object v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwTypeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 43
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwNumber:I

    if-ge v3, v5, :cond_0

    .line 44
    new-instance v2, Lcom/fimi/x8sdk/entity/FwType;

    invoke-direct {v2}, Lcom/fimi/x8sdk/entity/FwType;-><init>()V

    .line 45
    .local v2, "fwType":Lcom/fimi/x8sdk/entity/FwType;
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    .line 46
    .local v1, "devTargetId":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    .line 47
    .local v0, "devModuleId":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v4

    .line 48
    .local v4, "moduleId":B
    invoke-virtual {v2, v0}, Lcom/fimi/x8sdk/entity/FwType;->setDevMouduleId(I)V

    .line 49
    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/entity/FwType;->setDevTargetId(I)V

    .line 50
    invoke-virtual {v2, v4}, Lcom/fimi/x8sdk/entity/FwType;->setMsgModuleId(I)V

    .line 51
    iget-object v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->fwTypeList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "devModuleId":B
    .end local v1    # "devTargetId":B
    .end local v2    # "fwType":Lcom/fimi/x8sdk/entity/FwType;
    .end local v3    # "i":I
    .end local v4    # "moduleId":B
    :pswitch_3
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devTargetId:I

    .line 57
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devModuleId:I

    .line 58
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->msgModuleId:I

    .line 59
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->stage:I

    .line 60
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->schedule:I

    goto/16 :goto_0

    .line 63
    :pswitch_4
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devTargetId:I

    .line 64
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devModuleId:I

    .line 65
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->msgModuleId:I

    .line 66
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->stage:I

    .line 67
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->result:I

    goto/16 :goto_0

    .line 70
    :pswitch_5
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devTargetId:I

    .line 71
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->devModuleId:I

    .line 72
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->msgModuleId:I

    .line 73
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->stage:I

    .line 74
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->reserve:I

    goto/16 :goto_0

    .line 77
    :pswitch_6
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v5

    iput v5, p0, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->result:I

    goto/16 :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
