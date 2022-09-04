.class public Lcom/fimi/app/x8s/tensortfloow/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field static final kMaxChannelValue:I = 0x3ffff

.field private static useNativeConversion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    :try_start_0
    const-string v0, "tensorflow_demo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->useNativeConversion:Z

    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static YUV2RGB(III)I
    .locals 8
    .param p0, "y"    # I
    .param p1, "u"    # I
    .param p2, "v"    # I

    .prologue
    const/4 v5, 0x0

    const v4, 0x3ffff

    .line 132
    add-int/lit8 v6, p0, -0x10

    if-gez v6, :cond_3

    move p0, v5

    .line 133
    :goto_0
    add-int/lit8 p1, p1, -0x80

    .line 134
    add-int/lit8 p2, p2, -0x80

    .line 141
    mul-int/lit16 v3, p0, 0x4a8

    .line 142
    .local v3, "y1192":I
    mul-int/lit16 v6, p2, 0x662

    add-int v2, v3, v6

    .line 143
    .local v2, "r":I
    mul-int/lit16 v6, p2, 0x341

    sub-int v6, v3, v6

    mul-int/lit16 v7, p1, 0x190

    sub-int v1, v6, v7

    .line 144
    .local v1, "g":I
    mul-int/lit16 v6, p1, 0x812

    add-int v0, v3, v6

    .line 147
    .local v0, "b":I
    if-le v2, v4, :cond_4

    move v2, v4

    .line 148
    :cond_0
    :goto_1
    if-le v1, v4, :cond_5

    move v1, v4

    .line 149
    :cond_1
    :goto_2
    if-le v0, v4, :cond_6

    move v0, v4

    .line 151
    :cond_2
    :goto_3
    const/high16 v4, -0x1000000

    shl-int/lit8 v5, v2, 0x6

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    shr-int/lit8 v5, v1, 0x2

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    shr-int/lit8 v5, v0, 0xa

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    return v4

    .line 132
    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v2    # "r":I
    .end local v3    # "y1192":I
    :cond_3
    add-int/lit8 p0, p0, -0x10

    goto :goto_0

    .line 147
    .restart local v0    # "b":I
    .restart local v1    # "g":I
    .restart local v2    # "r":I
    .restart local v3    # "y1192":I
    :cond_4
    if-gez v2, :cond_0

    move v2, v5

    goto :goto_1

    .line 148
    :cond_5
    if-gez v1, :cond_1

    move v1, v5

    goto :goto_2

    .line 149
    :cond_6
    if-gez v0, :cond_2

    move v0, v5

    goto :goto_3
.end method

