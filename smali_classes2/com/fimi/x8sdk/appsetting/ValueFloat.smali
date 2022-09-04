.class public Lcom/fimi/x8sdk/appsetting/ValueFloat;
.super Ljava/lang/Object;
.source "ValueFloat.java"


# instance fields
.field private newValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "newValue"    # F

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/appsetting/ValueFloat;->setNewValue(F)V

    .line 11
    return-void
.end method


# virtual methods
.method public getNewValue()F
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/ValueFloat;->newValue:F

    return v0
.end method

.method public setNewValue(F)V
    .locals 0
    .param p1, "newValue"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/ValueFloat;->newValue:F

    .line 18
    return-void
.end method
