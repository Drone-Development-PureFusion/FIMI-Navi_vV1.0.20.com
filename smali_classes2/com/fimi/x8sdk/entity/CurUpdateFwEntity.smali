.class public Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;
.super Ljava/lang/Object;
.source "CurUpdateFwEntity.java"


# instance fields
.field devModuleId:I

.field devTargetId:I

.field msgModuleId:I

.field result:I

.field schedule:I

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevModuleId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->devModuleId:I

    return v0
.end method

.method public getDevTargetId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->devTargetId:I

    return v0
.end method

.method public getMsgModuleId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->msgModuleId:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->result:I

    return v0
.end method

.method public getSchedule()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->schedule:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->state:I

    return v0
.end method

.method public setDevModuleId(I)V
    .locals 0
    .param p1, "devModuleId"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->devModuleId:I

    .line 30
    return-void
.end method

.method public setDevTargetId(I)V
    .locals 0
    .param p1, "devTargetId"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->devTargetId:I

    .line 22
    return-void
.end method

.method public setMsgModuleId(I)V
    .locals 0
    .param p1, "msgModuleId"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->msgModuleId:I

    .line 38
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->result:I

    .line 62
    return-void
.end method

.method public setSchedule(I)V
    .locals 0
    .param p1, "schedule"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->schedule:I

    .line 54
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/fimi/x8sdk/entity/CurUpdateFwEntity;->state:I

    .line 46
    return-void
.end method
