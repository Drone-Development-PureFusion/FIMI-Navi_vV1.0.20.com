.class public Lcom/fimi/app/x8s/widget/X8CustomChartView;
.super Landroid/view/View;
.source "X8CustomChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;
    }
.end annotation


# instance fields
.field private MAX_VALUE:D

.field private MIN_VALUE:D

.field final TAG:Ljava/lang/String;

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private bitmapPaint:Landroid/graphics/Paint;

.field private curValue:D

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isEnable:Z

.field private isValueChanged:Z

.field private label:[I

.field private lastData:F

.field private listener:Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;

.field onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private paintCurve:Landroid/graphics/Paint;

.field private verticalMinDistance:I

.field private xPoint:I

.field private xScale:I

.field private yPoint:I

.field private yScale:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "DDLog"

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->TAG:Ljava/lang/String;

    .line 29
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->verticalMinDistance:I

    .line 48
    iput-wide v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    .line 49
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MAX_VALUE:D

    .line 50
    iput-wide v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MIN_VALUE:D

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->isValueChanged:Z

    .line 207
    new-instance v0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;-><init>(Lcom/fimi/app/x8s/widget/X8CustomChartView;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 63
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->initData(Landroid/content/Context;)V

    .line 64
    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string v0, "DDLog"

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->TAG:Ljava/lang/String;

    .line 29
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->verticalMinDistance:I

    .line 48
    iput-wide v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    .line 49
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MAX_VALUE:D

    .line 50
    iput-wide v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MIN_VALUE:D

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->isValueChanged:Z

    .line 207
    new-instance v0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;-><init>(Lcom/fimi/app/x8s/widget/X8CustomChartView;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 58
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->initData(Landroid/content/Context;)V

    .line 59
    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8CustomChartView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->isEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8CustomChartView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->verticalMinDistance:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/widget/X8CustomChartView;D)D
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomChartView;
    .param p1, "x1"    # D

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MAX_VALUE:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MIN_VALUE:D

    return-wide v0
.end method

.method private drawCurveBottom(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 161
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 162
    .local v1, "path":Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_2

    .line 163
    if-nez v0, :cond_1

    .line 164
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xPoint:I

    int-to-float v3, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getBottomY(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 169
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xPoint:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xScale:I

    mul-int/2addr v3, v0

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getBottomY(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xPoint:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xScale:I

    mul-int/2addr v3, v0

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getBottomY(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method private drawCurveTop(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 142
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 143
    .local v1, "path":Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_2

    .line 144
    if-nez v0, :cond_1

    .line 145
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xPoint:I

    int-to-float v3, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getTopY(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 150
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xPoint:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xScale:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getTopY(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xPoint:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xScale:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getTopY(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 154
    return-void
.end method

.method private getBottomY(I)F
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 188
    int-to-float v1, p1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->lastData:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 189
    .local v0, "a":F
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->yPoint:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->yScale:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getTopY(I)F
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 179
    int-to-float v1, p1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->lastData:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 180
    .local v0, "a":F
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->yPoint:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->yScale:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    return v1
.end method

.method private initData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 68
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->gestureDetector:Landroid/view/GestureDetector;

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->bitmapPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 73
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_fc_all_setting_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v0, Landroid/graphics/CornerPathEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 77
    .local v0, "pathEffect":Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 79
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_exp_setting:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 80
    return-void
.end method


# virtual methods
.method public getCurValue()D
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    return-wide v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->isEnable:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->drawCurveTop(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->paintCurve:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->drawCurveBottom(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 121
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xPoint:I

    .line 122
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->yPoint:I

    .line 124
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->xScale:I

    .line 125
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->yScale:I

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 128
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->listener:Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->isValueChanged:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 196
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->listener:Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getId()I

    move-result v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    invoke-interface {v0, v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;->onFingerUp(ID)V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->isValueChanged:Z

    .line 200
    :cond_0
    return v4
.end method

.method public refreshView(Z)V
    .locals 12
    .param p1, "needResponse"    # Z

    .prologue
    .line 103
    iget-wide v4, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    iget-wide v6, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MAX_VALUE:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MAX_VALUE:D

    iput-wide v4, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    .line 104
    :cond_0
    iget-wide v4, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    iget-wide v6, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MIN_VALUE:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    iget-wide v4, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MIN_VALUE:D

    iput-wide v4, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    .line 105
    :cond_1
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    iget-wide v8, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MAX_VALUE:D

    iget-wide v10, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->MIN_VALUE:D

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 106
    .local v0, "value":D
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 107
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->label:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget v2, v4, v3

    .line 108
    .local v2, "x":I
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    int-to-double v8, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "x":I
    :cond_2
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->dataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->lastData:F

    .line 111
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->invalidate()V

    .line 112
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->listener:Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;

    if-eqz v3, :cond_3

    .line 113
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->isValueChanged:Z

    .line 114
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->listener:Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getId()I

    move-result v4

    iget-wide v6, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    invoke-interface {v3, v4, v6, v7}, Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;->onSeekChanged(ID)V

    .line 116
    :cond_3
    return-void
.end method

.method public setCurValue(D)V
    .locals 1
    .param p1, "curValue"    # D

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->curValue:D

    .line 93
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->isEnable:Z

    .line 289
    return-void
.end method

.method public setOnSeekChangeListener(Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView;->listener:Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;

    .line 84
    return-void
.end method
