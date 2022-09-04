.class public Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;
.super Ljava/lang/Object;
.source "ByteArrayToIntArray.java"


# static fields
.field static CRC32_Table:[I

.field private static initTable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32_Table:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CRC32Software([BI)I
    .locals 12
    .param p0, "pData"    # [B
    .param p1, "Length"    # I

    .prologue
    .line 18
    sget-boolean v10, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->initTable:Z

    if-nez v10, :cond_0

    .line 19
    invoke-static {}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->Table_Init()V

    .line 20
    const/4 v10, 0x1

    sput-boolean v10, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->initTable:Z

    .line 23
    :cond_0
    const/4 v2, -0x1

    .local v2, "crc":I
    const/4 v9, 0x0

    .line 25
    .local v9, "tmp":I
    div-int/lit8 v7, p1, 0x4

    .line 26
    .local v7, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 27
    const/4 v10, 0x4

    new-array v6, v10, [B

    .line 28
    .local v6, "nn":[B
    const/4 v10, 0x0

    mul-int/lit8 v11, v3, 0x4

    aget-byte v11, p0, v11

    aput-byte v11, v6, v10

    .line 29
    const/4 v10, 0x1

    mul-int/lit8 v11, v3, 0x4

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p0, v11

    aput-byte v11, v6, v10

    .line 30
    const/4 v10, 0x2

    mul-int/lit8 v11, v3, 0x4

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p0, v11

    aput-byte v11, v6, v10

    .line 31
    const/4 v10, 0x3

    mul-int/lit8 v11, v3, 0x4

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p0, v11

    aput-byte v11, v6, v10

    .line 32
    const/4 v10, 0x0

    invoke-static {v6, v10}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->bytesToInt([BI)I

    move-result v9

    .line 33
    const/4 v4, 0x3

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 34
    shr-int/lit8 v10, v2, 0x18

    mul-int/lit8 v11, v4, 0x8

    shr-int v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    xor-int v1, v10, v11

    .line 35
    .local v1, "abyte":I
    and-int/lit16 v0, v1, 0xff

    .line 36
    .local v0, "a":I
    sget-object v10, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32_Table:[I

    aget v10, v10, v0

    shl-int/lit8 v11, v2, 0x8

    xor-int v2, v10, v11

    .line 33
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 26
    .end local v0    # "a":I
    .end local v1    # "abyte":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v4    # "j":I
    .end local v6    # "nn":[B
    :cond_2
    rem-int/lit8 v5, p1, 0x4

    .line 40
    .local v5, "k":I
    if-lez v5, :cond_4

    .line 41
    const/4 v10, 0x4

    new-array v8, v10, [B

    .line 42
    .local v8, "t":[B
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 43
    mul-int/lit8 v10, v7, 0x4

    add-int/2addr v10, v4

    aget-byte v10, p0, v10

    aput-byte v10, v8, v4

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 45
    :cond_3
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->bytesToInt([BI)I

    move-result v9

    .line 46
    const/4 v4, 0x3

    :goto_3
    if-ltz v4, :cond_4

    .line 47
    shr-int/lit8 v10, v2, 0x18

    mul-int/lit8 v11, v4, 0x8

    shr-int v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    xor-int/2addr v10, v11

    int-to-byte v1, v10

    .line 48
    .restart local v1    # "abyte":I
    and-int/lit16 v0, v1, 0xff

    .line 49
    .restart local v0    # "a":I
    sget-object v10, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32_Table:[I

    aget v10, v10, v0

    shl-int/lit8 v11, v2, 0x8

    xor-int v2, v10, v11

    .line 46
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 52
    .end local v0    # "a":I
    .end local v1    # "abyte":I
    .end local v4    # "j":I
    .end local v8    # "t":[B
    :cond_4
    xor-int/lit8 v2, v2, 0x0

    .line 53
    return v2
.end method

.method public static Table_Init()V
    .locals 7

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "CRC_Reg":I
    const v0, 0x4c11db7

    .line 74
    .local v0, "CRC_POLY":I
    const/4 v2, 0x0

    .local v2, "i32":I
    :goto_0
    const/16 v5, 0x100

    if-ge v2, v5, :cond_2

    .line 77
    shl-int/lit8 v4, v2, 0x18

    .line 78
    .local v4, "nData32":I
    const/4 v1, 0x0

    .line 79
    const/4 v3, 0x0

    .local v3, "j32":I
    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    .line 81
    xor-int v5, v4, v1

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 82
    shl-int/lit8 v5, v1, 0x1

    xor-int v1, v5, v0

    .line 86
    :goto_2
    shl-int/lit8 v4, v4, 0x1

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 88
    :cond_1
    sget-object v5, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32_Table:[I

    aput v1, v5, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v3    # "j32":I
    .end local v4    # "nData32":I
    :cond_2
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 148
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

.method public static bytesToInt([BI)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 60
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

    .line 64
    .local v0, "value":I
    return v0
.end method

.method public static getInt([B)[I
    .locals 12
    .param p0, "bylength"    # [B

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 97
    array-length v2, p0

    .line 98
    .local v2, "length":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "listbyte":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v1, v11, [B

    .line 103
    .local v1, "item":[B
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_3

    .line 104
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v6, v11, :cond_0

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x4

    if-ne v6, v8, :cond_0

    .line 105
    aget-byte v6, p0, v5

    aput-byte v6, v1, v7

    .line 106
    aput-byte v7, v1, v8

    .line 107
    aput-byte v7, v1, v9

    .line 108
    aput-byte v7, v1, v10

    .line 127
    :goto_1
    invoke-static {v1}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->trans([B)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-array v1, v11, [B

    .line 103
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 109
    :cond_0
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v6, v11, :cond_1

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x4

    if-ne v6, v9, :cond_1

    .line 110
    aget-byte v6, p0, v5

    aput-byte v6, v1, v7

    .line 111
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v8

    .line 112
    aput-byte v7, v1, v9

    .line 113
    aput-byte v7, v1, v10

    goto :goto_1

    .line 114
    :cond_1
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v6, v11, :cond_2

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x4

    if-ne v6, v10, :cond_2

    .line 116
    aget-byte v6, p0, v5

    aput-byte v6, v1, v7

    .line 117
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v8

    .line 118
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    aput-byte v6, v1, v9

    .line 119
    aput-byte v7, v1, v10

    goto :goto_1

    .line 122
    :cond_2
    aget-byte v6, p0, v5

    aput-byte v6, v1, v7

    .line 123
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v8

    .line 124
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    aput-byte v6, v1, v9

    .line 125
    add-int/lit8 v6, v5, 0x3

    aget-byte v6, p0, v6

    aput-byte v6, v1, v10

    goto :goto_1

    .line 131
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [I

    .line 132
    .local v0, "arrayitem":[I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 133
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->byteArrayToInt([B)I

    move-result v6

    aput v6, v0, v4

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 136
    :cond_4
    return-object v0
.end method

.method public static trans([B)[B
    .locals 3
    .param p0, "by"    # [B

    .prologue
    .line 140
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 141
    .local v0, "bx":[B
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 142
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object v0
.end method
