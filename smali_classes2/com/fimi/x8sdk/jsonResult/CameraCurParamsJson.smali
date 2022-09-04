.class public Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;
.super Ljava/lang/Object;
.source "CameraCurParamsJson.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private msg_id:I

.field private param:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/jsonResult/CurParamsJson;",
            ">;"
        }
    .end annotation
.end field

.field private rval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg_id()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->msg_id:I

    return v0
.end method

.method public getParam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/jsonResult/CurParamsJson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->param:Ljava/util/List;

    return-object v0
.end method

.method public getRval()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->rval:I

    return v0
.end method

.method public setMsg_id(I)V
    .locals 0
    .param p1, "msg_id"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->msg_id:I

    .line 25
    return-void
.end method

.method public setParam(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/jsonResult/CurParamsJson;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "param":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/jsonResult/CurParamsJson;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->param:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setRval(I)V
    .locals 0
    .param p1, "rval"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->rval:I

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraCurParamsJson{rval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->rval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->msg_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->param:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
