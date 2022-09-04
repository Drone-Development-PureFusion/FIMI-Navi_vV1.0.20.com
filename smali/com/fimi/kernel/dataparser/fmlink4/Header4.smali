.class public Lcom/fimi/kernel/dataparser/fmlink4/Header4;
.super Ljava/lang/Object;
.source "Header4.java"


# static fields
.field public static final HEADER_LEN:I = 0x10

.field public static startFlag:B


# instance fields
.field private crcFrame:I

.field private crcHeader:I

.field private destId:B

.field private encryptType:B

.field headerArr:[B

.field private len:I

.field private payloadLen:I

.field private reserve1:B

.field private reserve2:B

.field private reserve3:B

.field private seq:S

.field private srcId:B

.field private type:B

.field private typeAndR1AndEncrypt:B

.field private ver:B

.field private verAndLen:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, -0x2

    sput-byte v0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->startFlag:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->ver:B

    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    return-void
.end method


# virtual methods
.method public checkCRC(I)Z
    .locals 1
    .param p1, "crc32"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->checkHeaderCRC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->checkFrameCRC(I)Z

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
    .line 176
    iget v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcFrame:I

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
    .line 170
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/fimi/kernel/dataparser/milink/CRCChecksum;->crc16_calculate([BI)I

    move-result v0

    .line 171
    .local v0, "crc16":I
    iget v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcHeader:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCrcFrame()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcFrame:I

    return v0
.end method

.method public getCrcHeader()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcHeader:I

    return v0
.end method

.method public getDataLen()I
    .locals 3

    .prologue
    .line 188
    const-string v0, "mowweiru"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->len:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->len:I

    add-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public getDestId()B
    .locals 1

    .prologue
    .line 78
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->destId:B

    return v0
.end method

.method public getEncryptType()B
    .locals 1

    .prologue
    .line 62
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->encryptType:B

    return v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->len:I

    return v0
.end method

.method public getPayloadLen()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->payloadLen:I

    return v0
.end method

.method public getReserve1()B
    .locals 1

    .prologue
    .line 54
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve1:B

    return v0
.end method

.method public getReserve2()B
    .locals 1

    .prologue
    .line 86
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve2:B

    return v0
.end method

.method public getReserve3()B
    .locals 1

    .prologue
    .line 94
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve3:B

    return v0
.end method

.method public getSeq()S
    .locals 1

    .prologue
    .line 102
    iget-short v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->seq:S

    return v0
.end method

.method public getSrcId()B
    .locals 1

    .prologue
    .line 70
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->srcId:B

    return v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 46
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->type:B

    return v0
.end method

.method public getVer()B
    .locals 1

    .prologue
    .line 134
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->ver:B

    return v0
.end method

.method public onPacket()[B
    .locals 4

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "i":I
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    sget-byte v3, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->startFlag:B

    aput-byte v3, v2, v0

    .line 144
    iget-byte v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->ver:B

    and-int/lit8 v2, v2, 0x1f

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->len:I

    and-int/lit16 v3, v3, 0x1ff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->verAndLen:S

    .line 145
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->verAndLen:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 146
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->verAndLen:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 147
    iget-byte v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->type:B

    and-int/lit8 v2, v2, 0x3

    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve1:B

    and-int/lit8 v3, v3, 0x1c

    or-int/2addr v2, v3

    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->encryptType:B

    and-int/lit16 v3, v3, 0xe0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->typeAndR1AndEncrypt:B

    .line 148
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->typeAndR1AndEncrypt:B

    aput-byte v3, v2, v1

    .line 149
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->srcId:B

    aput-byte v3, v2, v0

    .line 150
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->destId:B

    aput-byte v3, v2, v1

    .line 151
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve2:B

    aput-byte v3, v2, v0

    .line 152
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-byte v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve3:B

    aput-byte v3, v2, v1

    .line 153
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->seq:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 154
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-short v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->seq:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 156
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/CRCUtil;->crc16Calculate([BI)I

    move-result v2

    iput v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcHeader:I

    .line 157
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcHeader:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 158
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcHeader:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 160
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcFrame:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 161
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcFrame:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 162
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcFrame:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 163
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcFrame:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 165
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->headerArr:[B

    return-object v2
.end method

.method public setCrcFrame(I)V
    .locals 0
    .param p1, "crcFrame"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcFrame:I

    .line 123
    return-void
.end method

.method public setCrcHeader(I)V
    .locals 0
    .param p1, "crcHeader"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->crcHeader:I

    .line 115
    return-void
.end method

.method public setDestId(B)V
    .locals 0
    .param p1, "destId"    # B

    .prologue
    .line 82
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->destId:B

    .line 83
    return-void
.end method

.method public setEncryptType(B)V
    .locals 0
    .param p1, "encryptType"    # B

    .prologue
    .line 66
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->encryptType:B

    .line 67
    return-void
.end method

.method public setLen(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->len:I

    .line 43
    return-void
.end method

.method public setPayloadLen(I)V
    .locals 0
    .param p1, "payloadLen"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->payloadLen:I

    .line 131
    return-void
.end method

.method public setReserve1(B)V
    .locals 0
    .param p1, "reserve1"    # B

    .prologue
    .line 58
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve1:B

    .line 59
    return-void
.end method

.method public setReserve2(B)V
    .locals 0
    .param p1, "reserve2"    # B

    .prologue
    .line 90
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve2:B

    .line 91
    return-void
.end method

.method public setReserve3(B)V
    .locals 0
    .param p1, "reserve3"    # B

    .prologue
    .line 98
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->reserve3:B

    .line 99
    return-void
.end method

.method public setSeq(S)V
    .locals 0
    .param p1, "seq"    # S

    .prologue
    .line 106
    iput-short p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->seq:S

    .line 107
    return-void
.end method

.method public setSrcId(B)V
    .locals 0
    .param p1, "srcId"    # B

    .prologue
    .line 74
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->srcId:B

    .line 75
    return-void
.end method

.method public setType(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 50
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->type:B

    .line 51
    return-void
.end method

.method public setVer(B)V
    .locals 0
    .param p1, "ver"    # B

    .prologue
    .line 138
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->ver:B

    .line 139
    return-void
.end method
