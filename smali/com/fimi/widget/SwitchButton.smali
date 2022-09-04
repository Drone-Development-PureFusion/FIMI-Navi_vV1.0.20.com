.class public Lcom/fimi/widget/SwitchButton;
.super Landroid/view/View;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/widget/SwitchButton$OnSwitchListener;
    }
.end annotation


# instance fields
.field private borderColor:I

.field private borderWidth:I

.field private centerY:F

.field private defaultAnimate:Z

.field private endX:F

.field private listener:Lcom/fimi/widget/SwitchButton$OnSwitchListener;

.field private offSpotColor:I

.field private onColor:I

.field private onSpotColor:I

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private rect:Landroid/graphics/RectF;

.field private spotColor:I

.field private spotMaxX:F

.field private spotMinX:F

.field private spotSize:I

.field private spotX:F

.field private spring:Lcom/facebook/rebound/Spring;

.field springListener:Lcom/facebook/rebound/SimpleSpringListener;

.field private springSystem:Lcom/facebook/rebound/SpringSystem;

.field private startX:F

.field private toggleOn:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lcom/fimi/widget/SwitchButton;->onColor:I

    .line 46
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->borderColor:I

    .line 53
    const-string v0, "#bcbcbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->spotColor:I

    .line 57
    const-string v0, "#bcbcbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    .line 62
    const-string v0, "#ff5400"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->onSpotColor:I

    .line 71
    iput-boolean v1, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    .line 75
    iput v2, p0, Lcom/fimi/widget/SwitchButton;->borderWidth:I

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 103
    iput-boolean v2, p0, Lcom/fimi/widget/SwitchButton;->defaultAnimate:Z

    .line 289
    new-instance v0, Lcom/fimi/widget/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/fimi/widget/SwitchButton$2;-><init>(Lcom/fimi/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/fimi/widget/SwitchButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v1, p0, Lcom/fimi/widget/SwitchButton;->onColor:I

    .line 46
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->borderColor:I

    .line 53
    const-string v0, "#bcbcbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->spotColor:I

    .line 57
    const-string v0, "#bcbcbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    .line 62
    const-string v0, "#ff5400"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->onSpotColor:I

    .line 71
    iput-boolean v1, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    .line 75
    iput v2, p0, Lcom/fimi/widget/SwitchButton;->borderWidth:I

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 103
    iput-boolean v2, p0, Lcom/fimi/widget/SwitchButton;->defaultAnimate:Z

    .line 289
    new-instance v0, Lcom/fimi/widget/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/fimi/widget/SwitchButton$2;-><init>(Lcom/fimi/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/fimi/widget/SwitchButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    .line 118
    invoke-virtual {p0, p2}, Lcom/fimi/widget/SwitchButton;->setup(Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v1, p0, Lcom/fimi/widget/SwitchButton;->onColor:I

    .line 46
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->borderColor:I

    .line 53
    const-string v0, "#bcbcbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->spotColor:I

    .line 57
    const-string v0, "#bcbcbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    .line 62
    const-string v0, "#ff5400"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/SwitchButton;->onSpotColor:I

    .line 71
    iput-boolean v1, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    .line 75
    iput v2, p0, Lcom/fimi/widget/SwitchButton;->borderWidth:I

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 103
    iput-boolean v2, p0, Lcom/fimi/widget/SwitchButton;->defaultAnimate:Z

    .line 289
    new-instance v0, Lcom/fimi/widget/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/fimi/widget/SwitchButton$2;-><init>(Lcom/fimi/widget/SwitchButton;)V

    iput-object v0, p0, Lcom/fimi/widget/SwitchButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    .line 113
    invoke-virtual {p0, p2}, Lcom/fimi/widget/SwitchButton;->setup(Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/widget/SwitchButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/widget/SwitchButton;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/fimi/widget/SwitchButton;->onViewSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/widget/SwitchButton;D)V
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/SwitchButton;
    .param p1, "x1"    # D

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/fimi/widget/SwitchButton;->calculateEffect(D)V

    return-void
.end method

.method private calculateEffect(D)V
    .locals 25
    .param p1, "value"    # D

    .prologue
    .line 340
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/widget/SwitchButton;->spotMinX:F

    float-to-double v10, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/widget/SwitchButton;->spotMaxX:F

    float-to-double v12, v4

    move-wide/from16 v4, p1

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-float v15, v4

    .line 342
    .local v15, "mapToggleX":F
    move-object/from16 v0, p0

    iput v15, v0, Lcom/fimi/widget/SwitchButton;->spotX:F

    .line 344
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fimi/widget/SwitchButton;->spotSize:I

    int-to-double v12, v12

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-float v14, v4

    .line 357
    .local v14, "mapOffLineWidth":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/widget/SwitchButton;->onSpotColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    .line 358
    .local v16, "spotFB":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/widget/SwitchButton;->onSpotColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v18

    .line 359
    .local v18, "spotFR":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/widget/SwitchButton;->onSpotColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v17

    .line 361
    .local v17, "spotFG":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    .line 362
    .local v22, "spotTB":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v24

    .line 363
    .local v24, "spotTR":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v23

    .line 375
    .local v23, "spotTG":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move/from16 v0, v16

    int-to-double v10, v0

    move/from16 v0, v22

    int-to-double v12, v0

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v19, v0

    .line 377
    .local v19, "spotSB":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move/from16 v0, v18

    int-to-double v10, v0

    move/from16 v0, v24

    int-to-double v12, v0

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v21, v0

    .line 379
    .local v21, "spotSR":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move/from16 v0, v17

    int-to-double v10, v0

    move/from16 v0, v23

    int-to-double v12, v0

    invoke-static/range {v4 .. v13}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v20, v0

    .line 386
    .local v20, "spotSG":I
    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Lcom/fimi/widget/SwitchButton;->clamp(III)I

    move-result v19

    .line 387
    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v4, v5}, Lcom/fimi/widget/SwitchButton;->clamp(III)I

    move-result v21

    .line 388
    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v4, v5}, Lcom/fimi/widget/SwitchButton;->clamp(III)I

    move-result v20

    .line 392
    move/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/fimi/widget/SwitchButton;->spotColor:I

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/widget/SwitchButton;->postInvalidate()V

    .line 394
    return-void
.end method

.method private clamp(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 298
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private onViewSwitch()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fimi/widget/SwitchButton;->listener:Lcom/fimi/widget/SwitchButton$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/fimi/widget/SwitchButton;->listener:Lcom/fimi/widget/SwitchButton$OnSwitchListener;

    iget-boolean v1, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    invoke-interface {v0, p0, v1}, Lcom/fimi/widget/SwitchButton$OnSwitchListener;->onSwitch(Landroid/view/View;Z)V

    .line 209
    :cond_0
    return-void
.end method

.method private takeEffect(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 228
    if-eqz p1, :cond_1

    .line 229
    iget-object v4, p0, Lcom/fimi/widget/SwitchButton;->spring:Lcom/facebook/rebound/Spring;

    iget-boolean v5, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v4, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 235
    :goto_1
    return-void

    :cond_0
    move-wide v0, v2

    .line 229
    goto :goto_0

    .line 232
    :cond_1
    iget-object v6, p0, Lcom/fimi/widget/SwitchButton;->spring:Lcom/facebook/rebound/Spring;

    iget-boolean v4, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    if-eqz v4, :cond_2

    move-wide v4, v0

    :goto_2
    invoke-virtual {v6, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 233
    iget-boolean v4, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    if-eqz v4, :cond_3

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/fimi/widget/SwitchButton;->calculateEffect(D)V

    goto :goto_1

    :cond_2
    move-wide v4, v2

    .line 232
    goto :goto_2

    :cond_3
    move-wide v0, v2

    .line 233
    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 305
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/fimi/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/AbViewUtil;->dip2px(Landroid/content/Context;F)F

    move-result v0

    .line 308
    .local v0, "padding":F
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/fimi/widget/SwitchButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/fimi/widget/SwitchButton;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 309
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    const v3, 0x23ffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/AbViewUtil;->dip2px(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 311
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    iget v4, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    iget-object v5, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 321
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 322
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 323
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->spotX:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/widget/SwitchButton;->centerY:F

    iget v5, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/fimi/widget/SwitchButton;->spotX:F

    const v6, 0x3f8ccccd    # 1.1f

    add-float/2addr v5, v6

    iget v6, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/fimi/widget/SwitchButton;->centerY:F

    iget v7, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    iget v4, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    iget-object v5, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 328
    iget v2, p0, Lcom/fimi/widget/SwitchButton;->spotSize:I

    int-to-float v2, v2

    const v3, 0x3ee66666    # 0.45f

    mul-float v1, v2, v3

    .line 329
    .local v1, "spotR":F
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->spotX:F

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/fimi/widget/SwitchButton;->centerY:F

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/fimi/widget/SwitchButton;->spotX:F

    add-float/2addr v5, v1

    iget v6, p0, Lcom/fimi/widget/SwitchButton;->centerY:F

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 331
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->spotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 334
    return-void
.end method

.method public getToggleOn()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    return v0
.end method

.method public isAnimate()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/fimi/widget/SwitchButton;->defaultAnimate:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 129
    iget-object v0, p0, Lcom/fimi/widget/SwitchButton;->spring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/fimi/widget/SwitchButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 130
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 124
    iget-object v0, p0, Lcom/fimi/widget/SwitchButton;->spring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/fimi/widget/SwitchButton;->springListener:Lcom/facebook/rebound/SimpleSpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->removeListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 125
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
    .line 273
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 275
    invoke-virtual {p0}, Lcom/fimi/widget/SwitchButton;->getWidth()I

    move-result v1

    .line 276
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/fimi/widget/SwitchButton;->getHeight()I

    move-result v0

    .line 278
    .local v0, "height":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    .line 279
    iget v2, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    iput v2, p0, Lcom/fimi/widget/SwitchButton;->centerY:F

    .line 280
    iget v2, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    iput v2, p0, Lcom/fimi/widget/SwitchButton;->startX:F

    .line 281
    int-to-float v2, v1

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->radius:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/fimi/widget/SwitchButton;->endX:F

    .line 282
    iget v2, p0, Lcom/fimi/widget/SwitchButton;->startX:F

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->borderWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/fimi/widget/SwitchButton;->spotMinX:F

    .line 283
    iget v2, p0, Lcom/fimi/widget/SwitchButton;->endX:F

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->borderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/fimi/widget/SwitchButton;->spotMaxX:F

    .line 284
    iget v2, p0, Lcom/fimi/widget/SwitchButton;->borderWidth:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v0, v2

    iput v2, p0, Lcom/fimi/widget/SwitchButton;->spotSize:I

    .line 285
    iget-boolean v2, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/fimi/widget/SwitchButton;->spotMaxX:F

    :goto_0
    iput v2, p0, Lcom/fimi/widget/SwitchButton;->spotX:F

    .line 287
    return-void

    .line 285
    :cond_0
    iget v2, p0, Lcom/fimi/widget/SwitchButton;->spotMinX:F

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/high16 v7, -0x80000000

    .line 240
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 241
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 243
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 244
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 246
    .local v1, "heightSize":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 247
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    if-ne v3, v7, :cond_1

    .line 249
    :cond_0
    const/high16 v5, 0x42480000    # 50.0f

    .line 250
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 249
    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v4, v5

    .line 251
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 255
    :cond_1
    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_3

    .line 257
    :cond_2
    const/high16 v5, 0x41f00000    # 30.0f

    .line 258
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 257
    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v1, v5

    .line 259
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 263
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 264
    return-void
.end method

.method public onSwitch(Z)V
    .locals 1
    .param p1, "isFlag"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/widget/SwitchButton;->takeEffect(Z)V

    .line 216
    iget-boolean v0, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    invoke-virtual {p0, v0}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 218
    return-void
.end method

.method public setAnimate(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/fimi/widget/SwitchButton;->defaultAnimate:Z

    .line 416
    return-void
.end method

.method public setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V
    .locals 0
    .param p1, "onSwitchListener"    # Lcom/fimi/widget/SwitchButton$OnSwitchListener;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/fimi/widget/SwitchButton;->listener:Lcom/fimi/widget/SwitchButton$OnSwitchListener;

    .line 408
    return-void
.end method

.method public setSwitchState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fimi/widget/SwitchButton;->setSwitchState(ZZ)V

    .line 186
    return-void
.end method

.method public setSwitchState(ZZ)V
    .locals 0
    .param p1, "state"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    .line 196
    invoke-direct {p0, p2}, Lcom/fimi/widget/SwitchButton;->takeEffect(Z)V

    .line 197
    return-void
.end method

.method public setup(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 140
    iget-object v1, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    iget-object v1, p0, Lcom/fimi/widget/SwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 143
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/widget/SwitchButton;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 144
    iget-object v1, p0, Lcom/fimi/widget/SwitchButton;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/widget/SwitchButton;->spring:Lcom/facebook/rebound/Spring;

    .line 145
    iget-object v1, p0, Lcom/fimi/widget/SwitchButton;->spring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    .line 146
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 148
    new-instance v1, Lcom/fimi/widget/SwitchButton$1;

    invoke-direct {v1, p0}, Lcom/fimi/widget/SwitchButton$1;-><init>(Lcom/fimi/widget/SwitchButton;)V

    invoke-virtual {p0, v1}, Lcom/fimi/widget/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/fimi/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fimi/sdk/R$styleable;->SwitchButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/sdk/R$styleable;->SwitchButton_onColor:I

    iget v2, p0, Lcom/fimi/widget/SwitchButton;->onSpotColor:I

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/SwitchButton;->onSpotColor:I

    .line 162
    sget v1, Lcom/fimi/sdk/R$styleable;->SwitchButton_spotColor:I

    iget v2, p0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    .line 165
    sget v1, Lcom/fimi/sdk/R$styleable;->SwitchButton_onToggle:I

    iget-boolean v2, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/widget/SwitchButton;->toggleOn:Z

    .line 167
    iget v1, p0, Lcom/fimi/widget/SwitchButton;->offSpotColor:I

    iput v1, p0, Lcom/fimi/widget/SwitchButton;->spotColor:I

    .line 170
    sget v1, Lcom/fimi/sdk/R$styleable;->SwitchButton_borderWidth:I

    .line 172
    invoke-virtual {p0}, Lcom/fimi/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/fimi/widget/SwitchButton;->borderWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/AbViewUtil;->dip2px(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/SwitchButton;->borderWidth:I

    .line 173
    sget v1, Lcom/fimi/sdk/R$styleable;->SwitchButton_animate:I

    iget-boolean v2, p0, Lcom/fimi/widget/SwitchButton;->defaultAnimate:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/widget/SwitchButton;->defaultAnimate:Z

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    return-void
.end method
