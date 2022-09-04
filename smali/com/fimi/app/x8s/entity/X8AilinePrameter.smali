.class public Lcom/fimi/app/x8s/entity/X8AilinePrameter;
.super Ljava/lang/Object;
.source "X8AilinePrameter.java"


# instance fields
.field private DEFAULE_SPEED:F

.field private autoRecorde:I

.field private disconnectActioin:I

.field private endAction:I

.field private orientation:I

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->DEFAULE_SPEED:F

    .line 10
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->DEFAULE_SPEED:F

    iput v0, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->speed:F

    return-void
.end method


# virtual methods
.method public getAutoRecorde()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->autoRecorde:I

    return v0
.end method

.method public getDisconnectActioin()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->disconnectActioin:I

    return v0
.end method

.method public getEndAction()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->endAction:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->orientation:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->speed:F

    return v0
.end method

.method public setAutoRecorde(I)V
    .locals 0
    .param p1, "autoRecorde"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->autoRecorde:I

    .line 57
    return-void
.end method

.method public setDisconnectActioin(I)V
    .locals 0
    .param p1, "disconnectActioin"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->disconnectActioin:I

    .line 41
    return-void
.end method

.method public setEndAction(I)V
    .locals 0
    .param p1, "endAction"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->endAction:I

    .line 49
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->orientation:I

    .line 18
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->speed:F

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X8AilinePrameter{DEFAULE_SPEED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->DEFAULE_SPEED:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disconnectActioin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->disconnectActioin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->endAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoRecorde="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->autoRecorde:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
