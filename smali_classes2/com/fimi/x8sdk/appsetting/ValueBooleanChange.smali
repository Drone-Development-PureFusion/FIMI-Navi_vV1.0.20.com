.class public Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;
.super Ljava/lang/Object;
.source "ValueBooleanChange.java"


# instance fields
.field private newValue:Z

.field private oldValue:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "oldV"    # Z
    .param p2, "newV"    # Z

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;->oldValue:Z

    .line 10
    iput-boolean p2, p0, Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;->newValue:Z

    .line 11
    return-void
.end method


# virtual methods
.method public isNewValue()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;->newValue:Z

    return v0
.end method

.method public isOldValue()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;->oldValue:Z

    return v0
.end method

.method public setNewValue(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;->newValue:Z

    .line 19
    return-void
.end method

.method public setOldValue(Z)V
    .locals 0
    .param p1, "oldValue"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;->oldValue:Z

    .line 30
    return-void
.end method
