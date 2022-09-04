.class public Lcom/fimi/kernel/dataparser/milink/CRCChecksum;
.super Ljava/lang/Object;
.source "CRCChecksum.java"


# static fields
.field public static final X25_INIT_CRC:I = 0xffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crc16_accumulate(II)I
    .locals 4
    .param p0, "data"    # I
    .param p1, "crcAccum"    # I

    .prologue
    .line 27
    and-int/lit16 v0, p1, 0xff

    .line 28
    .local v0, "a":I
    xor-int v1, p0, v0

    .line 30
    .local v1, "tmp":I
    shl-int/lit8 v2, v1, 0x4

    xor-int/2addr v1, v2

    .line 32
    and-int/lit16 v1, v1, 0xff

    .line 35
    shr-int/lit8 v2, p1, 0x8

    shl-int/lit8 v3, v1, 0x8

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x4

    xor-int p1, v2, v3

    .line 38
    return p1
.end method

.method public static crc16_calculate([BI)I
    .locals 4
    .param p0, "pBuffer"    # [B
    .param p1, "length"    # I

    .prologue
    .line 14
    const v0, 0xffff

    .line 16
    .local v0, "crcTmp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 17
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const v3, 0xffff

    and-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/fimi/kernel/dataparser/milink/CRCChecksum;->crc16_accumulate(II)I

    move-result v0

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0xe

    .line 43
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 45
    .local v0, "x":[B
    invoke-static {v0, v2}, Lcom/fimi/kernel/dataparser/milink/CRCChecksum;->crc16_calculate([BI)I

    move-result v1

    .line 46
    .local v1, "y":I
    return-void

    .line 43
    :array_0
    .array-data 1
        -0x2t
        0x3t
        0x20t
        0x0t
        0x3t
        0x0t
        0x8t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
