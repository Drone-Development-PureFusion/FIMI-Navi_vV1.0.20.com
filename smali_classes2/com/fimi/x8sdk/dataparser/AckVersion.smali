.class public Lcom/fimi/x8sdk/dataparser/AckVersion;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckVersion.java"


# instance fields
.field hardwareVersion:I

.field idA:I

.field idB:I

.field idC:I

.field idD:I

.field model:I

.field reserved1:I

.field reserved2:I

.field softVersion:I

.field type:I

.field versionDetails:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    .line 13
    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    .line 17
    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->softVersion:I

    return-void
.end method

.method private toModelID(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 149
    if-nez p1, :cond_0

    .line 150
    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    .line 174
    :goto_0
    return-void

    .line 151
    :cond_0
    if-ne p1, v2, :cond_1

    .line 152
    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 153
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 154
    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 155
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 156
    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 157
    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    .line 158
    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 159
    :cond_4
    const/16 v0, 0xe

    if-ne p1, v0, :cond_5

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 161
    :cond_5
    if-ne p1, v1, :cond_6

    .line 162
    const/4 v0, 0x6

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 163
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 164
    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 165
    :cond_7
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    .line 166
    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 167
    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 169
    :cond_9
    const/16 v0, 0xd

    if-ne p1, v0, :cond_a

    .line 170
    iput v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0

    .line 172
    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    goto :goto_0
.end method


# virtual methods
.method public getHardwareVersion()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->hardwareVersion:I

    return v0
.end method

.method public getIdA()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idA:I

    return v0
.end method

.method public getIdB()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idB:I

    return v0
.end method

.method public getIdC()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idC:I

    return v0
.end method

.method public getIdD()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idD:I

    return v0
.end method

.method public getModel()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    return v0
.end method

.method public getReserved1()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->reserved1:I

    return v0
.end method

.method public getReserved2()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->reserved2:I

    return v0
.end method

.method public getShowDetails()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getVersionDetails()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "dt":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 197
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 199
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 204
    .end local v1    # "split":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSoftVersion()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->softVersion:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->type:I

    return v0
.end method

.method public getVersionDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->versionDetails:Ljava/lang/String;

    return-object v0
.end method

.method public setHardwareVersion(I)V
    .locals 0
    .param p1, "hardwareVersion"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->hardwareVersion:I

    .line 89
    return-void
.end method

.method public setIdA(I)V
    .locals 0
    .param p1, "idA"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idA:I

    .line 105
    return-void
.end method

.method public setIdB(I)V
    .locals 0
    .param p1, "idB"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idB:I

    .line 113
    return-void
.end method

.method public setIdC(I)V
    .locals 0
    .param p1, "idC"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idC:I

    .line 121
    return-void
.end method

.method public setIdD(I)V
    .locals 0
    .param p1, "idD"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idD:I

    .line 129
    return-void
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "model"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    .line 81
    return-void
.end method

.method public setReserved1(I)V
    .locals 0
    .param p1, "reserved1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->reserved1:I

    .line 137
    return-void
.end method

.method public setReserved2(I)V
    .locals 0
    .param p1, "reserved2"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->reserved2:I

    .line 145
    return-void
.end method

.method public setSoftVersion(I)V
    .locals 0
    .param p1, "softVersion"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->softVersion:I

    .line 97
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->type:I

    .line 73
    return-void
.end method

.method public setVersionDetails(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionDetails"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->versionDetails:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AckVersion{type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reserved1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->reserved1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reserved2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->reserved2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hardwareVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->hardwareVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", softVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->softVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", idA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", idB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", idC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", idD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", versionDetails=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->versionDetails:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "v":Ljava/lang/String;
    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 6
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 36
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getPayloadData()[B

    move-result-object v4

    array-length v2, v4

    .line 37
    .local v2, "verLen":I
    const/16 v4, 0x1a

    if-le v2, v4, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->type:I

    .line 39
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    .line 40
    iget v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->type:I

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->toModelID(I)V

    .line 41
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->reserved1:I

    .line 42
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->reserved2:I

    .line 43
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->hardwareVersion:I

    .line 44
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->softVersion:I

    .line 45
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idA:I

    .line 46
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idB:I

    .line 47
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idC:I

    .line 48
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idD:I

    .line 49
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    iget v0, v4, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 50
    .local v0, "index":I
    sub-int v4, v2, v0

    new-array v3, v4, [B

    .line 51
    .local v3, "versionDetl":[B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getPayloadData()[B

    move-result-object v1

    .line 52
    .local v1, "payloadData":[B
    const/4 v4, 0x0

    sub-int v5, v2, v0

    invoke-static {v1, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->versionDetails:Ljava/lang/String;

    .line 65
    .end local v0    # "index":I
    .end local v1    # "payloadData":[B
    .end local v3    # "versionDetl":[B
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->type:I

    .line 56
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->model:I

    .line 57
    iget v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->type:I

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->toModelID(I)V

    .line 58
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->hardwareVersion:I

    .line 59
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->softVersion:I

    .line 60
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idA:I

    .line 61
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idB:I

    .line 62
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idC:I

    .line 63
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckVersion;->idD:I

    goto :goto_0
.end method
