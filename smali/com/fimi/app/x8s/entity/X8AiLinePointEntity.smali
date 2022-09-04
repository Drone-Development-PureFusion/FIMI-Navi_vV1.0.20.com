.class public Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
.super Ljava/lang/Object;
.source "X8AiLinePointEntity.java"


# instance fields
.field private nPos:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->state:I

    return v0
.end method

.method public getnPos()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->nPos:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->state:I

    .line 16
    return-void
.end method

.method public setnPos(I)V
    .locals 0
    .param p1, "nPos"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->nPos:I

    .line 25
    return-void
.end method
