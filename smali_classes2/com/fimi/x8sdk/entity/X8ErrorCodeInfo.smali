.class public Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
.super Ljava/lang/Object;
.source "X8ErrorCodeInfo.java"


# instance fields
.field private index:I

.field private type:I

.field private value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "index"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->type:I

    .line 32
    iput p2, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->index:I

    .line 33
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "b"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->type:I

    .line 37
    iput p2, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->value:I

    .line 38
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->index:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->type:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->value:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->index:I

    .line 28
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->type:I

    .line 20
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->value:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X8ErrorCodeInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
