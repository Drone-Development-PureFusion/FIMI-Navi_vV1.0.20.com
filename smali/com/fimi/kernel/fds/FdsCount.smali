.class public Lcom/fimi/kernel/fds/FdsCount;
.super Ljava/lang/Object;
.source "FdsCount.java"


# instance fields
.field private complete:I

.field private remainder:I

.field private state:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completeIncrease()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/kernel/fds/FdsCount;->complete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/kernel/fds/FdsCount;->complete:I

    .line 51
    return-void
.end method

.method public getComplete()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/fimi/kernel/fds/FdsCount;->complete:I

    return v0
.end method

.method public getRemainder()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/fimi/kernel/fds/FdsCount;->remainder:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fimi/kernel/fds/FdsCount;->state:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/fimi/kernel/fds/FdsCount;->total:I

    return v0
.end method

.method public setComplete(I)V
    .locals 0
    .param p1, "complete"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/fimi/kernel/fds/FdsCount;->complete:I

    .line 47
    return-void
.end method

.method public setRemainder(I)V
    .locals 0
    .param p1, "remainder"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/fimi/kernel/fds/FdsCount;->remainder:I

    .line 39
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/fimi/kernel/fds/FdsCount;->state:I

    .line 23
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/fimi/kernel/fds/FdsCount;->total:I

    .line 31
    return-void
.end method
