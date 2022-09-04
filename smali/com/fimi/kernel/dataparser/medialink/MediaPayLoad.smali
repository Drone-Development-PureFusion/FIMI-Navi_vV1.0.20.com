.class public Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;
.super Ljava/lang/Object;
.source "MediaPayLoad.java"


# static fields
.field public static final MAX_PAYLOAD_SIZE:I = 0x400


# instance fields
.field private cmdType:I

.field public index:I

.field public payload:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    .line 20
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "c"    # B

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 32
    return-void
.end method

.method public getByte()B
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "result":B
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 41
    iget v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 42
    return v0
.end method

.method public getChar()C
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "result":C
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-char v0, v1

    .line 132
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-char v0, v1

    .line 133
    iget v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 134
    return v0
.end method

.method public getCmdType()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->cmdType:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDouble()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->getLong()J

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
    .line 93
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "result":I
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 58
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 60
    iget v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 61
    return v0
.end method

.method public getLong()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 67
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 68
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 69
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 70
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 71
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 72
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 73
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 74
    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 75
    return-wide v0
.end method

.method public getLongReverse()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 79
    const-wide/16 v0, 0x0

    .line 80
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 81
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 82
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 83
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 84
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 85
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 86
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 87
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 88
    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 89
    return-wide v0
.end method

.method public getPayloadData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->size()I

    move-result v1

    .line 196
    .local v1, "len":I
    new-array v0, v1, [B

    .line 197
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    return-object v0
.end method

.method public getShort()S
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "result":S
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 49
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 50
    iget v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 51
    return v0
.end method

.method public getThreeFloat()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "result":B
    const/4 v2, 0x0

    .line 100
    .local v2, "result2":B
    const/4 v3, 0x0

    .line 101
    .local v3, "result3":B
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v1

    int-to-byte v1, v5

    .line 102
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v2

    int-to-byte v2, v5

    .line 103
    iget-object v5, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v3

    int-to-byte v3, v5

    .line 104
    const/4 v5, 0x3

    new-array v4, v5, [B

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    aput-byte v2, v4, v7

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    .line 105
    .local v4, "value":[B
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 106
    .local v0, "bigInteger":Ljava/math/BigInteger;
    iget v5, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 107
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

    .line 145
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "result":J
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 147
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 148
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 149
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 150
    iget v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 151
    return-wide v0
.end method

.method public putByte(B)V
    .locals 0
    .param p1, "data"    # B

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 117
    return-void
.end method

.method public putBytes([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    return-void
.end method

.method public putChar(C)V
    .locals 1
    .param p1, "data"    # C

    .prologue
    .line 125
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 126
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 127
    return-void
.end method

.method public putDouble(D)V
    .locals 3
    .param p1, "data"    # D

    .prologue
    .line 183
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->putLong(J)V

    .line 184
    return-void
.end method

.method public putFloat(F)V
    .locals 1
    .param p1, "data"    # F

    .prologue
    .line 179
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->putInt(I)V

    .line 180
    return-void
.end method

.method public putInt(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 161
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 162
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 163
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 164
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 165
    return-void
.end method

.method public putLong(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 168
    const/4 v0, 0x0

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 169
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 170
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 171
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 172
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 173
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 174
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 175
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 176
    return-void
.end method

.method public putShort(S)V
    .locals 1
    .param p1, "data"    # S

    .prologue
    .line 120
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 121
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 122
    return-void
.end method

.method public putThreeByte(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 155
    shr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 156
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 157
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 158
    return-void
.end method

.method public putuInt32(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 138
    const/4 v0, 0x0

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 139
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 140
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 141
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->add(B)V

    .line 142
    return-void
.end method

.method public resetIndex()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 36
    return-void
.end method

.method public setCmdType(I)V
    .locals 0
    .param p1, "cmdType"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->cmdType:I

    .line 208
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->index:I

    .line 188
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/medialink/MediaPayLoad;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
