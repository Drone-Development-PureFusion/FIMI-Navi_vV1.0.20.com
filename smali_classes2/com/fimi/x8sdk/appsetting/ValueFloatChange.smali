.class public Lcom/fimi/x8sdk/appsetting/ValueFloatChange;
.super Ljava/lang/Object;
.source "ValueFloatChange.java"


# instance fields
.field private newValue:F

.field private oldValue:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "oldValue"    # F
    .param p2, "newValue"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/ValueFloatChange;->oldValue:F

    .line 13
    iput p2, p0, Lcom/fimi/x8sdk/appsetting/ValueFloatChange;->newValue:F

    .line 14
    return-void
.end method


# virtual methods
.method public getNewValue()F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/ValueFloatChange;->newValue:F

    return v0
.end method

.method public getOldValue()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/ValueFloatChange;->oldValue:F

    return v0
.end method

.method public setNewValue(F)V
    .locals 0
    .param p1, "newValue"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/ValueFloatChange;->newValue:F

    .line 22
    return-void
.end method

.method public setOldValue(F)V
    .locals 0
    .param p1, "oldValue"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/ValueFloatChange;->oldValue:F

    .line 30
    return-void
.end method
