.class public Lcom/fimi/x8sdk/entity/ErrCodeEntity;
.super Ljava/lang/Object;
.source "ErrCodeEntity.java"


# instance fields
.field private descript:Ljava/lang/String;

.field private errCode:I

.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrCodeEntity;->descript:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrCodeEntity;->errCode:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrCodeEntity;->level:I

    return v0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 0
    .param p1, "descript"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrCodeEntity;->descript:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .param p1, "errCode"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrCodeEntity;->errCode:I

    .line 36
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrCodeEntity;->level:I

    .line 28
    return-void
.end method
