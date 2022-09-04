.class public Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;
.super Ljava/lang/Object;
.source "X8DetectionControler.java"

# interfaces
.implements Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;
    }
.end annotation


# static fields
.field private static final MINIMUM_CONFIDENCE_TF_OD_API:F = 0.2f

.field private static final TF_OD_API_INPUT_SIZE:I = 0x12c

.field private static final TF_OD_API_LABELS_FILE:Ljava/lang/String; = "file:///android_asset/coco_labels_list.txt"

.field private static final TF_OD_API_MODEL_FILE:Ljava/lang/String; = "detect_ssd_new.mp3"


# instance fields
.field private MAX_UNSIGNED_SHORT:I

.field private SIZE_HEIGHT:I

.field private SIZE_WIDTH:I

.field private TF_OD_API_IS_QUANTIZED:Z

.field private VIDEO_HEIGHT:I

.field private VIDEO_WIDTH:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private classfier:Ljava/lang/Integer;

.field private context:Landroid/app/Activity;

.field cropSize:I

.field private cropToFrameTransform:Landroid/graphics/Matrix;

.field private croppedBitmap:Landroid/graphics/Bitmap;

.field private detector:Lcom/fimi/app/x8s/tensortfloow/Classifier;

.field private frameToCropTransform:Landroid/graphics/Matrix;

.field private isFirst:Z

.field private isFirstWaiting:Z

.field private isLog:Z

.field private isRev:Z

.field private isTouch:Z

.field private lastProcessingTimeMs:J

.field private listener:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;

.field private mFimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private objTitle:Ljava/lang/String;

.field private overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

.field private rectH:I

.field private rectW:I

.field private rectX:I

.field private rectY:I

.field private testoverlay:Lcom/fimi/app/x8s/tensortfloow/TestOverlay;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->TF_OD_API_IS_QUANTIZED:Z

    .line 41
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isLog:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->croppedBitmap:Landroid/graphics/Bitmap;

    .line 62
    const/16 v0, 0x12c

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->objTitle:Ljava/lang/String;

    .line 66
    const/16 v0, 0x500

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_WIDTH:I

    .line 67
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_HEIGHT:I

    .line 72
    const v0, 0xffff

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    .line 141
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isFirst:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)Lcom/fimi/app/x8s/tensortfloow/Classifier;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->detector:Lcom/fimi/app/x8s/tensortfloow/Classifier;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;Lcom/fimi/app/x8s/tensortfloow/Classifier;)Lcom/fimi/app/x8s/tensortfloow/Classifier;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;
    .param p1, "x1"    # Lcom/fimi/app/x8s/tensortfloow/Classifier;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->detector:Lcom/fimi/app/x8s/tensortfloow/Classifier;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->TF_OD_API_IS_QUANTIZED:Z

    return v0
.end method

.method private getScaleX(II)F
    .locals 4
    .param p1, "f"    # I
    .param p2, "c"    # I

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "tmp":I
    if-le p1, p2, :cond_0

    .line 223
    :goto_0
    int-to-float v2, p2

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 224
    .local v0, "scaleX":F
    return v0

    .line 219
    .end local v0    # "scaleX":F
    :cond_0
    move v1, p2

    .line 220
    move p2, p1

    .line 221
    move p1, v1

    goto :goto_0
.end method

.method private getScaleX1(II)F
    .locals 3
    .param p1, "f"    # I
    .param p2, "c"    # I

    .prologue
    .line 228
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 229
    .local v0, "scaleX":F
    return v0
.end method

