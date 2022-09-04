.class public Lcom/fimi/host/LocalFwEntity;
.super Ljava/lang/Object;
.source "LocalFwEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private logicVersion:J

.field private model:I

.field private type:I

.field private userVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "model"    # I
    .param p3, "logicVersion"    # J
    .param p5, "userVersion"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/fimi/host/LocalFwEntity;->type:I

    .line 22
    iput p2, p0, Lcom/fimi/host/LocalFwEntity;->model:I

    .line 23
    iput-wide p3, p0, Lcom/fimi/host/LocalFwEntity;->logicVersion:J

    .line 24
    iput-object p5, p0, Lcom/fimi/host/LocalFwEntity;->userVersion:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getLogicVersion()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/fimi/host/LocalFwEntity;->logicVersion:J

    return-wide v0
.end method

.method public getModel()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/fimi/host/LocalFwEntity;->model:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/fimi/host/LocalFwEntity;->type:I

    return v0
.end method

.method public getUserVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/host/LocalFwEntity;->userVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setLogicVersion(J)V
    .locals 1
    .param p1, "logicVersion"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/fimi/host/LocalFwEntity;->logicVersion:J

    .line 49
    return-void
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "model"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/fimi/host/LocalFwEntity;->model:I

    .line 41
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/fimi/host/LocalFwEntity;->type:I

    .line 33
    return-void
.end method

.method public setUserVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "userVersion"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fimi/host/LocalFwEntity;->userVersion:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalFwEntity{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/host/LocalFwEntity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/host/LocalFwEntity;->model:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logicVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/host/LocalFwEntity;->logicVersion:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/host/LocalFwEntity;->userVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
