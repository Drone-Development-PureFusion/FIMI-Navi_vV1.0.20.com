.class public Lcom/fimi/app/x8s/widget/X8MainPowerView;
.super Landroid/view/View;
.source "X8MainPowerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "X8PowerView"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mBpEmptySource:I

.field private mPaint:Landroid/graphics/Paint;

.field private percent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBpEmptySource:I

    .line 26
    const/16 v0, 0x43

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->percent:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBpEmptySource:I

    .line 26
    const/16 v1, 0x43

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->percent:I

    .line 35
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/R$styleable;->X8MainPower:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPower_image:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBpEmptySource:I

    .line 37
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBpEmptySource:I

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBpEmptySource:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBitmap:Landroid/graphics/Bitmap;

    .line 40
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBpEmptySource:I

    .line 26
    const/16 v0, 0x43

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->percent:I

    .line 47
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v0, v2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-static {v2, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    :cond_0
    const/16 v6, 0x1f

    .line 64
    .local v6, "saveFlags":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 65
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .local v7, "dst":Landroid/graphics/Rect;
    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 67
    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 68
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getWidth()I

    move-result v0

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 69
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getHeight()I

    move-result v0

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->percent:I

    if-nez v0, :cond_1

    .line 74
    const/high16 v8, 0x3f800000    # 1.0f

    .line 78
    .local v8, "src":F
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 80
    return-void

    .line 76
    .end local v8    # "src":F
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->percent:I

    int-to-float v0, v0

    div-float/2addr v0, v10

    const/high16 v1, 0x42aa0000    # 85.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    add-float/2addr v0, v1

    sub-float v0, v10, v0

    div-float v8, v0, v10

    .restart local v8    # "src":F
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->setMeasuredDimension(II)V

    .line 53
    return-void
.end method

.method public setPercent(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->percent:I

    if-ne v0, p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8MainPowerView;->percent:I

    .line 91
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->invalidate()V

    goto :goto_0
.end method
