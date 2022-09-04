.class public Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;
.super Ljava/lang/Object;
.source "LinkPayLoad4.java"


# static fields
.field public static final MAX_PAYLOAD_SIZE:I = 0x400


# instance fields
.field private groupId:I

.field public index:I

.field public payload:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    .line 25
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "c"    # B

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method

.method public getByte()B
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "result":B
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 46
    iget v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 47
    return v0
.end method

.method public getByteArray([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 245
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 247
    return-void
.end method

.method public getChar()C
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "result":C
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-char v0, v1

    .line 137
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-char v0, v1

    .line 138
    iget v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 139
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getFloat()F
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getInt()I
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "result":I
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 63
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 65
    iget v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 66
    return v0
.end method

.method public getIntCRC([BI)I
    .locals 5
    .param p1, "msg"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->size()I

    move-result v1

    .line 207
    .local v1, "len":I
    new-array v0, v1, [B

    .line 208
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    invoke-static {v0, v1}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32Software([BI)I

    move-result v2

    .line 211
    .local v2, "ploadCrc":I
    return v2
.end method

.method public getIntCrc()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->size()I

    move-result v1

    .line 221
    .local v1, "len":I
    new-array v0, v1, [B

    .line 222
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    const-string v3, "moweiru"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v0, v1}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32Software([BI)I

    move-result v2

    .line 225
    .local v2, "ploadCrc":I
    return v2
.end method

.method public getLong()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 72
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 73
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 74
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 75
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 76
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 77
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 78
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 79
    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 80
    return-wide v0
.end method

.method public getLongReverse()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 84
    const-wide/16 v0, 0x0

    .line 85
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 86
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 87
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 88
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 89
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 90
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 91
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 92
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 93
    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 94
    return-wide v0
.end method

.method public getMsgId()I
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMsgRpt()I
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    return v0
.end method

.method public getPayloadData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->size()I

    move-result v1

    .line 251
    .local v1, "len":I
    new-array v0, v1, [B

    .line 252
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    return-object v0
.end method

.method public getShort()S
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "result":S
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 54
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 55
    iget v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 56
    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .param p1, "nPos"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->size()I

    move-result v1

    .line 262
    .local v1, "len":I
    sub-int v3, v1, p1

    new-array v0, v3, [B

    .line 263
    .local v0, "datas":[B
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    sub-int v4, v1, p1

    invoke-virtual {v3, v0, p1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 264
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 265
    .local v2, "s":Ljava/lang/String;
    return-object v2
.end method

.method public getThreeFloat()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "result":B
    const/4 v2, 0x0

    .line 105
    .local v2, "result2":B
    const/4 v3, 0x0

    .line 106
    .local v3, "result3":B
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v1

    int-to-byte v1, v5

    .line 107
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v2

    int-to-byte v2, v5

    .line 108
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v3

    int-to-byte v3, v5

    .line 109
    const/4 v5, 0x3

    new-array v4, v5, [B

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    aput-byte v2, v4, v7

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    .line 110
    .local v4, "value":[B
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 111
    .local v0, "bigInteger":Ljava/math/BigInteger;
    iget v5, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 112
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    return v5
.end method

.method public getVer()I
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getuInt32()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 150
    const-wide/16 v0, 0x0

    .line 151
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 152
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 153
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 154
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 155
    iget v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 156
    return-wide v0
.end method

.method public putByte(B)V
    .locals 0
    .param p1, "data"    # B

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 122
    return-void
.end method

.method public putBytes([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 197
    return-void
.end method

.method public putChar(C)V
    .locals 1
    .param p1, "data"    # C

    .prologue
    .line 130
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 131
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 132
    return-void
.end method

.method public putDouble(D)V
    .locals 3
    .param p1, "data"    # D

    .prologue
    .line 188
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->putLong(J)V

    .line 189
    return-void
.end method

.method public putFloat(F)V
    .locals 1
    .param p1, "data"    # F

    .prologue
    .line 184
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->putInt(I)V

    .line 185
    return-void
.end method

.method public putInt(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 166
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 167
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 168
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 169
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 170
    return-void
.end method

.method public putLong(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 173
    const/4 v0, 0x0

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 174
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 175
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 176
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 177
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 178
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 179
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 180
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 181
    return-void
.end method

.method public putShort(S)V
    .locals 1
    .param p1, "data"    # S

    .prologue
    .line 125
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 126
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 127
    return-void
.end method

.method public putThreeByte(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 160
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 161
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 162
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 163
    return-void
.end method

.method public putuInt32(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 143
    const/4 v0, 0x0

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 144
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 145
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 146
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->add(B)V

    .line 147
    return-void
.end method

.method public resetIndex()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 41
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .param p1, "groupId"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->groupId:I

    .line 258
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->index:I

    .line 193
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
