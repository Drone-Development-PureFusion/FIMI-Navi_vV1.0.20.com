.class public Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;
.super Ljava/lang/Object;
.source "ErrorCodeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/entity/ErrorCodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlightPhase"
.end annotation


# instance fields
.field private IsEqual:Z

.field private Value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 345
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

    .line 367
    if-ne p0, p1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v1

    .line 370
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 371
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 373
    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;

    .line 374
    .local v0, "that":Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;
    iget v3, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->Value:I

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->IsEqual:Z

    .line 375
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->isEqual()Z

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->Value:I

    return v0
.end method

.method public isEqual()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->IsEqual:Z

    return v0
.end method

.method public setIsEqual(Z)V
    .locals 0
    .param p1, "equal"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->IsEqual:Z

    .line 355
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 362
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->Value:I

    .line 363
    return-void
.end method
