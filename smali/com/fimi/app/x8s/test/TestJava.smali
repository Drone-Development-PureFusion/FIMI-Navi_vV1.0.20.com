.class public Lcom/fimi/app/x8s/test/TestJava;
.super Ljava/lang/Object;
.source "TestJava.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2float([BI)F
    .locals 6
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .prologue
    .line 47
    add-int/lit8 v1, p1, 0x0

    aget-byte v0, p0, v1

    .line 48
    .local v0, "l":I
    and-int/lit16 v0, v0, 0xff

    .line 49
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 50
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 51
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 52
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 53
    int-to-long v2, v0

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static byteToFloat([BI)F
    .locals 4
    .param p0, "arr"    # [B
    .param p1, "index"    # I

    .prologue
    .line 38
    const/high16 v1, -0x1000000

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v1, v2

    const/high16 v2, 0xff0000

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const v2, 0xff00

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 42
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static getBytes(F)[B
    .locals 4
    .param p0, "data"    # F

    .prologue
    .line 25
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 27
    .local v1, "intBits":I
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 28
    .local v0, "bytes":[B
    const/4 v2, 0x0

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 29
    const/4 v2, 0x1

    const v3, 0xff00

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 30
    const/4 v2, 0x2

    const/high16 v3, 0xff0000

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 31
    const/4 v2, 0x3

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 32
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 17
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 19
    .local v0, "arr":[B
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/test/TestJava;->byte2float([BI)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(F)V

    .line 20
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(F)V

    .line 22
    return-void

    .line 17
    :array_0
    .array-data 1
        0x33t
        0x33t
        -0x40t
        -0x40t
    .end array-data
.end method
