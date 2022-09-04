.class public Lcom/fimi/app/x8s/widget/X8MainElectricView;
.super Landroid/view/View;
.source "X8MainElectricView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8MainElectricView$State;
    }
.end annotation


# instance fields
.field private hightElectric:I

.field private lowElectric:I

.field private mPaint:Landroid/graphics/Paint;

.field private mState:Lcom/fimi/app/x8s/widget/X8MainElectricView$State;

.field private middleElectric:I

.field private mostlowElectric:I

.field private percent:I

.field v:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v1, 0x64

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    .line 21
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mostlowElectric:I

    .line 22
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->lowElectric:I

    .line 23
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->middleElectric:I

    .line 24
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->hightElectric:I

    .line 32
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/R$styleable;->X8MainElectricPower:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainElectricPower_lowElectric:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->lowElectric:I

    .line 34
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainElectricPower_middleElectric:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->middleElectric:I

    .line 35
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainElectricPower_hightElectric:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->hightElectric:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_battery_most_low:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mostlowElectric:I

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public drawType1(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v13, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v11, 0x44f00000    # 1920.0f

    const/high16 v10, 0x44cb0000    # 1624.0f

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "rightStart":F
    const/4 v3, 0x0

    .line 168
    .local v3, "rightEnd":F
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    mul-float/2addr v0, v10

    div-float v1, v0, v11

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    .end local v1    # "rightStart":F
    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    div-float v3, v0, v11

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    .end local v3    # "rightEnd":F
    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v10

    div-float/2addr v4, v11

    sub-float v1, v0, v4

    .line 170
    .restart local v1    # "rightStart":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    div-float/2addr v0, v11

    add-float v3, v1, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mostlowElectric:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    mul-float/2addr v0, v10

    div-float v6, v0, v11

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    mul-float/2addr v0, v10

    div-float v1, v0, v11

    .line 175
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 176
    .restart local v3    # "rightEnd":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 179
    const v0, 0x3e19999a    # 0.15f

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    div-float v1, v0, v11

    .line 180
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 181
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    div-float/2addr v0, v11

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float v9, v0, v4

    .line 186
    .local v9, "maxStart":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->v:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    div-float v1, v0, v11

    .line 187
    cmpl-float v0, v1, v9

    if-lez v0, :cond_0

    .line 188
    move v1, v9

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 191
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 192
    return-void
.end method

.method public drawType2(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v11, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v9, 0x44f00000    # 1920.0f

    const/high16 v8, 0x44cb0000    # 1624.0f

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "rightStart":F
    const/4 v3, 0x0

    .line 139
    .local v3, "rightEnd":F
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    mul-float/2addr v0, v8

    div-float v1, v0, v9

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    .end local v1    # "rightStart":F
    int-to-float v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v8

    div-float v3, v0, v9

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    .end local v3    # "rightEnd":F
    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mostlowElectric:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    mul-float/2addr v0, v8

    div-float v4, v0, v9

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    mul-float/2addr v0, v8

    div-float v1, v0, v9

    .line 144
    .restart local v1    # "rightStart":F
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 145
    .restart local v3    # "rightEnd":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 148
    const v0, 0x3e19999a    # 0.15f

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v8

    div-float v1, v0, v9

    .line 149
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 154
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v8

    div-float/2addr v0, v9

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float v7, v0, v4

    .line 155
    .local v7, "maxStart":F
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->v:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v8

    div-float v1, v0, v9

    .line 156
    cmpl-float v0, v1, v7

    if-lez v0, :cond_0

    .line 157
    move v1, v7

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 160
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    return-void
.end method

.method public drawType3(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v6, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x44f00000    # 1920.0f

    const/high16 v8, 0x44cb0000    # 1624.0f

    const/4 v1, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, "rightStart":F
    const/4 v5, 0x0

    .line 121
    .local v5, "rightEnd":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mostlowElectric:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    mul-float/2addr v0, v8

    div-float v3, v0, v9

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    .end local v3    # "rightStart":F
    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    .end local v5    # "rightEnd":F
    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    mul-float/2addr v0, v8

    div-float v3, v0, v9

    .line 124
    .restart local v3    # "rightStart":F
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v5, v3, v0

    .line 125
    .restart local v5    # "rightEnd":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->lowElectric:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    move v3, v5

    .line 130
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v8

    div-float v5, v0, v9

    .line 131
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method public drawType4(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const v12, 0x3dcccccd    # 0.1f

    const/high16 v11, 0x44f00000    # 1920.0f

    const/high16 v10, 0x44cb0000    # 1624.0f

    const/4 v2, 0x0

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "rightStart":F
    const/4 v3, 0x0

    .line 93
    .local v3, "rightEnd":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->middleElectric:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    const/4 v1, 0x0

    .line 95
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    int-to-float v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    div-float v3, v0, v11

    .line 96
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mostlowElectric:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    mul-float/2addr v0, v10

    div-float v7, v0, v11

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v2

    move v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    mul-float/2addr v0, v10

    div-float v1, v0, v11

    .line 101
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->lowElectric:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    move v1, v3

    .line 107
    const v0, 0x3e19999a    # 0.15f

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    div-float v3, v0, v11

    .line 108
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    move v1, v3

    .line 110
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLowPowerValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->v:F

    .line 50
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->v:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    const/16 v2, 0x32

    if-gt v0, v2, :cond_4

    .line 57
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    int-to-float v0, v0

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->v:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 58
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->drawType2(Landroid/graphics/Canvas;)V

    .line 73
    :goto_1
    return-void

    .line 53
    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->v:F

    goto :goto_0

    .line 60
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_2

    .line 61
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->drawType4(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 62
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 63
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->drawType3(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mostlowElectric:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x44cb0000    # 1624.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x44f00000    # 1920.0f

    div-float v3, v0, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->drawType1(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public setPercent(I)V
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    if-ne v0, p1, :cond_0

    .line 81
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->v:F

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLowPowerValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8MainElectricView;->percent:I

    .line 86
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->invalidate()V

    goto :goto_0
.end method