.method private initTensortfloow()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;-><init>(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)V

    .line 101
    invoke-virtual {v0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;->start()V

    .line 103
    return-void
.end method


# virtual methods
.method RectOverlap(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "rOther"    # Landroid/graphics/RectF;

    .prologue
    .line 186
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cropBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isRecycle"    # Z

    .prologue
    .line 174
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne p4, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne p5, v1, :cond_0

    .line 181
    .end local p1    # "src":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 177
    .restart local p1    # "src":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    .local v0, "dst":Landroid/graphics/Bitmap;
    if-eqz p6, :cond_1

    if-eq v0, p1, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p1, v0

    .line 181
    goto :goto_0
.end method

.method public initView(Landroid/app/Activity;Lcom/fimi/app/x8s/widget/X8TrackOverlayView;Lcom/fimi/app/x8s/media/FimiH264Video;Lcom/fimi/app/x8s/tensortfloow/TestOverlay;Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "overlay"    # Lcom/fimi/app/x8s/widget/X8TrackOverlayView;
    .param p3, "mFimiH264Video"    # Lcom/fimi/app/x8s/media/FimiH264Video;
    .param p4, "testoverlay"    # Lcom/fimi/app/x8s/tensortfloow/TestOverlay;
    .param p5, "listener"    # Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->context:Landroid/app/Activity;

    .line 77
    iput-object p2, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    .line 78
    iput-object p4, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->testoverlay:Lcom/fimi/app/x8s/tensortfloow/TestOverlay;

    .line 79
    iput-object p5, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->listener:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setCustomOverlay(Z)V

    .line 81
    iput-object p3, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    .line 82
    invoke-virtual {p3, p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V

    .line 83
    invoke-direct {p0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->initTensortfloow()V

    .line 84
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_WIDTH:I

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->bitmap:Landroid/graphics/Bitmap;

    .line 86
    return-void
.end method

.method public onFrameBuffer([B)V
    .locals 8
    .param p1, "rgb"    # [B

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isRev:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isTouch:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/fimi/app/x8s/tensortfloow/H264ToBitmap;->convertByteToColor([B)[I

    move-result-object v1

    iget v3, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_WIDTH:I

    iget v6, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_WIDTH:I

    iget v7, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_HEIGHT:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 148
    iput-boolean v2, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isRev:Z

    .line 149
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/media/FimiH264Video;->setEnableCallback(I)V

    .line 150
    invoke-virtual {p0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->runThread()V

    .line 152
    :cond_0
    return-void
.end method

.method public onH264Frame(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 157
    return-void
.end method

.method public onResult(FFFFZI)V
    .locals 10
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "b"    # Z
    .param p6, "classfier"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->listener:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;

    if-eqz v0, :cond_0

    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    mul-float v8, v0, v1

    .line 195
    .local v8, "preX":F
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    mul-float v9, v0, v1

    .line 196
    .local v9, "preY":F
    sub-float v0, p3, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    mul-float v7, v0, v1

    .line 197
    .local v7, "preW":F
    sub-float v0, p4, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    mul-float v6, v0, v1

    .line 198
    .local v6, "preH":F
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->listener:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;

    float-to-int v1, v8

    float-to-int v2, v9

    float-to-int v3, v7

    float-to-int v4, v6

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;->onDetectionResult(IIIII)V

    .line 200
    .end local v6    # "preH":F
    .end local v7    # "preW":F
    .end local v8    # "preX":F
    .end local v9    # "preY":F
    :cond_0
    return-void
.end method

.method public onResult2(FFFFZI)V
    .locals 10
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "b"    # Z
    .param p6, "classfier"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->listener:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;

    if-eqz v0, :cond_0

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    mul-float v8, v0, v1

    .line 205
    .local v8, "preX":F
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    mul-float v9, v0, v1

    .line 206
    .local v9, "preY":F
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p3

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    mul-float v7, v0, v1

    .line 207
    .local v7, "preW":F
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p4

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->MAX_UNSIGNED_SHORT:I

    int-to-float v1, v1

    mul-float v6, v0, v1

    .line 210
    .local v6, "preH":F
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->listener:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;

    float-to-int v1, v8

    float-to-int v2, v9

    float-to-int v3, v7

    float-to-int v4, v6

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;->onDetectionResult(IIIII)V

    .line 212
    .end local v6    # "preH":F
    .end local v7    # "preW":F
    .end local v8    # "preX":F
    .end local v9    # "preY":F
    :cond_0
    return-void
.end method

.method public onTouchActionDown()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onTouchActionUp(IIIIIIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "x1"    # I
    .param p6, "y1"    # I
    .param p7, "x2"    # I
    .param p8, "y2"    # I

    .prologue
    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 107
    if-ltz p3, :cond_3

    if-ltz p4, :cond_3

    .line 108
    if-lt p3, v0, :cond_0

    if-ge p4, v0, :cond_1

    .line 109
    :cond_0
    const/4 p3, 0x0

    .line 110
    const/4 p4, 0x0

    .line 114
    :cond_1
    iput p1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    .line 115
    iput p2, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    .line 116
    iput p3, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectW:I

    .line 117
    iput p4, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectH:I

    .line 120
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameWidth:I

    .line 121
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_HEIGHT:I

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameHeight:I

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->detector:Lcom/fimi/app/x8s/tensortfloow/Classifier;

    if-nez v0, :cond_4

    .line 134
    :cond_2
    :goto_1
    return-void

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->cleanTrackerRect()V

    goto :goto_0

    .line 129
    :cond_4
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isRev:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isFirstWaiting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isTouch:Z

    if-nez v0, :cond_2

    .line 130
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isRev:Z

    .line 131
    iput-boolean v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isTouch:Z

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->setEnableCallback(I)V

    goto :goto_1
.end method

.method public runTf()V
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->SIZE_WIDTH:I

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->SIZE_WIDTH:I

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->overlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->getMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->SIZE_HEIGHT:I

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->tfLiteApiModel()V

    .line 240
    return-void
.end method

.method public runThread()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isTouch:Z

    if-eqz v0, :cond_0

    .line 162
    iget-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isFirstWaiting:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isFirstWaiting:Z

    .line 164
    new-instance v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$2;-><init>(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)V

    .line 168
    invoke-virtual {v0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$2;->start()V

    .line 171
    :cond_0
    return-void
.end method

.method public tfLiteApiModel()V
    .locals 51

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isTouch:Z

    if-eqz v4, :cond_15

    .line 245
    const/16 v46, 0x0

    .local v46, "x1":I
    const/16 v49, 0x0

    .local v49, "y1":I
    const/16 v47, 0x0

    .local v47, "x2":I
    const/16 v50, 0x0

    .line 246
    .local v50, "y2":I
    const/16 v22, 0x0

    .line 247
    .local v22, "isDianXuan":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->SIZE_WIDTH:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->getScaleX(II)F

    move-result v35

    .line 248
    .local v35, "scaleFrameX":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->SIZE_HEIGHT:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->getScaleX(II)F

    move-result v36

    .line 252
    .local v36, "scaleFrameY":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectH:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectW:I

    if-nez v4, :cond_4

    .line 253
    :cond_0
    const/16 v22, 0x1

    .line 254
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    int-to-float v4, v4

    mul-float v4, v4, v35

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int v46, v4, v5

    .line 255
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    int-to-float v4, v4

    mul-float v4, v4, v36

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int v49, v4, v5

    .line 256
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    int-to-float v4, v4

    mul-float v4, v4, v35

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    div-int/lit8 v5, v5, 0x2

    add-int v47, v4, v5

    .line 257
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    int-to-float v4, v4

    mul-float v4, v4, v36

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    div-int/lit8 v5, v5, 0x2

    add-int v50, v4, v5

    .line 258
    if-gez v46, :cond_1

    .line 259
    sub-int v47, v47, v46

    .line 260
    const/16 v46, 0x0

    .line 262
    :cond_1
    if-gez v49, :cond_2

    .line 263
    sub-int v50, v50, v49

    .line 264
    const/16 v49, 0x0

    .line 266
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameWidth:I

    move/from16 v0, v47

    if-le v0, v4, :cond_3

    .line 267
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameWidth:I

    sub-int v4, v47, v4

    sub-int v46, v46, v4

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameWidth:I

    move/from16 v47, v0

    .line 270
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameHeight:I

    move/from16 v0, v50

    if-le v0, v4, :cond_4

    .line 271
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameHeight:I

    sub-int v4, v50, v4

    sub-int v49, v49, v4

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameHeight:I

    move/from16 v50, v0

    .line 307
    :cond_4
    const/16 v41, 0x0

    .local v41, "targetX":I
    const/16 v42, 0x0

    .local v42, "targetY":I
    const/16 v40, 0x0

    .local v40, "targetW":I
    const/16 v37, 0x0

    .line 308
    .local v37, "targetH":I
    const/16 v45, 0x0

    .line 309
    .local v45, "x":I
    const/16 v48, 0x0

    .line 310
    .local v48, "y":I
    const/16 v44, 0x0

    .line 311
    .local v44, "w":I
    const/16 v21, 0x0

    .line 312
    .local v21, "h":I
    const/16 v17, 0x0

    .line 313
    .local v17, "bFound":Z
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_18

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->croppedBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 315
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->croppedBitmap:Landroid/graphics/Bitmap;

    .line 318
    :cond_5
    sub-int v4, v47, v46

    sub-int v5, v50, v49

    move-object/from16 v0, p0

    iget v6, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropSize:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->context:Landroid/app/Activity;

    .line 319
    invoke-virtual {v8}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v8

    const/4 v9, 0x0

    .line 318
    invoke-static/range {v4 .. v9}, Lcom/fimi/app/x8s/tensortfloow/ImageUtils;->getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->frameToCropTransform:Landroid/graphics/Matrix;

    .line 320
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropToFrameTransform:Landroid/graphics/Matrix;

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->frameToCropTransform:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropToFrameTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 323
    new-instance v30, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectW:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectH:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 324
    .local v30, "roiRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isLog:Z

    if-eqz v4, :cond_6

    .line 325
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u9009\u6846\u5c4f\u5e55\u5750\u6807\uff1a-<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 328
    :cond_6
    :try_start_0
    new-instance v31, Landroid/graphics/RectF;

    move/from16 v0, v46

    int-to-float v4, v0

    move/from16 v0, v49

    int-to-float v5, v0

    move/from16 v0, v47

    int-to-float v6, v0

    move/from16 v0, v50

    int-to-float v7, v0

    move-object/from16 v0, v31

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v30    # "roiRect":Landroid/graphics/RectF;
    .local v31, "roiRect":Landroid/graphics/RectF;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isLog:Z

    if-eqz v4, :cond_7

    .line 330
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8bc6\u522b\u56fe\u7247\u5728PFV\u5750\u6807\uff1a -<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 331
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->bitmap:Landroid/graphics/Bitmap;

    sub-int v8, v47, v46

    sub-int v9, v50, v49

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v6, v46

    move/from16 v7, v49

    invoke-virtual/range {v4 .. v10}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->cropBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 333
    .local v34, "roibitmap":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->croppedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 334
    .local v18, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->frameToCropTransform:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 335
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v30, v31

    .line 344
    .end local v18    # "canvas":Landroid/graphics/Canvas;
    .end local v31    # "roiRect":Landroid/graphics/RectF;
    .end local v34    # "roibitmap":Landroid/graphics/Bitmap;
    .restart local v30    # "roiRect":Landroid/graphics/RectF;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 345
    .local v38, "startTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->detector:Lcom/fimi/app/x8s/tensortfloow/Classifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->croppedBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v4, v5}, Lcom/fimi/app/x8s/tensortfloow/Classifier;->recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v27

    .line 346
    .local v27, "results":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v38

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->lastProcessingTimeMs:J

    .line 347
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->objTitle:Ljava/lang/String;

    .line 350
    new-instance v30, Landroid/graphics/RectF;

    .end local v30    # "roiRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectW:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectH:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 351
    .restart local v30    # "roiRect":Landroid/graphics/RectF;
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/RectF;->left:F

    mul-float v4, v4, v35

    float-to-int v0, v4

    move/from16 v45, v0

    .line 352
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, v36

    float-to-int v0, v4

    move/from16 v48, v0

    .line 353
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/RectF;->right:F

    mul-float v4, v4, v35

    float-to-int v0, v4

    move/from16 v44, v0

    .line 354
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v4, v36

    float-to-int v0, v4

    move/from16 v21, v0

    .line 355
    new-instance v43, Landroid/graphics/RectF;

    move/from16 v0, v45

    int-to-float v4, v0

    move/from16 v0, v48

    int-to-float v5, v0

    move/from16 v0, v44

    int-to-float v6, v0

    move/from16 v0, v21

    int-to-float v7, v0

    move-object/from16 v0, v43

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 356
    .local v43, "touchRoi":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isLog:Z

    if-eqz v4, :cond_8

    .line 357
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u9009\u6846\u5728Fpv\u5750\u6807\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 359
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isLog:Z

    if-eqz v4, :cond_9

    .line 360
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "results size= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 362
    :cond_9
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;

    .line 364
    .local v26, "result":Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;
    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v23

    .line 365
    .local v23, "location":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isLog:Z

    if-eqz v5, :cond_b

    .line 366
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getConfidence= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u8bc6\u522b\u7ed3\u679c\uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 368
    :cond_b
    if-eqz v23, :cond_a

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const v6, 0x3e4ccccd    # 0.2f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    .line 370
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43910000    # 290.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_a

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43910000    # 290.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_a

    .line 372
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43af0000    # 350.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_a

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43af0000    # 350.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_a

    .line 378
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    add-int v29, v46, v5

    .line 379
    .local v29, "roiLeft":I
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    add-int v33, v49, v5

    .line 380
    .local v33, "roiTop":I
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    add-int v32, v46, v5

    .line 381
    .local v32, "roiRight":I
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    add-int v28, v49, v5

    .line 383
    .local v28, "roiBottom":I
    if-gez v29, :cond_c

    .line 384
    const/16 v29, 0x0

    .line 385
    :cond_c
    if-gez v33, :cond_d

    .line 386
    const/16 v33, 0x0

    .line 387
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_WIDTH:I

    move/from16 v0, v32

    if-le v0, v5, :cond_e

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_WIDTH:I

    move/from16 v32, v0

    .line 389
    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_HEIGHT:I

    move/from16 v0, v28

    if-le v0, v5, :cond_f

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->VIDEO_HEIGHT:I

    move/from16 v28, v0

    .line 392
    :cond_f
    new-instance v24, Landroid/graphics/RectF;

    move/from16 v0, v29

    int-to-float v5, v0

    move/from16 v0, v33

    int-to-float v6, v0

    move/from16 v0, v32

    int-to-float v7, v0

    move/from16 v0, v28

    int-to-float v8, v0

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 397
    .local v24, "objRoi":Landroid/graphics/RectF;
    const/16 v25, 0x0

    .line 398
    .local v25, "overlapR":Z
    if-nez v22, :cond_10

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->RectOverlap(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v25

    .line 401
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isLog:Z

    if-eqz v5, :cond_11

    .line 402
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u8bc6\u522b\u7ed3\u679c\u5728Fpv\u5750\u6807: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "         ==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 404
    :cond_11
    if-nez v17, :cond_a

    const/4 v5, 0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_12

    if-nez v22, :cond_a

    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_a

    .line 407
    :cond_12
    const/4 v9, 0x1

    .line 408
    .end local v17    # "bFound":Z
    .local v9, "bFound":Z
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v4

    move/from16 v41, v0

    .line 409
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v4

    move/from16 v42, v0

    .line 410
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v0, v4

    move/from16 v40, v0

    .line 411
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v0, v4

    move/from16 v37, v0

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-[procTime=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->lastProcessingTimeMs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")ms,confidence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 414
    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->objTitle:Ljava/lang/String;

    .line 416
    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 417
    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->classfier:Ljava/lang/Integer;

    .line 428
    .end local v23    # "location":Landroid/graphics/RectF;
    .end local v24    # "objRoi":Landroid/graphics/RectF;
    .end local v25    # "overlapR":Z
    .end local v26    # "result":Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;
    .end local v27    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;>;"
    .end local v28    # "roiBottom":I
    .end local v29    # "roiLeft":I
    .end local v30    # "roiRect":Landroid/graphics/RectF;
    .end local v32    # "roiRight":I
    .end local v33    # "roiTop":I
    .end local v38    # "startTime":J
    .end local v43    # "touchRoi":Landroid/graphics/RectF;
    :cond_13
    :goto_1
    if-eqz v9, :cond_16

    .line 430
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->SIZE_WIDTH:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->getScaleX1(II)F

    move-result v35

    .line 431
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->mFrameHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->SIZE_HEIGHT:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->getScaleX1(II)F

    move-result v36

    .line 432
    move/from16 v0, v41

    int-to-float v4, v0

    mul-float v4, v4, v35

    float-to-int v0, v4

    move/from16 v45, v0

    .line 433
    move/from16 v0, v42

    int-to-float v4, v0

    mul-float v4, v4, v36

    float-to-int v0, v4

    move/from16 v48, v0

    .line 434
    move/from16 v0, v40

    int-to-float v4, v0

    mul-float v4, v4, v35

    float-to-int v4, v4

    add-int v44, v45, v4

    .line 435
    move/from16 v0, v37

    int-to-float v4, v0

    mul-float v4, v4, v36

    float-to-int v4, v4

    add-int v21, v48, v4

    .line 436
    new-instance v19, Landroid/graphics/RectF;

    move/from16 v0, v45

    int-to-float v4, v0

    move/from16 v0, v48

    int-to-float v5, v0

    move/from16 v0, v44

    int-to-float v6, v0

    move/from16 v0, v21

    int-to-float v7, v0

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 437
    .local v19, "cf2Fpv":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isLog:Z

    if-eqz v4, :cond_14

    .line 438
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u8bc6\u522b\u7ed3\u679cFPV\u5750\u6807\u8fd8\u539f\u5230\u5c4f\u5e55\u5750\u6807=  --- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 439
    :cond_14
    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->classfier:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->onResult(FFFFZI)V

    .line 451
    .end local v19    # "cf2Fpv":Landroid/graphics/RectF;
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isTouch:Z

    .line 452
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isFirst:Z

    .line 453
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isRev:Z

    .line 454
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->isFirstWaiting:Z

    .line 456
    .end local v9    # "bFound":Z
    .end local v21    # "h":I
    .end local v22    # "isDianXuan":I
    .end local v35    # "scaleFrameX":F
    .end local v36    # "scaleFrameY":F
    .end local v37    # "targetH":I
    .end local v40    # "targetW":I
    .end local v41    # "targetX":I
    .end local v42    # "targetY":I
    .end local v44    # "w":I
    .end local v45    # "x":I
    .end local v46    # "x1":I
    .end local v47    # "x2":I
    .end local v48    # "y":I
    .end local v49    # "y1":I
    .end local v50    # "y2":I
    :cond_15
    return-void

    .line 338
    .restart local v17    # "bFound":Z
    .restart local v21    # "h":I
    .restart local v22    # "isDianXuan":I
    .restart local v30    # "roiRect":Landroid/graphics/RectF;
    .restart local v35    # "scaleFrameX":F
    .restart local v36    # "scaleFrameY":F
    .restart local v37    # "targetH":I
    .restart local v40    # "targetW":I
    .restart local v41    # "targetX":I
    .restart local v42    # "targetY":I
    .restart local v44    # "w":I
    .restart local v45    # "x":I
    .restart local v46    # "x1":I
    .restart local v47    # "x2":I
    .restart local v48    # "y":I
    .restart local v49    # "y1":I
    .restart local v50    # "y2":I
    :catch_0
    move-exception v20

    .line 339
    .local v20, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roiRect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    .end local v17    # "bFound":Z
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v30    # "roiRect":Landroid/graphics/RectF;
    .restart local v9    # "bFound":Z
    :cond_16
    if-nez v22, :cond_17

    .line 445
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectW:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectH:I

    int-to-float v14, v4

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->onResult2(FFFFZI)V

    goto :goto_2

    .line 447
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectX:I

    add-int/lit8 v4, v4, -0x32

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->rectY:I

    add-int/lit8 v4, v4, -0x32

    int-to-float v12, v4

    const/high16 v13, 0x42c80000    # 100.0f

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->onResult2(FFFFZI)V

    goto :goto_2

    .line 338
    .end local v9    # "bFound":Z
    .restart local v17    # "bFound":Z
    .restart local v31    # "roiRect":Landroid/graphics/RectF;
    :catch_1
    move-exception v20

    move-object/from16 v30, v31

    .end local v31    # "roiRect":Landroid/graphics/RectF;
    .restart local v30    # "roiRect":Landroid/graphics/RectF;
    goto :goto_3

    .end local v30    # "roiRect":Landroid/graphics/RectF;
    :cond_18
    move/from16 v9, v17

    .end local v17    # "bFound":Z
    .restart local v9    # "bFound":Z
    goto/16 :goto_1
.end method