.method private static native convertARGB8888ToYUV420SP([I[BII)V
.end method

.method private static native convertRGB565ToYUV420SP([B[BII)V
.end method

.method public static convertYUV420SPToARGB8888([BII[I)V
    .locals 12
    .param p0, "input"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "output"    # [I

    .prologue
    const/4 v11, 0x0

    .line 101
    sget-boolean v10, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->useNativeConversion:Z

    if-eqz v10, :cond_1

    .line 103
    const/4 v10, 0x0

    :try_start_0
    invoke-static {p0, p3, p1, p2, v10}, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->convertYUV420SPToARGB8888([B[IIIZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v11, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->useNativeConversion:Z

    .line 112
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    mul-int v1, p1, p2

    .line 113
    .local v1, "frameSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v9, 0x0

    .local v9, "yp":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 114
    shr-int/lit8 v10, v3, 0x1

    mul-int/2addr v10, p1

    add-int v5, v1, v10

    .line 115
    .local v5, "uvp":I
    const/4 v4, 0x0

    .line 116
    .local v4, "u":I
    const/4 v7, 0x0

    .line 118
    .local v7, "v":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "uvp":I
    .local v6, "uvp":I
    :goto_1
    if-ge v2, p1, :cond_2

    .line 119
    aget-byte v10, p0, v9

    and-int/lit16 v8, v10, 0xff

    .line 120
    .local v8, "y":I
    and-int/lit8 v10, v2, 0x1

    if-nez v10, :cond_3

    .line 121
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "uvp":I
    .restart local v5    # "uvp":I
    aget-byte v10, p0, v6

    and-int/lit16 v7, v10, 0xff

    .line 122
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "uvp":I
    .restart local v6    # "uvp":I
    aget-byte v10, p0, v5

    and-int/lit16 v4, v10, 0xff

    move v5, v6

    .line 125
    .end local v6    # "uvp":I
    .restart local v5    # "uvp":I
    :goto_2
    invoke-static {v8, v4, v7}, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->YUV2RGB(III)I

    move-result v10

    aput v10, p3, v9

    .line 118
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5    # "uvp":I
    .restart local v6    # "uvp":I
    goto :goto_1

    .line 113
    .end local v8    # "y":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v8    # "y":I
    :cond_3
    move v5, v6

    .end local v6    # "uvp":I
    .restart local v5    # "uvp":I
    goto :goto_2
.end method

.method private static native convertYUV420SPToARGB8888([B[IIIZ)V
.end method

.method private static native convertYUV420SPToRGB565([B[BII)V
.end method

.method public static convertYUV420ToARGB8888([B[B[BIIIII[I)V
    .locals 19
    .param p0, "yData"    # [B
    .param p1, "uData"    # [B
    .param p2, "vData"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "yRowStride"    # I
    .param p6, "uvRowStride"    # I
    .param p7, "uvPixelStride"    # I
    .param p8, "out"    # [I

    .prologue
    .line 165
    sget-boolean v1, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->useNativeConversion:Z

    if-eqz v1, :cond_1

    .line 167
    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_0
    invoke-static/range {v1 .. v10}, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->convertYUV420ToARGB8888([B[B[B[IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    return-void

    .line 170
    :catch_0
    move-exception v11

    .line 172
    .local v11, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->useNativeConversion:Z

    .line 176
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    const/16 v17, 0x0

    .line 177
    .local v17, "yp":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move/from16 v0, p4

    if-ge v13, v0, :cond_0

    .line 178
    mul-int v15, p5, v13

    .line 179
    .local v15, "pY":I
    shr-int/lit8 v1, v13, 0x1

    mul-int v14, p6, v1

    .line 181
    .local v14, "pUV":I
    const/4 v12, 0x0

    .local v12, "i":I
    move/from16 v18, v17

    .end local v17    # "yp":I
    .local v18, "yp":I
    :goto_1
    move/from16 v0, p3

    if-ge v12, v0, :cond_2

    .line 182
    shr-int/lit8 v1, v12, 0x1

    mul-int v1, v1, p7

    add-int v16, v14, v1

    .line 184
    .local v16, "uv_offset":I
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "yp":I
    .restart local v17    # "yp":I
    add-int v1, v15, v12

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p1, v16

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p2, v16

    and-int/lit16 v3, v3, 0xff

    invoke-static {v1, v2, v3}, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->YUV2RGB(III)I

    move-result v1

    aput v1, p8, v18

    .line 181
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v17

    .end local v17    # "yp":I
    .restart local v18    # "yp":I
    goto :goto_1

    .line 177
    .end local v16    # "uv_offset":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v18

    .end local v18    # "yp":I
    .restart local v17    # "yp":I
    goto :goto_0
.end method

.method private static native convertYUV420ToARGB8888([B[B[B[IIIIIIZ)V
.end method

.method public static getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;
    .locals 10
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "applyRotation"    # I
    .param p5, "maintainAspectRatio"    # Z

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 293
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 295
    .local v2, "matrix":Landroid/graphics/Matrix;
    if-eqz p4, :cond_1

    .line 296
    rem-int/lit8 v7, p4, 0x5a

    if-eqz v7, :cond_0

    .line 301
    :cond_0
    neg-int v7, p0

    int-to-float v7, v7

    div-float/2addr v7, v9

    neg-int v8, p1

    int-to-float v8, v8

    div-float/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 304
    int-to-float v7, p4

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 309
    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x5a

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_5

    const/4 v6, 0x1

    .line 311
    .local v6, "transpose":Z
    :goto_0
    if-eqz v6, :cond_6

    move v1, p1

    .line 312
    .local v1, "inWidth":I
    :goto_1
    if-eqz v6, :cond_7

    move v0, p0

    .line 315
    .local v0, "inHeight":I
    :goto_2
    if-ne v1, p2, :cond_2

    if-eq v0, p3, :cond_3

    .line 316
    :cond_2
    int-to-float v7, p2

    int-to-float v8, v1

    div-float v4, v7, v8

    .line 317
    .local v4, "scaleFactorX":F
    int-to-float v7, p3

    int-to-float v8, v0

    div-float v5, v7, v8

    .line 319
    .local v5, "scaleFactorY":F
    if-eqz p5, :cond_8

    .line 322
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 323
    .local v3, "scaleFactor":F
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 330
    .end local v3    # "scaleFactor":F
    .end local v4    # "scaleFactorX":F
    .end local v5    # "scaleFactorY":F
    :cond_3
    :goto_3
    if-eqz p4, :cond_4

    .line 332
    int-to-float v7, p2

    div-float/2addr v7, v9

    int-to-float v8, p3

    div-float/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 335
    :cond_4
    return-object v2

    .line 309
    .end local v0    # "inHeight":I
    .end local v1    # "inWidth":I
    .end local v6    # "transpose":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6    # "transpose":Z
    :cond_6
    move v1, p0

    .line 311
    goto :goto_1

    .restart local v1    # "inWidth":I
    :cond_7
    move v0, p1

    .line 312
    goto :goto_2

    .line 326
    .restart local v0    # "inHeight":I
    .restart local v4    # "scaleFactorX":F
    .restart local v5    # "scaleFactorY":F
    :cond_8
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_3
.end method

.method public static getYUVByteSize(II)I
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 43
    mul-int v1, p0, p1

    .line 47
    .local v1, "ySize":I
    add-int/lit8 v2, p0, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p1, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x2

    .line 49
    .local v0, "uvSize":I
    add-int v2, v1, v0

    return v2
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    const-string v0, "preview.png"

    invoke-static {p0, v0}, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tensorflow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "root":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "myDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    :cond_0
    move-object v1, p1

    .line 76
    .local v1, "fname":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x63

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 83
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 84
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v5

    goto :goto_0
.end method
