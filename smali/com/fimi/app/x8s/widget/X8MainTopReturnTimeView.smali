.class public Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;
.super Landroid/view/View;
.source "X8MainTopReturnTimeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "X8TopReturnView"


# instance fields
.field private SPACING:I

.field private mBpEmpty:Landroid/graphics/Bitmap;

.field private mBpEmptySource:I

.field private mBpFull:Landroid/graphics/Bitmap;

.field private mBpFullSource:I

.field private mBpMiddle:Landroid/graphics/Bitmap;

.field private mBpMiddleSource:I

.field private mPaint:Landroid/graphics/Paint;

.field private percent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpEmptySource:I

    .line 32
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpMiddleSource:I

    .line 33
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpFullSource:I

    .line 37
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->percent:I

    .line 41
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/R$styleable;->x8_mask_image:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->x8_mask_image_empty_image:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpEmptySource:I

    .line 43
    sget v1, Lcom/fimi/app/x8s/R$styleable;->x8_mask_image_middle_image:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpMiddleSource:I

    .line 44
    sget v1, Lcom/fimi/app/x8s/R$styleable;->x8_mask_image_full_image:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpFullSource:I

    .line 45
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpEmptySource:I

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpEmptySource:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpEmpty:Landroid/graphics/Bitmap;

    .line 48
    :cond_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpMiddleSource:I

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpMiddleSource:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpMiddle:Landroid/graphics/Bitmap;

    .line 51
    :cond_1
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpFullSource:I

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpFullSource:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpFull:Landroid/graphics/Bitmap;

    .line 54
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Lcom/fimi/kernel/utils/AbViewUtil;->dip2px(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->SPACING:I

    .line 59
    return-void
.end method


# virtual methods
.method public drawPercent(Landroid/graphics/Canvas;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "percent"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 76
    const/16 v6, 0x1f

    .line 77
    .local v6, "saveFlags":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 79
    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    .line 80
    const/16 p2, 0x64

    .line 82
    :cond_0
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 83
    .local v7, "path":Landroid/graphics/Path;
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getWidth()I

    move-result v2

    rsub-int/lit8 v3, p2, 0x64

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->SPACING:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getWidth()I

    move-result v2

    rsub-int/lit8 v3, p2, 0x64

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 89
    const/16 v0, 0x32

    if-le p2, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpFull:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpMiddle:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpEmpty:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->mBpEmpty:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->percent:I

    if-lez v0, :cond_1

    .line 70
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->percent:I

    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->drawPercent(Landroid/graphics/Canvas;I)V

    .line 72
    :cond_1
    return-void
.end method

.method public setPercent(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->percent:I

    if-ne v0, p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->percent:I

    .line 106
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainTopReturnTimeView;->invalidate()V

    goto :goto_0
.end method
