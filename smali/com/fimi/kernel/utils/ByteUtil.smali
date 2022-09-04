.class public Lcom/fimi/kernel/utils/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseValueOf",
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 440
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2float([BI)F
    .locals 6
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .prologue
    .line 257
    add-int/lit8 v1, p1, 0x0

    aget-byte v0, p0, v1

    .line 258
    .local v0, "l":I
    and-int/lit16 v0, v0, 0xff

    .line 259
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 260
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 261
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 262
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 263
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 264
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static byteMerger([B[B)[B
    .locals 4
    .param p0, "byte_1"    # [B
    .param p1, "byte_2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 587
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 588
    .local v0, "byte_3":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    return-object v0
.end method

.method public static byteToBitString(B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x7

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x1

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x0

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToChar([BI)C
    .locals 3
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .prologue
    .line 65
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-char v0, v1

    .line 66
    .local v0, "c":C
    return v0
.end method

.method public static byteToInt([B)I
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 323
    const/16 v1, 0xff

    .line 324
    .local v1, "mask":I
    const/4 v3, 0x0

    .line 325
    .local v3, "temp":I
    const/4 v2, 0x0

    .line 326
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 327
    shl-int/lit8 v2, v2, 0x8

    .line 328
    aget-byte v4, p0, v0

    and-int v3, v4, v1

    .line 329
    or-int/2addr v2, v3

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return v2
.end method

.method public static byteToShort([BI)S
    .locals 4
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "s":S
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    int-to-short v1, v3

    .line 51
    .local v1, "s0":S
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v2, v3

    .line 52
    .local v2, "s1":S
    shl-int/lit8 v3, v2, 0x8

    int-to-short v2, v3

    .line 53
    or-int v3, v1, v2

    int-to-short v0, v3

    .line 54
    return v0
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 70
    array-length v2, p0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 72
    add-int/lit8 v2, v1, 0x0

    aget-byte v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static bytesToAscii([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "dateLen"    # I

    .prologue
    const/4 v0, 0x0

    .line 632
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-object v0

    .line 635
    :cond_1
    array-length v3, p0

    if-ge p1, v3, :cond_0

    array-length v3, p0

    sub-int/2addr v3, p1

    if-lt v3, p2, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "asciiStr":Ljava/lang/String;
    new-array v2, p2, [B

    .line 641
    .local v2, "data":[B
    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "ISO8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "asciiStr":Ljava/lang/String;
    .local v1, "asciiStr":Ljava/lang/String;
    move-object v0, v1

    .line 645
    .end local v1    # "asciiStr":Ljava/lang/String;
    .restart local v0    # "asciiStr":Ljava/lang/String;
    goto :goto_0

    .line 644
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 102
    :cond_0
    const-string v4, ""

    .line 112
    :goto_0
    return-object v4

    .line 104
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 105
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 106
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static bytesToHexString2([B)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # [B

    .prologue
    const/16 v3, 0x10

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 118
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesToInt([BI)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 343
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 347
    .local v0, "value":I
    return v0
.end method

.method public static bytesToLong([B)J
    .locals 7
    .param p0, "byteNum"    # [B

    .prologue
    const/16 v6, 0x8

    .line 451
    const-wide/16 v2, 0x0

    .line 452
    .local v2, "num":J
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 453
    shl-long/2addr v2, v6

    .line 454
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    return-wide v2
.end method

.method private static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 181
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static final crc16CheckSum([B)I
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 489
    const v0, 0xffff

    .line 491
    .local v0, "crc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_0

    .line 492
    aget-byte v3, p0, v1

    and-int/lit16 v4, v0, 0xff

    xor-int v2, v3, v4

    .line 493
    .local v2, "tmp":I
    and-int/lit16 v3, v2, 0xff

    shl-int/lit8 v3, v3, 0x4

    xor-int/2addr v2, v3

    .line 494
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x3

    xor-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xff

    shr-int/lit8 v4, v4, 0x4

    xor-int v0, v3, v4

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v2    # "tmp":I
    :cond_0
    return v0
.end method

.method public static final crcAddCheckSum([B)I
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 508
    array-length v2, p0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 509
    const/4 v0, 0x0

    .line 517
    :cond_0
    return v0

    .line 511
    :cond_1
    const/4 v2, 0x1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    invoke-static {p0, v2, v3}, Lcom/fimi/kernel/utils/ByteUtil;->getByteArray([BII)[B

    move-result-object p0

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "crc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 514
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v2

    add-int/2addr v0, v2

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static deletTailChar0([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 680
    if-nez p0, :cond_0

    .line 681
    const/4 v3, 0x0

    .line 692
    :goto_0
    return-object v3

    .line 683
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 684
    .local v2, "sb":Ljava/lang/StringBuffer;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v0, p0, v3

    .line 685
    .local v0, "ascii":I
    if-nez v0, :cond_2

    .line 692
    .end local v0    # "ascii":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 688
    .restart local v0    # "ascii":I
    :cond_2
    int-to-char v1, v0

    .line 689
    .local v1, "ch":C
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 684
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static float2byte(F)[B
    .locals 9
    .param p0, "f"    # F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 223
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 225
    .local v2, "fbit":I
    new-array v0, v8, [B

    .line 226
    .local v0, "b":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 227
    mul-int/lit8 v6, v3, 0x8

    rsub-int/lit8 v6, v6, 0x18

    shr-int v6, v2, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_0
    array-length v4, v0

    .line 233
    .local v4, "len":I
    new-array v1, v4, [B

    .line 235
    .local v1, "dest":[B
    invoke-static {v0, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    const/4 v3, 0x0

    :goto_1
    div-int/lit8 v6, v4, 0x2

    if-ge v3, v6, :cond_1

    .line 239
    aget-byte v5, v1, v3

    .line 240
    .local v5, "temp":B
    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    aput-byte v6, v1, v3

    .line 241
    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    aput-byte v5, v1, v6

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    .end local v5    # "temp":B
    :cond_1
    return-object v1
.end method

.method public static get2ByteToInt(BB)I
    .locals 3
    .param p0, "low"    # B
    .param p1, "high"    # B

    .prologue
    .line 170
    shl-int/lit8 v1, p1, 0x8

    invoke-static {p0}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v2

    or-int v0, v1, v2

    .line 171
    .local v0, "b":I
    return v0
.end method

.method public static get2UnsignedByteToInt([BI)I
    .locals 4
    .param p0, "cmd"    # [B
    .param p1, "start"    # I

    .prologue
    .line 374
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v0

    .line 375
    .local v0, "a":I
    aget-byte v3, p0, p1

    invoke-static {v3}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v1

    .line 376
    .local v1, "b":I
    shl-int/lit8 v3, v0, 0x8

    or-int v2, v3, v1

    .line 377
    .local v2, "c":I
    return v2
.end method

.method public static get4ByteToInt([BI)I
    .locals 3
    .param p0, "cmd"    # [B
    .param p1, "start"    # I

    .prologue
    .line 475
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    .line 476
    invoke-static {v2}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    .line 477
    invoke-static {v2}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, p1

    .line 478
    invoke-static {v2}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v2

    or-int v0, v1, v2

    .line 479
    .local v0, "b":I
    return v0
.end method

.method public static getByte6(B)I
    .locals 2
    .param p0, "data"    # B

    .prologue
    .line 663
    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v0, v1, 0x4

    .line 664
    .local v0, "height":I
    return v0
.end method

.method public static getByte8(B)I
    .locals 2
    .param p0, "data"    # B

    .prologue
    .line 669
    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v0, v1, 0x8

    .line 670
    .local v0, "height":I
    return v0
.end method

.method public static getByteArray([BII)[B
    .locals 3
    .param p0, "cmd"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 78
    new-array v0, p2, [B

    .line 80
    .local v0, "data":[B
    if-lez p2, :cond_0

    .line 81
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCalibration([B)B
    .locals 3
    .param p0, "cmd"    # [B

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "total":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 201
    aget-byte v2, p0, v0

    add-int/2addr v2, v1

    int-to-byte v1, v2

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return v1
.end method

.method public static getCalibrationAll([B)B
    .locals 3
    .param p0, "cmd"    # [B

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "total":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 209
    aget-byte v2, p0, v0

    add-int/2addr v2, v1

    int-to-byte v1, v2

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return v1
.end method

.method public static getHeight4(B)I
    .locals 2
    .param p0, "data"    # B

    .prologue
    .line 651
    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v0, v1, 0x4

    .line 652
    .local v0, "height":I
    return v0
.end method

.method public static getLHByteToInt([BI)I
    .locals 3
    .param p0, "cmd"    # [B
    .param p1, "start"    # I

    .prologue
    .line 466
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    .line 467
    invoke-static {v2}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    .line 468
    invoke-static {v2}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, p1

    .line 469
    invoke-static {v2}, Lcom/fimi/kernel/utils/ByteUtil;->getUnsignedByte(B)I

    move-result v2

    or-int v0, v1, v2

    .line 470
    .local v0, "b":I
    return v0
.end method

.method public static getLow4(B)I
    .locals 1
    .param p0, "data"    # B

    .prologue
    .line 657
    and-int/lit8 v0, p0, 0xf

    .line 658
    .local v0, "low":I
    return v0
.end method

.method public static getNetFileSizeDescription(J)Ljava/lang/String;
    .locals 8
    .param p0, "size"    # J

    .prologue
    const-wide/16 v6, 0x400

    .line 696
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 697
    .local v0, "bytes":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "###.0"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 698
    .local v1, "format":Ljava/text/DecimalFormat;
    const-wide/32 v4, 0x40000000

    cmp-long v4, p0, v4

    if-ltz v4, :cond_1

    .line 699
    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v2, v4, v6

    .line 700
    .local v2, "i":D
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    .end local v2    # "i":D
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 701
    :cond_1
    const-wide/32 v4, 0x100000

    cmp-long v4, p0, v4

    if-ltz v4, :cond_2

    .line 702
    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v2, v4, v6

    .line 703
    .restart local v2    # "i":D
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 704
    .end local v2    # "i":D
    :cond_2
    cmp-long v4, p0, v6

    if-ltz v4, :cond_3

    .line 705
    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v2, v4, v6

    .line 706
    .restart local v2    # "i":D
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 707
    .end local v2    # "i":D
    :cond_3
    cmp-long v4, p0, v6

    if-gez v4, :cond_0

    .line 708
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gtz v4, :cond_4

    .line 709
    const-string v4, "0B"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 711
    :cond_4
    long-to-int v4, p0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getUnsignedByte(B)I
    .locals 1
    .param p0, "cmd"    # B

    .prologue
    .line 161
    move v0, p0

    .line 162
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 163
    add-int/lit16 v0, v0, 0x100

    .line 165
    :cond_0
    return v0
.end method

.method public static hexStringToByte(Ljava/lang/String;)B
    .locals 4
    .param p0, "hexString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 187
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 192
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 194
    .local v1, "hexChars":[C
    aget-char v2, v1, v0

    invoke-static {v2}, Lcom/fimi/kernel/utils/ByteUtil;->charToByte(C)B

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    aget-char v3, v1, v3

    invoke-static {v3}, Lcom/fimi/kernel/utils/ByteUtil;->charToByte(C)B

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v0, v2

    .line 195
    .local v0, "d":B
    goto :goto_0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 9
    .param p0, "hexString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 132
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 157
    :cond_1
    :goto_0
    return-object v0

    .line 135
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 139
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 141
    .local v1, "hexChars":[C
    if-ne v3, v8, :cond_4

    .line 142
    const/4 v5, 0x2

    new-array v0, v5, [B

    .line 147
    .local v0, "d":[B
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 148
    mul-int/lit8 v4, v2, 0x2

    .line 149
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/fimi/kernel/utils/ByteUtil;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/fimi/kernel/utils/ByteUtil;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 144
    .end local v0    # "d":[B
    .end local v2    # "i":I
    .end local v4    # "pos":I
    :cond_4
    new-array v0, v3, [B

    .restart local v0    # "d":[B
    goto :goto_1

    .line 152
    .restart local v2    # "i":I
    :cond_5
    array-length v5, v0

    if-ne v5, v8, :cond_1

    .line 153
    aget-byte v5, v0, v7

    aput-byte v5, v0, v8

    .line 154
    aput-byte v7, v0, v7

    goto :goto_0
.end method

.method public static int2HexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "originalValue"    # I

    .prologue
    .line 718
    const-string v1, ""

    .line 719
    .local v1, "hexStr":Ljava/lang/String;
    invoke-static {p0}, Lcom/fimi/kernel/utils/ByteUtil;->intToByteArray(I)[B

    move-result-object v0

    .line 720
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/fimi/kernel/utils/ByteUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 721
    return-object v1
.end method

.method public static intToByte(I)[B
    .locals 3
    .param p0, "intValue"    # I

    .prologue
    .line 293
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 294
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 295
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-object v0
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 307
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 308
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 309
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 310
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 311
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 312
    return-object v0
.end method

.method public static isCheckSumCorrect([B)Z
    .locals 6
    .param p0, "cmd"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 544
    sget v4, Lcom/fimi/kernel/Constants;->CRC16_LENGTH:I

    invoke-static {p0, v4}, Lcom/fimi/kernel/utils/CRCUtil;->crc16Calculate([BI)I

    move-result v4

    invoke-static {v4}, Lcom/fimi/kernel/utils/ByteUtil;->intToByte(I)[B

    move-result-object v0

    .line 546
    .local v0, "cmdCheckSum":[B
    const/16 v4, 0xe

    const/4 v5, 0x2

    invoke-static {p0, v4, v5}, Lcom/fimi/kernel/utils/ByteUtil;->getByteArray([BII)[B

    move-result-object v1

    .line 548
    .local v1, "originalCheckSum":[B
    aget-byte v4, v0, v3

    aget-byte v5, v1, v3

    if-ne v4, v5, :cond_0

    aget-byte v4, v0, v2

    aget-byte v5, v1, v2

    if-ne v4, v5, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isCheckSumCorrectPayload([B)Z
    .locals 11
    .param p0, "cmd"    # [B

    .prologue
    const/16 v10, 0x14

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 555
    array-length v6, p0

    invoke-static {p0, v10, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/fimi/kernel/utils/CRCUtil;->bytesToInts([B)[I

    move-result-object v1

    .line 556
    .local v1, "crcInts":[I
    array-length v6, v1

    invoke-static {v1, v6}, Lcom/fimi/kernel/utils/CRCUtil;->calcCRC32([II)J

    move-result-wide v6

    long-to-int v2, v6

    .line 557
    .local v2, "crcL":I
    int-to-long v6, v2

    invoke-static {v6, v7}, Lcom/fimi/kernel/utils/ByteUtil;->longToBytes(J)[B

    move-result-object v0

    .line 559
    .local v0, "crc32s":[B
    const/16 v6, 0x10

    invoke-static {p0, v6, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 561
    .local v3, "originalCheckSum":[B
    aget-byte v6, v0, v5

    aget-byte v7, v3, v5

    if-ne v6, v7, :cond_0

    aget-byte v6, v0, v4

    aget-byte v7, v3, v4

    if-ne v6, v7, :cond_0

    aget-byte v6, v0, v8

    aget-byte v7, v3, v8

    if-ne v6, v7, :cond_0

    aget-byte v6, v0, v9

    aget-byte v7, v3, v9

    if-ne v6, v7, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public static longFrom8Bytes([BIZ)J
    .locals 8
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "littleEndian"    # Z

    .prologue
    .line 276
    const-wide/16 v2, 0x0

    .line 278
    .local v2, "value":J
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    .line 279
    if-eqz p2, :cond_0

    move v4, v0

    :goto_1
    shl-int/lit8 v1, v4, 0x3

    .line 280
    .local v1, "shift":I
    const-wide/16 v4, 0xff

    shl-long/2addr v4, v1

    add-int v6, p1, v0

    aget-byte v6, p0, v6

    int-to-long v6, v6

    shl-long/2addr v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "shift":I
    :cond_0
    rsub-int/lit8 v4, v0, 0x7

    goto :goto_1

    .line 282
    :cond_1
    return-wide v2
.end method

.method public static longToBytes(J)[B
    .locals 2
    .param p0, "x"    # J

    .prologue
    .line 443
    sget-object v0, Lcom/fimi/kernel/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 444
    sget-object v0, Lcom/fimi/kernel/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 445
    sget-object v0, Lcom/fimi/kernel/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 446
    sget-object v0, Lcom/fimi/kernel/utils/ByteUtil;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static readFileToByte(Ljava/io/File;)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 725
    const/4 v2, 0x0

    .line 726
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    new-array v0, v4, [B

    .line 728
    .local v0, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 730
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 734
    if-eqz v3, :cond_2

    .line 736
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 742
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 737
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 739
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 731
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 732
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 734
    if-eqz v2, :cond_0

    .line 736
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 737
    :catch_2
    move-exception v1

    .line 738
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 734
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 736
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 741
    :cond_1
    :goto_3
    throw v4

    .line 737
    :catch_3
    move-exception v1

    .line 738
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 734
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 731
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static shortToByte(S)[B
    .locals 5
    .param p0, "number"    # S

    .prologue
    .line 33
    move v2, p0

    .line 34
    .local v2, "temp":I
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 35
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 36
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 37
    shr-int/lit8 v2, v2, 0x8

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method public static shortToByteArray(S)[B
    .locals 5
    .param p0, "s"    # S

    .prologue
    const/4 v4, 0x2

    .line 364
    new-array v2, v4, [B

    .line 365
    .local v2, "shortBuf":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 366
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v1, v3, 0x8

    .line 367
    .local v1, "offset":I
    ushr-int v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "offset":I
    :cond_0
    return-object v2
.end method

.method public static splitAry([BI)[Ljava/lang/Object;
    .locals 11
    .param p0, "ary"    # [B
    .param p1, "subSize"    # I

    .prologue
    .line 601
    array-length v10, p0

    rem-int/2addr v10, p1

    if-nez v10, :cond_0

    array-length v10, p0

    div-int v0, v10, p1

    .line 604
    .local v0, "count":I
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v8, "subAryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Byte;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 607
    mul-int v2, v1, p1

    .line 608
    .local v2, "index":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    move v3, v2

    .line 610
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_2
    if-ge v4, p1, :cond_1

    array-length v10, p0

    if-ge v3, v10, :cond_1

    .line 611
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v10, p0, v3

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_2

    .line 601
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "index":I
    .end local v4    # "j":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v8    # "subAryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Byte;>;>;"
    :cond_0
    array-length v10, p0

    div-int/2addr v10, p1

    add-int/lit8 v0, v10, 0x1

    goto :goto_0

    .line 614
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "j":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v8    # "subAryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Byte;>;>;"
    :cond_1
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 617
    .end local v3    # "index":I
    .end local v4    # "j":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [Ljava/lang/Object;

    .line 619
    .local v6, "subAry":[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 620
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 621
    .local v9, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [B

    .line 622
    .local v7, "subAryItem":[B
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 623
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aput-byte v10, v7, v4

    .line 622
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 625
    :cond_3
    aput-object v7, v6, v1

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 628
    .end local v4    # "j":I
    .end local v7    # "subAryItem":[B
    .end local v9    # "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_4
    return-object v6
.end method

.method public static toHL(I)[B
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 412
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 413
    .local v0, "b":[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 414
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 415
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 416
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 417
    return-object v0
.end method

.method public static toHL(J)[B
    .locals 8
    .param p0, "n"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 427
    new-array v0, v6, [B

    .line 428
    .local v0, "b":[B
    const/4 v1, 0x7

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 429
    const/4 v1, 0x6

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 430
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 431
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 432
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 433
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 434
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 435
    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 436
    return-object v0
.end method

.method public static toHex(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 572
    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_0
    return-object v0
.end method

.method public static toLH(I)[B
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 397
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 398
    .local v0, "b":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 399
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 400
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 401
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 402
    return-object v0
.end method


# virtual methods
.method public bytesToInt2([BI)I
    .locals 3
    .param p1, "src"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 355
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 359
    .local v0, "value":I
    return v0
.end method
