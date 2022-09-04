.class public Lcom/fimi/kernel/dataparser/milink/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final FLAG:I = 0xfe

.field public static final HEADERLEN:I = 0x14


# instance fields
.field public final VERSION:I

.field private cfg:I

.field private crcFrame:I

.field private crcHeader:I

.field private destId:B

.field private encryptType:B

.field private header:[B

.field private len:I

.field private lenTypeCfg:I

.field private payloadLen:I

.field private reserver:I

.field private seq:I

.field private srcId:B

.field private startFlag:B

.field private subDestId:B

.field private subSrcId:B

.field private type:I

.field private version:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->VERSION:I

    .line 10
    const/4 v0, -0x2

    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->startFlag:B

    .line 11
    iput-byte v1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->version:B

    .line 21
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    return-void
.end method


# virtual methods
.method public checkCRC(I)Z
    .locals 1
    .param p1, "crc32"    # I

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/milink/Header;->checkHeaderCRC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/dataparser/milink/Header;->checkFrameCRC(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFrameCRC(I)Z
    .locals 1
    .param p1, "crc32"    # I

    .prologue
    .line 234
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkHeaderCRC()Z
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/fimi/kernel/dataparser/milink/CRCChecksum;->crc16_calculate([BI)I

    move-result v0

    .line 227
    .local v0, "crc16":I
    iget v1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcHeader:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCfg()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->cfg:I

    return v0
.end method

.method public getCrcFrame()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    return v0
.end method

.method public getCrcHeader()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcHeader:I

    return v0
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    and-int/lit16 v0, v0, 0x1ff

    add-int/lit8 v0, v0, -0x14

    return v0
.end method

.method public getDestId()B
    .locals 1

    .prologue
    .line 128
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->destId:B

    return v0
.end method

.method public getEncryptType()B
    .locals 1

    .prologue
    .line 104
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->encryptType:B

    return v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->len:I

    return v0
.end method

.method public getLenTypeCfg()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    return v0
.end method

.method public getPayloadLen()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->payloadLen:I

    return v0
.end method

.method public getReserver()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->reserver:I

    return v0
.end method

.method public getSeq()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->seq:I

    return v0
.end method

.method public getSrcId()B
    .locals 1

    .prologue
    .line 112
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->srcId:B

    return v0
.end method

.method public getSubDestId()B
    .locals 1

    .prologue
    .line 136
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->subDestId:B

    return v0
.end method

.method public getSubSrcId()B
    .locals 1

    .prologue
    .line 120
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->subSrcId:B

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->type:I

    return v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 48
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/milink/Header;->version:B

    return v0
.end method

.method public onPaket()[B
    .locals 4

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "i":I
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->startFlag:B

    aput-byte v3, v2, v0

    .line 154
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->version:B

    aput-byte v3, v2, v1

    .line 155
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->payloadLen:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->len:I

    .line 156
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->len:I

    and-int/lit16 v2, v2, 0x3ff

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->type:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    or-int/2addr v2, v3

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->cfg:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    .line 158
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 159
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 160
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->srcId:B

    aput-byte v3, v2, v0

    .line 161
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->subSrcId:B

    aput-byte v3, v2, v1

    .line 162
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->destId:B

    aput-byte v3, v2, v0

    .line 163
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->subDestId:B

    aput-byte v3, v2, v1

    .line 164
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->encryptType:B

    aput-byte v3, v2, v0

    .line 166
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->reserver:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 167
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->reserver:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 168
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->reserver:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 170
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->seq:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 171
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->seq:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 173
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/CRCUtil;->crc16Calculate([BI)I

    move-result v2

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcHeader:I

    .line 174
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcHeader:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 175
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcHeader:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 177
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 178
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 179
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 180
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 184
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    return-object v2
.end method

.method public setCfg(I)V
    .locals 0
    .param p1, "cfg"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->cfg:I

    .line 93
    return-void
.end method

.method public setCrcFrame(I)V
    .locals 0
    .param p1, "crcFrame"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    .line 61
    return-void
.end method

.method public setCrcHeader(I)V
    .locals 0
    .param p1, "crcHeader"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcHeader:I

    .line 29
    return-void
.end method

.method public setDestId(B)V
    .locals 0
    .param p1, "destId"    # B

    .prologue
    .line 132
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->destId:B

    .line 133
    return-void
.end method

.method public setEncryptType(B)V
    .locals 0
    .param p1, "encryptType"    # B

    .prologue
    .line 108
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->encryptType:B

    .line 109
    return-void
.end method

.method public setLen(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->len:I

    .line 77
    return-void
.end method

.method public setLenTypeCfg(I)V
    .locals 0
    .param p1, "lenTypeCfg"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    .line 45
    return-void
.end method

.method public setPayloadLen(I)V
    .locals 0
    .param p1, "payloadLen"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->payloadLen:I

    .line 69
    return-void
.end method

.method public setReserver(I)V
    .locals 0
    .param p1, "reserver"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->reserver:I

    .line 101
    return-void
.end method

.method public setSeq(I)V
    .locals 0
    .param p1, "seq"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->seq:I

    .line 149
    return-void
.end method

.method public setSrcId(B)V
    .locals 0
    .param p1, "srcId"    # B

    .prologue
    .line 116
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->srcId:B

    .line 117
    return-void
.end method

.method public setSubDestId(B)V
    .locals 0
    .param p1, "subDestId"    # B

    .prologue
    .line 140
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->subDestId:B

    .line 141
    return-void
.end method

.method public setSubSrcId(B)V
    .locals 0
    .param p1, "subSrcId"    # B

    .prologue
    .line 124
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->subSrcId:B

    .line 125
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->type:I

    .line 85
    return-void
.end method

.method public setVersion(B)V
    .locals 0
    .param p1, "version"    # B

    .prologue
    .line 52
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/milink/Header;->version:B

    .line 53
    return-void
.end method

.method public unPacket()V
    .locals 4

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "i":I
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->startFlag:B

    aput-byte v3, v2, v0

    .line 190
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->version:B

    aput-byte v3, v2, v1

    .line 192
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 193
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 194
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->srcId:B

    aput-byte v3, v2, v0

    .line 195
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->subSrcId:B

    aput-byte v3, v2, v1

    .line 196
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->destId:B

    aput-byte v3, v2, v0

    .line 197
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->subDestId:B

    aput-byte v3, v2, v1

    .line 198
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->encryptType:B

    aput-byte v3, v2, v0

    .line 200
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->reserver:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 201
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->reserver:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 202
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->reserver:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 204
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->seq:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 205
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->seq:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 207
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcHeader:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 208
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcHeader:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 210
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 211
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 212
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 213
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->header:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/Header;->crcFrame:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 217
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    and-int/lit16 v2, v2, 0x1ff

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->len:I

    .line 218
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    shr-int/lit8 v2, v2, 0x9

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->type:I

    .line 219
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->lenTypeCfg:I

    shr-int/lit8 v2, v2, 0xc

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->cfg:I

    .line 220
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/Header;->len:I

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {p0, v2}, Lcom/fimi/kernel/dataparser/milink/Header;->setPayloadLen(I)V

    .line 222
    return-void
.end method
