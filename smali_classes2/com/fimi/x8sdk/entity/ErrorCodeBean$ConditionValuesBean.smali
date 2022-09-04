.class public Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;
.super Ljava/lang/Object;
.source "ErrorCodeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/entity/ErrorCodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionValuesBean"
.end annotation


# instance fields
.field private GroupID:Ljava/lang/String;

.field private IsEqual:Z

.field private Value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 413
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

    .line 444
    if-ne p0, p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v1

    .line 447
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 448
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 450
    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;

    .line 451
    .local v0, "that":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;
    iget v3, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->Value:I

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->GroupID:Ljava/lang/String;

    .line 452
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->getGroupID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->IsEqual:Z

    .line 453
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->isEqual()Z

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->GroupID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->Value:I

    return v0
.end method

.method public isEqual()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->IsEqual:Z

    return v0
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupID"    # Ljava/lang/String;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->GroupID:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setIsEqual(Z)V
    .locals 0
    .param p1, "equal"    # Z

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->IsEqual:Z

    .line 432
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->Value:I

    .line 440
    return-void
.end method
