.class public Lcom/fimi/x8sdk/appsetting/ValueBoolean;
.super Ljava/lang/Object;
.source "ValueBoolean.java"


# instance fields
.field private newValue:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;->setNewValue(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public isNewValue()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/fimi/x8sdk/appsetting/ValueBoolean;->newValue:Z

    return v0
.end method

.method public setNewValue(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/fimi/x8sdk/appsetting/ValueBoolean;->newValue:Z

    .line 19
    return-void
.end method
