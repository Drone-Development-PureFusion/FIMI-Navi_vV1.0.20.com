.class public Lcom/fimi/app/x8s/widget/MidView;
.super Landroid/view/View;
.source "MidView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/MidView$clipType;
    }
.end annotation


# instance fields
.field private birmapbg:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field centerX:F

.field centerY:F

.field private clean:Z

.field private endX:F

.field private endY:F

.field joyOkay:Z

.field private margin:F

.field private maxLen:F

.field private final maxValue:I

.field paint:Landroid/graphics/Paint;

.field private radius:F

.field private ringbg:Landroid/graphics/Bitmap;

.field private rtBmp:Landroid/graphics/Bitmap;

.field type:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/widget/MidView$clipType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x42480000    # 50.0f

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->radius:F

    .line 31
    const/16 v0, 0x200

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->maxValue:I

    .line 153
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/MidView;->clean:Z

    .line 193
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/MidView;->joyOkay:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x42480000    # 50.0f

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v1, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iput v1, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/fimi/app/x8s/widget/MidView;->radius:F

    .line 31
    const/16 v1, 0x200

    iput v1, p0, Lcom/fimi/app/x8s/widget/MidView;->maxValue:I

    .line 153
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/MidView;->clean:Z

    .line 193
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/MidView;->joyOkay:Z

    .line 48
    sget-object v1, Lcom/fimi/app/x8s/R$styleable;->midView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_mid_view_bg:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_samll_calibration_icon:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->ringbg:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_rc_joy_success:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->rtBmp:Landroid/graphics/Bitmap;

    .line 54
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->ringbg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/MidView;->radius:F

    .line 55
    const/high16 v1, 0x41bc0000    # 23.5f

    invoke-static {p1, v1}, Lcom/fimi/kernel/utils/AbViewUtil;->dip2px(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/MidView;->maxLen:F

    .line 56
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/fimi/kernel/utils/AbViewUtil;->dip2px(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/MidView;->margin:F

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x42480000    # 50.0f

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->radius:F

    .line 31
    const/16 v0, 0x200

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->maxValue:I

    .line 153
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/MidView;->clean:Z

    .line 193
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/MidView;->joyOkay:Z

    .line 44
    return-void
.end method

.method private clipPath(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/widget/MidView$clipType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "clips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fimi/app/x8s/widget/MidView$clipType;>;"
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_value_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fimi/app/x8s/widget/MidView$clipType;

    .line 132
    .local v10, "mType":Lcom/fimi/app/x8s/widget/MidView$clipType;
    sget-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->left:Lcom/fimi/app/x8s/widget/MidView$clipType;

    if-ne v10, v0, :cond_1

    .line 133
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->margin:F

    float-to-double v0, v0

    const/4 v2, 0x0

    iget v4, p0, Lcom/fimi/app/x8s/widget/MidView;->maxLen:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x44000000    # 512.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    double-to-float v3, v0

    .line 134
    .local v3, "endX":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    .end local v3    # "endX":F
    :cond_1
    sget-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->top:Lcom/fimi/app/x8s/widget/MidView$clipType;

    if-ne v10, v0, :cond_2

    .line 137
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->margin:F

    float-to-double v0, v0

    const/4 v2, 0x0

    iget v4, p0, Lcom/fimi/app/x8s/widget/MidView;->maxLen:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x44000000    # 512.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    double-to-float v8, v0

    .line 138
    .local v8, "endY":F
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/MidView;->canvas:Landroid/graphics/Canvas;

    iget v5, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget v6, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget v7, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget-object v9, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 140
    .end local v8    # "endY":F
    :cond_2
    sget-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->right:Lcom/fimi/app/x8s/widget/MidView$clipType;

    if-ne v10, v0, :cond_3

    .line 141
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->margin:F

    float-to-double v0, v0

    const/high16 v2, 0x44800000    # 1024.0f

    iget v4, p0, Lcom/fimi/app/x8s/widget/MidView;->maxLen:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x44000000    # 512.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    double-to-float v3, v0

    .line 142
    .restart local v3    # "endX":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 144
    .end local v3    # "endX":F
    :cond_3
    sget-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->bottom:Lcom/fimi/app/x8s/widget/MidView$clipType;

    if-ne v10, v0, :cond_0

    .line 145
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->margin:F

    float-to-double v0, v0

    const/high16 v2, 0x44800000    # 1024.0f

    iget v4, p0, Lcom/fimi/app/x8s/widget/MidView;->maxLen:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x44000000    # 512.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    double-to-float v8, v0

    .line 146
    .restart local v8    # "endY":F
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/MidView;->canvas:Landroid/graphics/Canvas;

    iget v5, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget v6, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget v7, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget-object v9, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 151
    .end local v8    # "endY":F
    .end local v10    # "mType":Lcom/fimi/app/x8s/widget/MidView$clipType;
    :cond_4
    return-void
.end method

.method private removeAll(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v0, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 98
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    return-void
.end method


# virtual methods
.method public joyFinish()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/MidView;->joyOkay:Z

    .line 197
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->invalidate()V

    .line 198
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/MidView;->canvas:Landroid/graphics/Canvas;

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 67
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/MidView;->clean:Z

    if-eqz v0, :cond_0

    .line 68
    iput-boolean v6, p0, Lcom/fimi/app/x8s/widget/MidView;->clean:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/MidView;->removeAll(Landroid/graphics/Canvas;)V

    .line 70
    new-array v0, v8, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->ringbg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/MidView;->recycle([Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->ringbg:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/MidView;->endX:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->radius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->endY:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/MidView;->radius:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/MidView;->joyOkay:Z

    if-eqz v0, :cond_1

    .line 77
    iput-boolean v6, p0, Lcom/fimi/app/x8s/widget/MidView;->joyOkay:Z

    .line 78
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/MidView;->removeAll(Landroid/graphics/Canvas;)V

    .line 79
    new-array v0, v8, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->ringbg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/MidView;->recycle([Landroid/graphics/Bitmap;)V

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->rtBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->ringbg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->rtBmp:Landroid/graphics/Bitmap;

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/MidView;->recycle([Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget v1, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/MidView;->endY:F

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget v1, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/MidView;->endX:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->type:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/MidView;->clipPath(Ljava/util/ArrayList;)V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/MidView;->ringbg:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/MidView;->endX:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->radius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->endY:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/MidView;->radius:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/MidView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 165
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 166
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 167
    .local v4, "wSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 168
    .local v5, "wSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 169
    .local v0, "hSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 171
    .local v1, "hSpecSize":I
    move v3, v5

    .line 172
    .local v3, "resultWidth":I
    move v2, v1

    .line 174
    .local v2, "resultHeight":I
    if-ne v4, v6, :cond_1

    if-ne v0, v6, :cond_1

    .line 175
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 176
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 184
    :cond_0
    :goto_0
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 185
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 186
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iput v6, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    .line 187
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iput v6, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    .line 188
    iget v6, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iput v6, p0, Lcom/fimi/app/x8s/widget/MidView;->endX:F

    .line 189
    iget v6, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iput v6, p0, Lcom/fimi/app/x8s/widget/MidView;->endY:F

    .line 190
    invoke-virtual {p0, v3, v2}, Lcom/fimi/app/x8s/widget/MidView;->setMeasuredDimension(II)V

    .line 191
    return-void

    .line 177
    :cond_1
    if-ne v4, v6, :cond_2

    .line 178
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 179
    move v2, v1

    goto :goto_0

    .line 180
    :cond_2
    if-ne v0, v6, :cond_0

    .line 181
    move v3, v5

    .line 182
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/MidView;->birmapbg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method public varargs recycle([Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 102
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 103
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->endX:F

    .line 157
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->endY:F

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/MidView;->joyOkay:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/MidView;->clean:Z

    .line 160
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->postInvalidate()V

    .line 161
    return-void
.end method

.method public setFxFy(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, 0x44000000    # 512.0f

    .line 110
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->centerX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->centerY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->margin:F

    float-to-double v0, v0

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->maxLen:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->endX:F

    .line 112
    iget v0, p0, Lcom/fimi/app/x8s/widget/MidView;->margin:F

    float-to-double v0, v0

    iget v2, p0, Lcom/fimi/app/x8s/widget/MidView;->maxLen:F

    mul-float/2addr v2, p2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/MidView;->endY:F

    .line 113
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->invalidate()V

    .line 115
    :cond_1
    return-void
.end method

.method public setType(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/widget/MidView$clipType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "typeArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fimi/app/x8s/widget/MidView$clipType;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/MidView;->type:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/MidView;->invalidate()V

    .line 126
    return-void
.end method
