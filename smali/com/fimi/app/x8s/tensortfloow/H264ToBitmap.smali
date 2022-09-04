.class public Lcom/fimi/app/x8s/tensortfloow/H264ToBitmap;
.super Ljava/lang/Object;
.source "H264ToBitmap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertByteToColor([B)[I
    .locals 9
    .param p0, "data"    # [B

    .prologue
    .line 42
    array-length v6, p0

    .line 43
    .local v6, "size":I
    if-nez v6, :cond_1

    .line 44
    const/4 v1, 0x0

    .line 63
    :cond_0
    return-object v1

    .line 49
    :cond_1
    div-int/lit8 v7, v6, 0x4

    new-array v1, v7, [I

    .line 51
    .local v1, "color":[I
    array-length v2, v1

    .line 52
    .local v2, "colorLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 56
    mul-int/lit8 v7, v4, 0x4

    aget-byte v7, p0, v7

    and-int/lit16 v5, v7, 0xff

    .line 57
    .local v5, "red":I
    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v3, v7, 0xff

    .line 58
    .local v3, "green":I
    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v0, v7, 0xff

    .line 60
    .local v0, "blue":I
    shl-int/lit8 v7, v5, 0x10

    shl-int/lit8 v8, v3, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v0

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    aput v7, v1, v4

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static rgb2Bitmap([BII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 19
    invoke-static {p0}, Lcom/fimi/app/x8s/tensortfloow/H264ToBitmap;->convertByteToColor([B)[I

    move-result-object v0

    .line 20
    .local v0, "colors":[I
    if-nez v0, :cond_0

    .line 21
    const/4 v6, 0x0

    .line 26
    :goto_0
    return-object v6

    .line 24
    :cond_0
    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 26
    .local v6, "bmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
