.class public Lcom/fimi/kernel/utils/CRCUtil;
.super Ljava/lang/Object;
.source "CRCUtil.java"


# static fields
.field public static final X25_INIT_CRC:I = 0xffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 87
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static bytesToInts([B)[I
    .locals 12
    .param p0, "bylength"    # [B

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    array-length v2, p0

    .line 36
    .local v2, "length":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v3, "listbyte":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v1, v11, [B

    .line 41
    .local v1, "item":[B
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_3

    .line 42
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v6, v11, :cond_0

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x4

    if-ne v6, v8, :cond_0

    .line 43
    aget-byte v6, p0, v5

    aput-byte v6, v1, v7

    .line 44
    aput-byte v7, v1, v8

    .line 45
    aput-byte v7, v1, v9

    .line 46
    aput-byte v7, v1, v10

    .line 65
    :goto_1
    invoke-static {v1}, Lcom/fimi/kernel/utils/CRCUtil;->trans([B)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v1, 0x0

    .line 67
    new-array v1, v11, [B

    .line 41
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 47
    :cond_0
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v6, v11, :cond_1

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x4

    if-ne v6, v9, :cond_1

    .line 48
    aget-byte v6, p0, v5

    aput-byte v6, v1, v7

    .line 49
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v8

    .line 50
    aput-byte v7, v1, v9

    .line 51
    aput-byte v7, v1, v10

    goto :goto_1

    .line 52
    :cond_1
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v6, v11, :cond_2

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x4

    if-ne v6, v10, :cond_2

    .line 54
    aget-byte v6, p0, v5

    aput-byte v6, v1, v7

    .line 55
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v8

    .line 56
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    aput-byte v6, v1, v9

    .line 57
    aput-byte v7, v1, v10

    goto :goto_1

    .line 60
    :cond_2
    aget-byte v6, p0, v5

    aput-byte v6, v1, v7

    .line 61
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v8

    .line 62
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    aput-byte v6, v1, v9

    .line 63
    add-int/lit8 v6, v5, 0x3

    aget-byte v6, p0, v6

    aput-byte v6, v1, v10

    goto :goto_1

    .line 70
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [I

    .line 71
    .local v0, "arrayitem":[I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 72
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lcom/fimi/kernel/utils/CRCUtil;->byteArrayToInt([B)I

    move-result v6

    aput v6, v0, v4

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 75
    :cond_4
    return-object v0
.end method

.method public static calcCRC32([II)J
    .locals 16
    .param p0, "ptr"    # [I
    .param p1, "len"    # I

    .prologue
    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .local v2, "crc":J
    const-wide/16 v0, 0x0

    .line 12
    .local v0, "bits":J
    const/4 v6, 0x0

    .local v6, "k":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    move/from16 v8, p1

    .line 13
    .end local p1    # "len":I
    .local v8, "len":I
    :goto_0
    add-int/lit8 p1, v8, -0x1

    .end local v8    # "len":I
    .restart local p1    # "len":I
    if-lez v8, :cond_2

    .line 14
    const-wide v10, 0x80000000L

    .line 15
    .local v10, "xbit":J
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    aget v9, p0, v7

    int-to-long v4, v9

    .line 16
    .local v4, "data":J
    const-wide/16 v0, 0x0

    :goto_1
    const-wide/16 v12, 0x20

    cmp-long v9, v0, v12

    if-gez v9, :cond_3

    .line 17
    const-wide v12, 0x80000000L

    and-long/2addr v12, v2

    const-wide v14, 0x80000000L

    cmp-long v9, v12, v14

    if-nez v9, :cond_1

    .line 18
    const/4 v9, 0x1

    shl-long/2addr v2, v9

    .line 19
    const-wide v12, 0xffffffffL

    and-long/2addr v2, v12

    .line 20
    const-wide/32 v12, 0x4c11db7

    xor-long/2addr v2, v12

    .line 25
    :goto_2
    and-long v12, v4, v10

    cmp-long v9, v12, v10

    if-nez v9, :cond_0

    const-wide/32 v12, 0x4c11db7

    xor-long/2addr v2, v12

    .line 27
    :cond_0
    const/4 v9, 0x1

    shr-long/2addr v10, v9

    .line 16
    const-wide/16 v12, 0x1

    add-long/2addr v0, v12

    goto :goto_1

    .line 22
    :cond_1
    const/4 v9, 0x1

    shl-long/2addr v2, v9

    .line 23
    const-wide v12, 0xffffffffL

    and-long/2addr v2, v12

    goto :goto_2

    .line 30
    .end local v4    # "data":J
    .end local v6    # "k":I
    .end local v10    # "xbit":J
    .restart local v7    # "k":I
    :cond_2
    return-wide v2

    .end local v7    # "k":I
    .restart local v4    # "data":J
    .restart local v6    # "k":I
    .restart local v10    # "xbit":J
    :cond_3
    move v7, v6

    .end local v6    # "k":I
    .restart local v7    # "k":I
    move/from16 v8, p1

    .end local p1    # "len":I
    .restart local v8    # "len":I
    goto :goto_0
.end method

.method private static crc16Accumulate(II)I
    .locals 4
    .param p0, "data"    # I
    .param p1, "crcAccum"    # I

    .prologue
    .line 106
    and-int/lit16 v0, p1, 0xff

    .line 107
    .local v0, "a":I
    xor-int v1, p0, v0

    .line 109
    .local v1, "tmp":I
    shl-int/lit8 v2, v1, 0x4

    xor-int/2addr v1, v2

    .line 111
    and-int/lit16 v1, v1, 0xff

    .line 114
    shr-int/lit8 v2, p1, 0x8

    shl-int/lit8 v3, v1, 0x8

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x4

    xor-int p1, v2, v3

    .line 117
    return p1
.end method

.method public static crc16Calculate([BI)I
    .locals 4
    .param p0, "pBuffer"    # [B
    .param p1, "length"    # I

    .prologue
    .line 93
    const v0, 0xffff

    .line 95
    .local v0, "crcTmp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 96
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const v3, 0xffff

    and-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/CRCUtil;->crc16Accumulate(II)I

    move-result v0

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 129
    const/4 v3, 0x6

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 130
    .local v0, "cmd":[B
    invoke-static {v0}, Lcom/fimi/kernel/utils/CRCUtil;->bytesToInts([B)[I

    move-result-object v2

    .line 131
    .local v2, "crcInts":[I
    array-length v3, v2

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/CRCUtil;->calcCRC32([II)J

    move-result-wide v4

    .line 132
    .local v4, "crcL":J
    invoke-static {v4, v5}, Lcom/fimi/kernel/utils/ByteUtil;->longToBytes(J)[B

    move-result-object v1

    .line 134
    .local v1, "crc32s":[B
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/fimi/kernel/utils/ByteUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "================"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    return-void

    .line 129
    :array_0
    .array-data 1
        0x9t
        0x20t
        -0x2ct
        0x1t
        0x65t
        0xdt
    .end array-data
.end method

.method public static trans([B)[B
    .locals 3
    .param p0, "by"    # [B

    .prologue
    .line 79
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 80
    .local v0, "bx":[B
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 81
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-object v0
.end method
