.class public Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;
.super Ljava/lang/Object;
.source "TFLiteObjectDetectionAPIModel.java"

# interfaces
.implements Lcom/fimi/app/x8s/tensortfloow/Classifier;


# static fields
.field private static final IMAGE_MEAN:F = 128.0f

.field private static final IMAGE_STD:F = 128.0f

.field private static final NUM_DETECTIONS:I = 0x2

.field private static final NUM_THREADS:I = 0x6


# instance fields
.field private imgData:Ljava/nio/ByteBuffer;

.field private inputSize:I

.field private intValues:[I

.field private isModelQuantized:Z

.field private labels:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numDetections:[F

.field private outputClasses:[[F

.field private outputLocations:[[[F

.field private outputScores:[[F

.field private tfLite:Lorg/tensorflow/lite/Interpreter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    .line 147
    return-void
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/fimi/app/x8s/tensortfloow/Classifier;
    .locals 11
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "modelFilename"    # Ljava/lang/String;
    .param p2, "labelFilename"    # Ljava/lang/String;
    .param p3, "inputSize"    # I
    .param p4, "isQuantized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 106
    new-instance v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;

    invoke-direct {v2}, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;-><init>()V

    .line 108
    .local v2, "d":Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;
    const/4 v4, 0x0

    .line 109
    .local v4, "labelsInput":Ljava/io/InputStream;
    const-string v7, "file:///android_asset/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v9

    .line 110
    .local v0, "actualFilename":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/BufferedReader;

    .end local v1    # "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 115
    iget-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 119
    iput p3, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    .line 122
    :try_start_0
    new-instance v7, Lorg/tensorflow/lite/Interpreter;

    invoke-static {p0, p1}, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->loadModelFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/MappedByteBuffer;)V

    iput-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    iput-boolean p4, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->isModelQuantized:Z

    .line 130
    if-eqz p4, :cond_1

    .line 131
    const/4 v6, 0x1

    .line 135
    .local v6, "numBytesPerChannel":I
    :goto_1
    iget v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    mul-int/lit8 v7, v7, 0x1

    iget v8, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    mul-int/2addr v7, v6

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    .line 136
    iget-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 137
    iget v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    iget v8, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    mul-int/2addr v7, v8

    new-array v7, v7, [I

    iput-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->intValues:[I

    .line 139
    iget-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lorg/tensorflow/lite/Interpreter;->setNumThreads(I)V

    .line 140
    const/4 v7, 0x4

    filled-new-array {v9, v10, v7}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[F

    iput-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    .line 141
    filled-new-array {v9, v10}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    iput-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    .line 142
    filled-new-array {v9, v10}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    iput-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    .line 143
    new-array v7, v9, [F

    iput-object v7, v2, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->numDetections:[F

    .line 144
    return-object v2

    .line 123
    .end local v6    # "numBytesPerChannel":I
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 133
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x4

    .restart local v6    # "numBytesPerChannel":I
    goto :goto_1
.end method

.method private static loadModelFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 8
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "modelFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 83
    .local v6, "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 84
    .local v7, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 85
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 86
    .local v2, "startOffset":J
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    .line 87
    .local v4, "declaredLength":J
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public enableStatLogging(Z)V
    .locals 0
    .param p1, "logStats"    # Z

    .prologue
    .line 227
    return-void
.end method

.method public getStatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, ""

    return-object v0
.end method

.method public recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 18
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const-string v1, "recognizeImage"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 154
    const-string v1, "preprocessBitmap"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->intValues:[I

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 160
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    if-ge v10, v1, :cond_2

    .line 161
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    if-ge v12, v1, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->intValues:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    mul-int/2addr v2, v10

    add-int/2addr v2, v12

    aget v16, v1, v2

    .line 163
    .local v16, "pixelValue":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->isModelQuantized:Z

    if-eqz v1, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v16, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v16, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    move/from16 v0, v16

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 169
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v16, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x43000000    # 128.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x43000000    # 128.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v16, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x43000000    # 128.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x43000000    # 128.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    move/from16 v0, v16

    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x43000000    # 128.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x43000000    # 128.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 160
    .end local v16    # "pixelValue":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 175
    .end local v12    # "j":I
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 178
    const-string v1, "feed"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    .line 180
    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    .line 181
    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    .line 182
    const/4 v1, 0x1

    new-array v1, v1, [F

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->numDetections:[F

    .line 184
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    aput-object v2, v11, v1

    .line 185
    .local v11, "inputArray":[Ljava/lang/Object;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v15, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->numDetections:[F

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 193
    const-string v1, "run"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v1, v11, v15}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 195
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 199
    new-instance v17, Ljava/util/ArrayList;

    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v17, "recognitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;>;"
    const/4 v10, 0x0

    :goto_3
    const/4 v1, 0x2

    if-ge v10, v1, :cond_4

    .line 201
    new-instance v9, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v1, v1, v10

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v2, v2, v10

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget-object v3, v3, v10

    const/4 v4, 0x3

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-object v4, v4, v10

    const/4 v5, 0x2

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->inputSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 210
    .local v9, "detection":Landroid/graphics/RectF;
    const/4 v13, 0x1

    .line 211
    .local v13, "labelOffset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v10

    float-to-int v14, v1

    .line 212
    .local v14, "nClass":I
    if-ltz v14, :cond_3

    const/16 v1, 0x5a

    if-gt v14, v1, :cond_3

    .line 213
    new-instance v2, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    add-int v4, v14, v13

    .line 216
    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget v4, v4, v10

    .line 217
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4, v9}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Landroid/graphics/RectF;)V

    .line 213
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 221
    .end local v9    # "detection":Landroid/graphics/RectF;
    .end local v13    # "labelOffset":I
    .end local v14    # "nClass":I
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 222
    return-object v17
.end method
