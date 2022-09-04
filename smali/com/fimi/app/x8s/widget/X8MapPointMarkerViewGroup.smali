.class public Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;
.super Landroid/view/ViewGroup;
.source "X8MapPointMarkerViewGroup.java"


# instance fields
.field private defaultMagin:I

.field private isRelation:Z

.field private isSelect:Z

.field private isTopResShow:Z

.field private lintTop:I

.field private magin1:I

.field private magin2:I

.field private magin3:I

.field private paintColor:I

.field tempWidth:I

.field private textBg:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->defaultMagin:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isTopResShow:Z

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    sget-object v1, Lcom/fimi/app/x8s/R$styleable;->X8MapPointView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MapPointView_type:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    .line 49
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MapPointView_margin1:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->defaultMagin:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->dip2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin1:I

    .line 50
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MapPointView_margin2:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->defaultMagin:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->dip2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    .line 51
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MapPointView_margin3:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->defaultMagin:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->dip2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin3:I

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .end local v0    # "mTypedArray":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->black_65:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->paintColor:I

    .line 55
    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ai_follow_marker_info_bg:I

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    .line 57
    return-void
.end method

.method private measureHeight(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "height"    # I

    .prologue
    .line 429
    const/4 v1, 0x0

    .line 430
    .local v1, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 431
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 433
    .local v2, "size":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 434
    move v1, v2

    .line 442
    :cond_0
    :goto_0
    return v1

    .line 437
    :cond_1
    move v1, p2

    .line 438
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 439
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureWidth(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "width"    # I

    .prologue
    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 454
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 456
    .local v2, "size":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 457
    move v1, v2

    .line 464
    :cond_0
    :goto_0
    return v1

    .line 459
    :cond_1
    move v1, p2

    .line 460
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 461
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public calcAllHeight(I)I
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 416
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 417
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin3:I

    add-int p1, v0, v1

    .line 425
    :cond_0
    :goto_0
    return p1

    .line 418
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 419
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int/2addr p1, v0

    goto :goto_0

    .line 420
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 421
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin1:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin3:I

    add-int p1, v0, v1

    goto :goto_0

    .line 422
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 423
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin1:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int p1, v0, v1

    goto :goto_0
.end method

.method public dip2px(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 448
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 314
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 315
    .local v5, "p":Landroid/graphics/Paint;
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isSelect:Z

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->colorAccent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->paintColor:I

    .line 317
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_ai_follow_marker_info_select_bg:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    .line 323
    :goto_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->paintColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 326
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    if-ne v0, v2, :cond_3

    .line 327
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 328
    .local v8, "v1":Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 329
    .local v9, "v2":Landroid/view/View;
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 330
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 331
    .local v7, "startY":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v6, v0, v1

    .line 332
    .local v6, "endY":I
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isRelation:Z

    if-eqz v0, :cond_2

    .line 333
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_ai_follow_marker_info_select_bg:I

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 334
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->lintTop:I

    sub-int v0, v6, v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 335
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->colorAccent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->lintTop:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    .end local v6    # "endY":I
    .end local v7    # "startY":I
    .end local v8    # "v1":Landroid/view/View;
    .end local v9    # "v2":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 376
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->black_65:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->paintColor:I

    .line 320
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_ai_follow_marker_info_bg:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    goto/16 :goto_0

    .line 338
    .restart local v6    # "endY":I
    .restart local v7    # "startY":I
    .restart local v8    # "v1":Landroid/view/View;
    .restart local v9    # "v2":Landroid/view/View;
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 339
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 342
    .end local v6    # "endY":I
    .end local v7    # "startY":I
    .end local v8    # "v1":Landroid/view/View;
    .end local v9    # "v2":Landroid/view/View;
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    if-ne v0, v4, :cond_4

    .line 343
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 344
    .restart local v8    # "v1":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 345
    .restart local v9    # "v2":Landroid/view/View;
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 346
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 347
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    .line 346
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 348
    .end local v8    # "v1":Landroid/view/View;
    .end local v9    # "v2":Landroid/view/View;
    :cond_4
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    if-ne v0, v11, :cond_6

    .line 349
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 350
    .restart local v8    # "v1":Landroid/view/View;
    invoke-virtual {p0, v12}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 351
    .restart local v9    # "v2":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 352
    .local v10, "v3":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 354
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isTopResShow:Z

    if-eqz v0, :cond_5

    .line 355
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    .line 356
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    .line 355
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 358
    :cond_5
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    .line 359
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    .line 358
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 361
    .end local v8    # "v1":Landroid/view/View;
    .end local v9    # "v2":Landroid/view/View;
    .end local v10    # "v3":Landroid/view/View;
    :cond_6
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    if-ne v0, v12, :cond_0

    .line 362
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 363
    .restart local v8    # "v1":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 364
    .restart local v9    # "v2":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 365
    .restart local v10    # "v3":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->textBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 366
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isTopResShow:Z

    if-eqz v0, :cond_7

    .line 367
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    .line 368
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    .line 367
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 370
    :cond_7
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    .line 371
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    .line 370
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual/range {p0 .. p5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->onLayoutForTyp1(ZIIII)V

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 65
    invoke-virtual/range {p0 .. p5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->onLayoutForTyp2(ZIIII)V

    goto :goto_0

    .line 66
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 67
    invoke-virtual/range {p0 .. p5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->onLayoutForTyp3(ZIIII)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->onLayoutForTyp4(ZIIII)V

    goto :goto_0
.end method

.method public onLayoutForTyp1(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 252
    const/4 v3, 0x0

    .line 253
    .local v3, "countH":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildCount()I

    move-result v14

    if-ge v7, v14, :cond_7

    .line 254
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 255
    .local v2, "child":Landroid/view/View;
    const/4 v8, 0x0

    .line 256
    .local v8, "left":I
    const/4 v12, 0x0

    .line 257
    .local v12, "top":I
    const/4 v9, 0x0

    .line 258
    .local v9, "right":I
    const/4 v1, 0x0

    .line 259
    .local v1, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 260
    .local v13, "w":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 261
    .local v6, "h":I
    if-nez v7, :cond_2

    .line 262
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v14, v13, :cond_1

    .line 263
    add-int v9, v8, v13

    .line 264
    add-int v1, v12, v6

    .line 270
    :goto_1
    move v3, v1

    .line 307
    :cond_0
    :goto_2
    invoke-virtual {v2, v8, v12, v9, v1}, Landroid/view/View;->layout(IIII)V

    .line 253
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 266
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v14, v13

    div-int/lit8 v8, v14, 0x2

    .line 267
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v14, v13

    div-int/lit8 v9, v14, 0x2

    .line 268
    add-int v1, v12, v6

    goto :goto_1

    .line 271
    :cond_2
    const/4 v14, 0x1

    if-ne v7, v14, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v14, v13, :cond_3

    .line 273
    add-int v9, v8, v13

    .line 274
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int v12, v3, v14

    .line 275
    add-int v1, v12, v6

    .line 282
    :goto_3
    move v3, v1

    goto :goto_2

    .line 277
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v14, v13

    div-int/lit8 v8, v14, 0x2

    .line 278
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v14, v13

    div-int/lit8 v9, v14, 0x2

    .line 279
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int v12, v3, v14

    .line 280
    add-int v1, v12, v6

    goto :goto_3

    .line 283
    :cond_4
    const/4 v14, 0x2

    if-ne v7, v14, :cond_5

    .line 284
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 285
    .local v10, "tempViw":Landroid/view/View;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v14, v13

    div-int/lit8 v8, v14, 0x2

    .line 286
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v14, v13

    div-int/lit8 v9, v14, 0x2

    .line 287
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 288
    .local v11, "tmeph":I
    int-to-float v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    int-to-float v0, v11

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    int-to-float v0, v6

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    float-to-int v12, v14

    .line 289
    int-to-float v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    int-to-float v0, v11

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    int-to-float v0, v6

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v1, v14

    .line 291
    int-to-float v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    int-to-float v0, v11

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v4, v14, v15

    .line 292
    .local v4, "d":F
    move v5, v4

    .line 293
    .local v5, "dd":F
    move-object/from16 v0, p0

    iput v12, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->lintTop:I

    goto/16 :goto_2

    .line 294
    .end local v4    # "d":F
    .end local v5    # "dd":F
    .end local v10    # "tempViw":Landroid/view/View;
    .end local v11    # "tmeph":I
    :cond_5
    const/4 v14, 0x3

    if-ne v7, v14, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v14, v13, :cond_6

    .line 296
    add-int v9, v8, v13

    .line 297
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin3:I

    add-int v12, v3, v14

    .line 298
    add-int v1, v12, v6

    .line 305
    :goto_4
    move v3, v1

    goto/16 :goto_2

    .line 300
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v14, v13

    div-int/lit8 v8, v14, 0x2

    .line 301
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v14, v13

    div-int/lit8 v9, v14, 0x2

    .line 302
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin3:I

    add-int v12, v3, v14

    .line 303
    add-int v1, v12, v6

    goto :goto_4

    .line 309
    .end local v1    # "bottom":I
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "h":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v12    # "top":I
    .end local v13    # "w":I
    :cond_7
    return-void
.end method

.method public onLayoutForTyp2(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "countH":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_5

    .line 206
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "child":Landroid/view/View;
    const/4 v6, 0x0

    .line 208
    .local v6, "left":I
    const/4 v10, 0x0

    .line 209
    .local v10, "top":I
    const/4 v7, 0x0

    .line 210
    .local v7, "right":I
    const/4 v0, 0x0

    .line 211
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 212
    .local v11, "w":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 213
    .local v4, "h":I
    if-nez v5, :cond_2

    .line 214
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_1

    .line 215
    add-int v7, v6, v11

    .line 216
    add-int v0, v10, v4

    .line 222
    :goto_1
    move v2, v0

    .line 247
    :cond_0
    :goto_2
    invoke-virtual {v1, v6, v10, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 205
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 219
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 220
    add-int v0, v10, v4

    goto :goto_1

    .line 223
    :cond_2
    const/4 v12, 0x1

    if-ne v5, v12, :cond_4

    .line 224
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_3

    .line 225
    add-int v7, v6, v11

    .line 226
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int v10, v2, v12

    .line 227
    add-int v0, v10, v4

    .line 234
    :goto_3
    move v2, v0

    goto :goto_2

    .line 229
    :cond_3
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 230
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 231
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int v10, v2, v12

    .line 232
    add-int v0, v10, v4

    goto :goto_3

    .line 235
    :cond_4
    const/4 v12, 0x2

    if-ne v5, v12, :cond_0

    .line 236
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 237
    .local v8, "tempViw":Landroid/view/View;
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 238
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 239
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 240
    .local v9, "tmeph":I
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v10, v12

    .line 241
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v0, v12

    .line 243
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v3, v12, v13

    .line 244
    .local v3, "d":F
    goto :goto_2

    .line 249
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "d":F
    .end local v4    # "h":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "tempViw":Landroid/view/View;
    .end local v9    # "tmeph":I
    .end local v10    # "top":I
    .end local v11    # "w":I
    :cond_5
    return-void
.end method

.method public onLayoutForTyp3(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "countH":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_9

    .line 135
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "child":Landroid/view/View;
    const/4 v6, 0x0

    .line 137
    .local v6, "left":I
    const/4 v10, 0x0

    .line 138
    .local v10, "top":I
    const/4 v7, 0x0

    .line 139
    .local v7, "right":I
    const/4 v0, 0x0

    .line 140
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 141
    .local v11, "w":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 142
    .local v4, "h":I
    if-nez v5, :cond_2

    .line 143
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_1

    .line 144
    add-int v7, v6, v11

    .line 145
    add-int v0, v10, v4

    .line 151
    :goto_1
    move v2, v0

    .line 199
    :cond_0
    :goto_2
    invoke-virtual {v1, v6, v10, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 148
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 149
    add-int v0, v10, v4

    goto :goto_1

    .line 152
    :cond_2
    const/4 v12, 0x1

    if-ne v5, v12, :cond_4

    .line 153
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_3

    .line 154
    add-int v7, v6, v11

    .line 155
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin1:I

    add-int v10, v2, v12

    .line 156
    add-int v0, v10, v4

    .line 163
    :goto_3
    move v2, v0

    goto :goto_2

    .line 158
    :cond_3
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 159
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 160
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin1:I

    add-int v10, v2, v12

    .line 161
    add-int v0, v10, v4

    goto :goto_3

    .line 164
    :cond_4
    const/4 v12, 0x2

    if-ne v5, v12, :cond_6

    .line 165
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_5

    .line 166
    add-int v7, v6, v11

    .line 167
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int v10, v2, v12

    .line 168
    add-int v0, v10, v4

    .line 175
    :goto_4
    move v2, v0

    goto :goto_2

    .line 170
    :cond_5
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 171
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 172
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int v10, v2, v12

    .line 173
    add-int v0, v10, v4

    goto :goto_4

    .line 176
    :cond_6
    const/4 v12, 0x3

    if-ne v5, v12, :cond_7

    .line 177
    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 178
    .local v8, "tempViw":Landroid/view/View;
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 179
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 180
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 181
    .local v9, "tmeph":I
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v10, v12

    .line 182
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v0, v12

    .line 184
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v3, v12, v13

    .line 186
    .local v3, "d":F
    goto/16 :goto_2

    .end local v3    # "d":F
    .end local v8    # "tempViw":Landroid/view/View;
    .end local v9    # "tmeph":I
    :cond_7
    const/4 v12, 0x4

    if-ne v5, v12, :cond_0

    .line 187
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_8

    .line 188
    add-int v7, v6, v11

    .line 189
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin3:I

    add-int v10, v2, v12

    .line 190
    add-int v0, v10, v4

    .line 197
    :goto_5
    move v2, v0

    goto/16 :goto_2

    .line 192
    :cond_8
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 193
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 194
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin3:I

    add-int v10, v2, v12

    .line 195
    add-int v0, v10, v4

    goto :goto_5

    .line 201
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "h":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v10    # "top":I
    .end local v11    # "w":I
    :cond_9
    return-void
.end method

.method public onLayoutForTyp4(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "countH":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_7

    .line 76
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "child":Landroid/view/View;
    const/4 v6, 0x0

    .line 78
    .local v6, "left":I
    const/4 v10, 0x0

    .line 79
    .local v10, "top":I
    const/4 v7, 0x0

    .line 80
    .local v7, "right":I
    const/4 v0, 0x0

    .line 81
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 82
    .local v11, "w":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 83
    .local v4, "h":I
    if-nez v5, :cond_2

    .line 84
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_1

    .line 85
    add-int v7, v6, v11

    .line 86
    add-int v0, v10, v4

    .line 92
    :goto_1
    move v2, v0

    .line 128
    :cond_0
    :goto_2
    invoke-virtual {v1, v6, v10, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 75
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 89
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 90
    add-int v0, v10, v4

    goto :goto_1

    .line 93
    :cond_2
    const/4 v12, 0x1

    if-ne v5, v12, :cond_4

    .line 94
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_3

    .line 95
    add-int v7, v6, v11

    .line 96
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin1:I

    add-int v10, v2, v12

    .line 97
    add-int v0, v10, v4

    .line 104
    :goto_3
    move v2, v0

    goto :goto_2

    .line 99
    :cond_3
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 100
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 101
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin1:I

    add-int v10, v2, v12

    .line 102
    add-int v0, v10, v4

    goto :goto_3

    .line 105
    :cond_4
    const/4 v12, 0x2

    if-ne v5, v12, :cond_6

    .line 106
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-ne v12, v11, :cond_5

    .line 107
    add-int v7, v6, v11

    .line 108
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int v10, v2, v12

    .line 109
    add-int v0, v10, v4

    .line 116
    :goto_4
    move v2, v0

    goto :goto_2

    .line 111
    :cond_5
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 112
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 113
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->magin2:I

    add-int v10, v2, v12

    .line 114
    add-int v0, v10, v4

    goto :goto_4

    .line 117
    :cond_6
    const/4 v12, 0x3

    if-ne v5, v12, :cond_0

    .line 118
    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 119
    .local v8, "tempViw":Landroid/view/View;
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v6, v12, 0x2

    .line 120
    iget v12, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 121
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 122
    .local v9, "tmeph":I
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v10, v12

    .line 123
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v0, v12

    .line 125
    int-to-float v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v9

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v3, v12, v13

    .line 126
    .local v3, "d":F
    goto/16 :goto_2

    .line 130
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "d":F
    .end local v4    # "h":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "tempViw":Landroid/view/View;
    .end local v9    # "tmeph":I
    .end local v10    # "top":I
    .end local v11    # "w":I
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 383
    const/4 v6, 0x0

    .line 384
    .local v6, "width":I
    const/4 v3, 0x0

    .line 385
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildCount()I

    move-result v1

    .line 386
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_6

    .line 387
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, "childAt":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->measureChild(Landroid/view/View;II)V

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 390
    .local v5, "w":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 392
    .local v2, "h":I
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    if-ne v7, v9, :cond_3

    .line 393
    :cond_0
    if-eq v4, v9, :cond_2

    .line 394
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-le v5, v7, :cond_1

    .line 395
    iput v5, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    .line 397
    :cond_1
    add-int/2addr v3, v2

    .line 386
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    :cond_3
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    if-eq v7, v10, :cond_4

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 400
    :cond_4
    if-eq v4, v10, :cond_2

    .line 401
    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    if-le v5, v7, :cond_5

    .line 402
    iput v5, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    .line 404
    :cond_5
    add-int/2addr v3, v2

    goto :goto_1

    .line 409
    .end local v0    # "childAt":Landroid/view/View;
    .end local v2    # "h":I
    .end local v5    # "w":I
    :cond_6
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->calcAllHeight(I)I

    move-result v3

    .line 410
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->tempWidth:I

    .line 411
    invoke-direct {p0, p1, v6}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->measureWidth(II)I

    move-result v7

    invoke-direct {p0, p2, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->measureHeight(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->setMeasuredDimension(II)V

    .line 412
    return-void
.end method

.method public setAngle(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 470
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 471
    .local v0, "t":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 472
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->postInvalidate()V

    .line 473
    return-void
.end method

.method public setPioValue(IFIZZ)V
    .locals 5
    .param p1, "bottomRes"    # I
    .param p2, "heightVale"    # F
    .param p3, "i"    # I
    .param p4, "select"    # Z
    .param p5, "isRelation"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 503
    invoke-static {p2, v1, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 506
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iput-boolean p4, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isSelect:Z

    .line 509
    iput-boolean p5, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isRelation:Z

    .line 510
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->postInvalidate()V

    .line 511
    return-void
.end method

.method public setPointEventNoPioValue(IIFIFZZ)V
    .locals 6
    .param p1, "topRes"    # I
    .param p2, "bottomRes"    # I
    .param p3, "heightVale"    # F
    .param p4, "i"    # I
    .param p5, "angle"    # F
    .param p6, "select"    # Z
    .param p7, "isRelation"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 534
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 535
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isTopResShow:Z

    .line 536
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    :goto_0
    invoke-static {p3, v3, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 546
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 547
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iput-boolean p6, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isSelect:Z

    .line 549
    iput-boolean p7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isRelation:Z

    .line 550
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->postInvalidate()V

    .line 551
    return-void

    .line 539
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iput-boolean v4, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isTopResShow:Z

    .line 540
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPointEventValue(IIFIFZZ)V
    .locals 6
    .param p1, "topRes"    # I
    .param p2, "bottomRes"    # I
    .param p3, "heightVale"    # F
    .param p4, "i"    # I
    .param p5, "angle"    # F
    .param p6, "select"    # Z
    .param p7, "isRelation"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 515
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isTopResShow:Z

    .line 516
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    :goto_0
    invoke-static {p3, v2, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 525
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 526
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iput-boolean p6, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isSelect:Z

    .line 529
    iput-boolean p7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isRelation:Z

    .line 530
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->postInvalidate()V

    .line 531
    return-void

    .line 519
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isTopResShow:Z

    .line 520
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setValueNoPio(IFIFZZ)V
    .locals 5
    .param p1, "bottomRes"    # I
    .param p2, "heightVale"    # F
    .param p3, "i"    # I
    .param p4, "angle"    # F
    .param p5, "select"    # Z
    .param p6, "isRelation"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 490
    invoke-static {p2, v1, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 493
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 494
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iput-boolean p5, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isSelect:Z

    .line 496
    iput-boolean p6, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isRelation:Z

    .line 497
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->postInvalidate()V

    .line 498
    return-void
.end method

.method public setValueWithPio(IFIIFZZ)V
    .locals 5
    .param p1, "bottomRes"    # I
    .param p2, "heightVale"    # F
    .param p3, "i"    # I
    .param p4, "poi"    # I
    .param p5, "angle"    # F
    .param p6, "select"    # Z
    .param p7, "isRelation"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 478
    invoke-static {p2, v1, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 481
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 482
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iput-boolean p6, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isSelect:Z

    .line 485
    iput-boolean p7, p0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->isRelation:Z

    .line 486
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->postInvalidate()V

    .line 487
    return-void
.end method
