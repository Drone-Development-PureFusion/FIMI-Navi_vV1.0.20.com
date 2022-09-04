.class public Lcom/fimi/kernel/dataparser/milink/LinkPayload;
.super Ljava/lang/Object;
.source "LinkPayload.java"


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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    .line 17
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "c"    # B

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    return-void
.end method

.method public getByte()B
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "result":B
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 38
    iget v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 39
    return v0
.end method

.method public getByteArray([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 234
    return-void
.end method

.method public getChar()C
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "result":C
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-char v0, v1

    .line 128
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-char v0, v1

    .line 129
    iget v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 130
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getLong()J

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
    .line 89
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getInt()I
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "result":I
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 53
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 54
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 56
    iget v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 57
    return v0
.end method

.method public getIntCRC([BI)I
    .locals 5
    .param p1, "msg"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->size()I

    move-result v1

    .line 198
    .local v1, "len":I
    new-array v0, v1, [B

    .line 199
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-static {v0, v1}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32Software([BI)I

    move-result v2

    .line 205
    .local v2, "ploadCrc":I
    return v2
.end method

.method public getIntCrc()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->size()I

    move-result v1

    .line 215
    .local v1, "len":I
    new-array v0, v1, [B

    .line 216
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    invoke-static {v0, v1}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32Software([BI)I

    move-result v2

    .line 220
    .local v2, "ploadCrc":I
    return v2
.end method

.method public getLong()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 61
    const-wide/16 v0, 0x0

    .line 62
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 63
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 64
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 65
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 66
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 67
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 68
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 69
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 70
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 71
    return-wide v0
.end method

.method public getLongReverse()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 77
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 78
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 79
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 80
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 81
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 82
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 83
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 84
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 85
    return-wide v0
.end method

.method public getMsgId()I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getPayloadData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->size()I

    move-result v1

    .line 238
    .local v1, "len":I
    new-array v0, v1, [B

    .line 239
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    return-object v0
.end method

.method public getShort()S
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "result":S
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 45
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 46
    iget v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 47
    return v0
.end method

.method public getThreeFloat()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "result":B
    const/4 v2, 0x0

    .line 96
    .local v2, "result2":B
    const/4 v3, 0x0

    .line 97
    .local v3, "result3":B
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v1

    int-to-byte v1, v5

    .line 98
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v2

    int-to-byte v2, v5

    .line 99
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v3

    int-to-byte v3, v5

    .line 100
    const/4 v5, 0x3

    new-array v4, v5, [B

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    aput-byte v2, v4, v7

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    .line 101
    .local v4, "value":[B
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 102
    .local v0, "bigInteger":Ljava/math/BigInteger;
    iget v5, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 103
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    return v5
.end method

.method public getuInt32()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 143
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 144
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 145
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 146
    iget v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 147
    return-wide v0
.end method

.method public putByte(B)V
    .locals 0
    .param p1, "data"    # B

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 113
    return-void
.end method

.method public putBytes([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    return-void
.end method

.method public putChar(C)V
    .locals 1
    .param p1, "data"    # C

    .prologue
    .line 121
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 122
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 123
    return-void
.end method

.method public putDouble(D)V
    .locals 3
    .param p1, "data"    # D

    .prologue
    .line 179
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putLong(J)V

    .line 180
    return-void
.end method

.method public putFloat(F)V
    .locals 1
    .param p1, "data"    # F

    .prologue
    .line 175
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putInt(I)V

    .line 176
    return-void
.end method

.method public putInt(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 157
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 158
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 159
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 160
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 161
    return-void
.end method

.method public putLong(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 164
    const/4 v0, 0x0

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 165
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 166
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 167
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 168
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 169
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 170
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 171
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 172
    return-void
.end method

.method public putShort(S)V
    .locals 1
    .param p1, "data"    # S

    .prologue
    .line 116
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 117
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 118
    return-void
.end method

.method public putThreeByte(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 151
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 152
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 153
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 154
    return-void
.end method

.method public putuInt32(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 134
    const/4 v0, 0x0

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 135
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 136
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 137
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->add(B)V

    .line 138
    return-void
.end method

.method public resetIndex()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 33
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->index:I

    .line 184
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
