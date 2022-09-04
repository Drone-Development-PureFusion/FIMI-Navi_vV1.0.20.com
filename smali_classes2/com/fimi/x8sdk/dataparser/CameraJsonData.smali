.class public Lcom/fimi/x8sdk/dataparser/CameraJsonData;
.super Ljava/lang/Object;
.source "CameraJsonData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private fetch_size:I

.field private md5sum:Ljava/lang/String;

.field private msg_id:I

.field private offset:I

.field private options:[Ljava/lang/String;

.field private param:Ljava/lang/String;

.field private rem_size:Ljava/lang/String;

.field private size:J

.field private token:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->token:I

    .line 12
    iput v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->msg_id:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->size:J

    return-void
.end method


# virtual methods
.method public getFetch_size()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->fetch_size:I

    return v0
.end method

.method public getMd5sum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->md5sum:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->msg_id:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->offset:I

    return v0
.end method

.method public getOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->options:[Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getRem_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->rem_size:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->size:J

    return-wide v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->token:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFetch_size(I)V
    .locals 0
    .param p1, "fetch_size"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->fetch_size:I

    .line 84
    return-void
.end method

.method public setMd5sum(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5sum"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->md5sum:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setMsg_id(I)V
    .locals 0
    .param p1, "msg_id"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->msg_id:I

    .line 36
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->offset:I

    .line 76
    return-void
.end method

.method public setOptions([Ljava/lang/String;)V
    .locals 0
    .param p1, "options"    # [Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->options:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->param:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setRem_size(Ljava/lang/String;)V
    .locals 0
    .param p1, "rem_size"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->rem_size:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->size:J

    .line 100
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->token:I

    .line 28
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/CameraJsonData;->type:Ljava/lang/String;

    .line 44
    return-void
.end method
