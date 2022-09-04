.class public Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckUpdateStatus.java"


# instance fields
.field devModuleId:I

.field devTargetId:I

.field deviceNumber:I

.field entityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;",
            ">;"
        }
    .end annotation
.end field

.field msgModuleId:I

.field result:I

.field schedule:I

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->entityList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeviceNumber()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->deviceNumber:I

    return v0
.end method

.method public getEntityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->entityList:Ljava/util/List;

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 3
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 26
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->deviceNumber:I

    .line 27
    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->deviceNumber:I

    if-lez v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->entityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->deviceNumber:I

    if-ge v0, v2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->devTargetId:I

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->devModuleId:I

    .line 32
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->msgModuleId:I

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->state:I

    .line 34
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->schedule:I

    .line 35
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->result:I

    .line 36
    new-instance v1, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;

    invoke-direct {v1}, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;-><init>()V

    .line 37
    .local v1, "updateFwEntity":Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;
    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->devTargetId:I

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->setDevTargetId(I)V

    .line 38
    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->devModuleId:I

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->setDevModuleId(I)V

    .line 39
    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->result:I

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->setResult(I)V

    .line 40
    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->schedule:I

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->setSchedule(I)V

    .line 41
    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->state:I

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->setState(I)V

    .line 42
    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->msgModuleId:I

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->setMsgModuleId(I)V

    .line 43
    iget-object v2, p0, Lcom/fimi/x8sdk/dataparser/AckUpdateStatus;->entityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "i":I
    .end local v1    # "updateFwEntity":Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;
    :cond_0
    return-void
.end method
