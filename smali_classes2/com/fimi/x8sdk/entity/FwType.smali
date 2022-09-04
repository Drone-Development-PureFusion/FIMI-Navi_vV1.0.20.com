.class public Lcom/fimi/x8sdk/entity/FwType;
.super Ljava/lang/Object;
.source "FwType.java"


# instance fields
.field private devMouduleId:I

.field private devTargetId:I

.field private msgModuleId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevMouduleId()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fimi/x8sdk/entity/FwType;->devMouduleId:I

    return v0
.end method

.method public getDevTargetId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/fimi/x8sdk/entity/FwType;->devTargetId:I

    return v0
.end method

.method public getMsgModuleId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fimi/x8sdk/entity/FwType;->msgModuleId:I

    return v0
.end method

.method public setDevMouduleId(I)V
    .locals 0
    .param p1, "devMouduleId"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/fimi/x8sdk/entity/FwType;->devMouduleId:I

    .line 27
    return-void
.end method

.method public setDevTargetId(I)V
    .locals 0
    .param p1, "devTargetId"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fimi/x8sdk/entity/FwType;->devTargetId:I

    .line 19
    return-void
.end method

.method public setMsgModuleId(I)V
    .locals 0
    .param p1, "msgModuleId"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/fimi/x8sdk/entity/FwType;->msgModuleId:I

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FwType{devTargetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/FwType;->devTargetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devMouduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/FwType;->devMouduleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgModuleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/FwType;->msgModuleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
