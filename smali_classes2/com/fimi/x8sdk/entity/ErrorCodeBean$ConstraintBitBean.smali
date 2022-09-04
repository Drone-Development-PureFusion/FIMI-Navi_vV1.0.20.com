.class public Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;
.super Ljava/lang/Object;
.source "ErrorCodeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/entity/ErrorCodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstraintBitBean"
.end annotation


# instance fields
.field private BitOffset:I

.field private GroupID:Ljava/lang/String;

.field private Value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    if-ne p0, p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 336
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 338
    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;

    .line 339
    .local v0, "that":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;
    iget v3, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->BitOffset:I

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->getBitOffset()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->GroupID:Ljava/lang/String;

    .line 340
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->getGroupID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->Value:Z

    .line 341
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->isValue()Z

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getBitOffset()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->BitOffset:I

    return v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->GroupID:Ljava/lang/String;

    return-object v0
.end method

.method public isValue()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->Value:Z

    return v0
.end method

.method public setBitOffset(I)V
    .locals 0
    .param p1, "bitOffset"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->BitOffset:I

    .line 311
    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupID"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->GroupID:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->Value:Z

    .line 319
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstraintBit{GroupID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->GroupID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BitOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->BitOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->Value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
