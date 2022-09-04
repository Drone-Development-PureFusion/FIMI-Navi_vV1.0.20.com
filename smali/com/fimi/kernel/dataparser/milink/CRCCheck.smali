.class public Lcom/fimi/kernel/dataparser/milink/CRCCheck;
.super Ljava/lang/Object;
.source "CRCCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CRC16calc([II)J
    .locals 16
    .param p0, "ptr"    # [I
    .param p1, "len"    # I

    .prologue
    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .local v2, "crc":J
    const-wide/16 v0, 0x0

    .line 15
    .local v0, "bits":J
    const/4 v6, 0x0

    .local v6, "k":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    move/from16 v8, p1

    .line 16
    .end local p1    # "len":I
    .local v8, "len":I
    :goto_0
    add-int/lit8 p1, v8, -0x1

    .end local v8    # "len":I
    .restart local p1    # "len":I
    if-lez v8, :cond_2

    .line 17
    const-wide v10, 0x80000000L

    .line 18
    .local v10, "xbit":J
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    aget v9, p0, v7

    int-to-long v4, v9

    .line 19
    .local v4, "data":J
    const-wide/16 v0, 0x0

    :goto_1
    const-wide/16 v12, 0x20

    cmp-long v9, v0, v12

    if-gez v9, :cond_3

    .line 20
    const-wide v12, 0x80000000L

    and-long/2addr v12, v2

    const-wide v14, 0x80000000L

    cmp-long v9, v12, v14

    if-nez v9, :cond_1

    .line 21
    const/4 v9, 0x1

    shl-long/2addr v2, v9

    .line 22
    const-wide v12, 0xffffffffL

    and-long/2addr v2, v12

    .line 23
    const-wide/32 v12, 0x4c11db7

    xor-long/2addr v2, v12

    .line 28
    :goto_2
    and-long v12, v4, v10

    cmp-long v9, v12, v10

    if-nez v9, :cond_0

    .line 29
    const-wide/32 v12, 0x4c11db7

    xor-long/2addr v2, v12

    .line 31
    :cond_0
    const/4 v9, 0x1

    shr-long/2addr v10, v9

    .line 19
    const-wide/16 v12, 0x1

    add-long/2addr v0, v12

    goto :goto_1

    .line 25
    :cond_1
    const/4 v9, 0x1

    shl-long/2addr v2, v9

    .line 26
    const-wide v12, 0xffffffffL

    and-long/2addr v2, v12

    goto :goto_2

    .line 34
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

.method public static getbyte(I)[B
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 38
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 39
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 40
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method public static getbyte(J)[B
    .locals 6
    .param p0, "x"    # J

    .prologue
    .line 46
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 47
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 48
    mul-int/lit8 v2, v1, 0x8

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method

.method public static getbyteshort(S)[B
    .locals 3
    .param p0, "x"    # S

    .prologue
    .line 54
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 55
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 56
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method
