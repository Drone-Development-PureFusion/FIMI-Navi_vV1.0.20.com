.class public Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;
.super Ljava/lang/Object;
.source "TensorFlowObjectDetectionAPIModel.java"

# interfaces
.implements Lcom/fimi/app/x8s/tensortfloow/Classifier;


# static fields
.field private static final MAX_RESULTS:I = 0x64


# instance fields
.field private byteValues:[B

.field private inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

.field private inputName:Ljava/lang/String;

.field private inputSize:I

.field private intValues:[I

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

.field private logStats:Z

.field private outputClasses:[F

.field private outputLocations:[F

.field private outputNames:[Ljava/lang/String;

.field private outputNumDetections:[F

.field private outputScores:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->logStats:Z

    .line 132
    return-void
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;I)Lcom/fimi/app/x8s/tensortfloow/Classifier;
    .locals 14
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "modelFilename"    # Ljava/lang/String;
    .param p2, "labelFilename"    # Ljava/lang/String;
    .param p3, "inputSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;

    invoke-direct {v3}, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;-><init>()V

    .line 79
    .local v3, "d":Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;
    const/4 v6, 0x0

    .line 80
    .local v6, "labelsInput":Ljava/io/InputStream;
    const-string v11, "file:///android_asset/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v1, v11, v12

    .line 81
    .local v1, "actualFilename":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "br":Ljava/io/BufferedReader;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 86
    iget-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    invoke-virtual {v11, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 91
    new-instance v11, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    invoke-direct {v11, p0, p1}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    .line 93
    iget-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    invoke-virtual {v11}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->graph()Lorg/tensorflow/Graph;

    move-result-object v4

    .line 95
    .local v4, "g":Lorg/tensorflow/Graph;
    const-string v11, "image_tensor"

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputName:Ljava/lang/String;

    .line 100
    iget-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lorg/tensorflow/Graph;->operation(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v5

    .line 101
    .local v5, "inputOp":Lorg/tensorflow/Operation;
    if-nez v5, :cond_1

    .line 102
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to find input Node \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 104
    :cond_1
    move/from16 v0, p3

    iput v0, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    .line 107
    const-string v11, "detection_scores"

    invoke-virtual {v4, v11}, Lorg/tensorflow/Graph;->operation(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v8

    .line 108
    .local v8, "outputOp1":Lorg/tensorflow/Operation;
    if-nez v8, :cond_2

    .line 109
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Failed to find output Node \'detection_scores\'"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 111
    :cond_2
    const-string v11, "detection_boxes"

    invoke-virtual {v4, v11}, Lorg/tensorflow/Graph;->operation(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v9

    .line 112
    .local v9, "outputOp2":Lorg/tensorflow/Operation;
    if-nez v9, :cond_3

    .line 113
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Failed to find output Node \'detection_boxes\'"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 115
    :cond_3
    const-string v11, "detection_classes"

    invoke-virtual {v4, v11}, Lorg/tensorflow/Graph;->operation(Ljava/lang/String;)Lorg/tensorflow/Operation;

    move-result-object v10

    .line 116
    .local v10, "outputOp3":Lorg/tensorflow/Operation;
    if-nez v10, :cond_4

    .line 117
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Failed to find output Node \'detection_classes\'"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 121
    :cond_4
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "detection_boxes"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "detection_scores"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "detection_classes"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "num_detections"

    aput-object v13, v11, v12

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNames:[Ljava/lang/String;

    .line 123
    iget v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    iget v12, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    mul-int/2addr v11, v12

    new-array v11, v11, [I

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->intValues:[I

    .line 124
    iget v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    iget v12, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    mul-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [B

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->byteValues:[B

    .line 125
    const/16 v11, 0x64

    new-array v11, v11, [F

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputScores:[F

    .line 126
    const/16 v11, 0x190

    new-array v11, v11, [F

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputLocations:[F

    .line 127
    const/16 v11, 0x64

    new-array v11, v11, [F

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputClasses:[F

    .line 128
    const/4 v11, 0x1

    new-array v11, v11, [F

    iput-object v11, v3, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNumDetections:[F

    .line 129
    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    invoke-virtual {v0}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->close()V

    .line 217
    return-void
.end method

.method public enableStatLogging(Z)V
    .locals 0
    .param p1, "logStats"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->logStats:Z

    .line 207
    return-void
.end method

.method public getStatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    invoke-virtual {v0}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->getStatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 12
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
    .line 137
    const-string v0, "recognizeImage"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 138
    const-string v0, "preprocessBitmap"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->intValues:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 143
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->intValues:[I

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->byteValues:[B

    mul-int/lit8 v1, v9, 0x3

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->intValues:[I

    aget v2, v2, v9

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->byteValues:[B

    mul-int/lit8 v1, v9, 0x3

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->intValues:[I

    aget v2, v2, v9

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->byteValues:[B

    mul-int/lit8 v1, v9, 0x3

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->intValues:[I

    aget v2, v2, v9

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 143
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 151
    const-string v0, "feed"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->byteValues:[B

    const/4 v3, 0x4

    new-array v3, v3, [J

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    int-to-long v6, v5

    aput-wide v6, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    int-to-long v6, v5

    aput-wide v6, v3, v4

    const/4 v4, 0x3

    const-wide/16 v6, 0x3

    aput-wide v6, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->feed(Ljava/lang/String;[B[J)V

    .line 153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 156
    const-string v0, "run"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNames:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->logStats:Z

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->run([Ljava/lang/String;Z)V

    .line 158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 161
    const-string v0, "fetch"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 162
    const/16 v0, 0x190

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputLocations:[F

    .line 163
    const/16 v0, 0x64

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputScores:[F

    .line 164
    const/16 v0, 0x64

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputClasses:[F

    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNumDetections:[F

    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputLocations:[F

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->fetch(Ljava/lang/String;[F)V

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNames:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputScores:[F

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->fetch(Ljava/lang/String;[F)V

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNames:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputClasses:[F

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->fetch(Ljava/lang/String;[F)V

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inferenceInterface:Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNames:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputNumDetections:[F

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;->fetch(Ljava/lang/String;[F)V

    .line 170
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 173
    new-instance v10, Ljava/util/PriorityQueue;

    const/4 v0, 0x1

    new-instance v1, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel$1;-><init>(Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;)V

    invoke-direct {v10, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 185
    .local v10, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;>;"
    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputScores:[F

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 186
    new-instance v8, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputLocations:[F

    mul-int/lit8 v1, v9, 0x4

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputLocations:[F

    mul-int/lit8 v2, v9, 0x4

    aget v1, v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputLocations:[F

    mul-int/lit8 v3, v9, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputLocations:[F

    mul-int/lit8 v4, v9, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->inputSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 192
    .local v8, "detection":Landroid/graphics/RectF;
    new-instance v1, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputClasses:[F

    aget v2, v2, v9

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    iget-object v3, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputClasses:[F

    aget v3, v3, v9

    float-to-int v3, v3

    .line 193
    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->outputScores:[F

    aget v3, v3, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, v8}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Landroid/graphics/RectF;)V

    .line 192
    invoke-virtual {v10, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 196
    .end local v8    # "detection":Landroid/graphics/RectF;
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v11, "recognitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;>;"
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 198
    invoke-virtual {v10}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 200
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 201
    return-object v11
.end method
