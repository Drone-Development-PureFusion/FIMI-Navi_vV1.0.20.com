.class public Lcom/fimi/widget/DownRoundProgress;
.super Landroid/view/View;
.source "DownRoundProgress.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private digitalEnbale:Z

.field private mBound:Landroid/graphics/Rect;

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private roundWidthPlan:F

.field private style:I

.field private final textColor:I

.field private textIsDisplayable:Z

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/widget/DownRoundProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/widget/DownRoundProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/high16 v1, 0x40900000    # 4.5f

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->roundWidthPlan:F

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/fimi/widget/DownRoundProgress;->mBound:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p0}, Lcom/fimi/widget/DownRoundProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/sdk/R$color;->dialog_item_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->textColor:I

    .line 82
    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p1, v1}, Lcom/fimi/widget/DownRoundProgress;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->textSize:I

    .line 85
    sget-object v1, Lcom/fimi/sdk/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/sdk/R$styleable;->RoundProgressBar_roundColor:I

    const/high16 v2, -0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->roundColor:I

    .line 89
    sget v1, Lcom/fimi/sdk/R$styleable;->RoundProgressBar_roundProgressColor:I

    const v2, -0xff0100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->roundProgressColor:I

    .line 90
    sget v1, Lcom/fimi/sdk/R$styleable;->RoundProgressBar_roundWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->roundWidth:F

    .line 91
    sget v1, Lcom/fimi/sdk/R$styleable;->RoundProgressBar_roundProgressWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->roundWidthPlan:F

    .line 93
    sget v1, Lcom/fimi/sdk/R$styleable;->RoundProgressBar_max:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->max:I

    .line 94
    sget v1, Lcom/fimi/sdk/R$styleable;->RoundProgressBar_textIsDisplayable:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/widget/DownRoundProgress;->textIsDisplayable:Z

    .line 95
    sget v1, Lcom/fimi/sdk/R$styleable;->RoundProgressBar_style:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/widget/DownRoundProgress;->style:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 230
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public enbaleDrawDigital(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/fimi/widget/DownRoundProgress;->digitalEnbale:Z

    .line 155
    return-void
.end method

.method public getCricleColor()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->roundWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {p0}, Lcom/fimi/widget/DownRoundProgress;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 109
    .local v6, "centre":I
    int-to-float v0, v6

    iget v2, p0, Lcom/fimi/widget/DownRoundProgress;->roundWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v7, v0

    .line 110
    .local v7, "radius":I
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/widget/DownRoundProgress;->roundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/widget/DownRoundProgress;->roundWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    int-to-float v0, v6

    int-to-float v2, v6

    int-to-float v3, v7

    iget-object v4, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/widget/DownRoundProgress;->roundWidthPlan:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/widget/DownRoundProgress;->roundProgressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v6, v7

    int-to-float v0, v0

    sub-int v2, v6, v7

    int-to-float v2, v2

    add-int v3, v6, v7

    int-to-float v3, v3

    add-int v4, v6, v7

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 127
    .local v1, "oval":Landroid/graphics/RectF;
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->style:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/fimi/widget/DownRoundProgress;->digitalEnbale:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fimi/widget/DownRoundProgress;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/widget/DownRoundProgress;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 145
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/widget/DownRoundProgress;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/fimi/widget/DownRoundProgress;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 147
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/fimi/widget/DownRoundProgress;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v9, v0, v2

    .line 148
    .local v9, "startY":F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/fimi/widget/DownRoundProgress;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v8, v0, v2

    .line 149
    .local v8, "startX":F
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v8, v9, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 151
    .end local v8    # "startX":F
    .end local v9    # "startY":F
    .end local v10    # "text":Ljava/lang/String;
    :cond_1
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    const/high16 v2, 0x43870000    # 270.0f

    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/fimi/widget/DownRoundProgress;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->progress:I

    if-eqz v0, :cond_0

    .line 136
    const/high16 v2, 0x43870000    # 270.0f

    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/fimi/widget/DownRoundProgress;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fimi/widget/DownRoundProgress;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCricleColor(I)V
    .locals 0
    .param p1, "cricleColor"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/fimi/widget/DownRoundProgress;->roundColor:I

    .line 209
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0
    .param p1, "cricleProgressColor"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/fimi/widget/DownRoundProgress;->roundProgressColor:I

    .line 217
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 167
    monitor-enter p0

    if-gez p1, :cond_0

    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/fimi/widget/DownRoundProgress;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 189
    monitor-enter p0

    if-gez p1, :cond_0

    .line 190
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->max:I

    if-le p1, v0, :cond_1

    .line 193
    iget p1, p0, Lcom/fimi/widget/DownRoundProgress;->max:I

    .line 195
    :cond_1
    iget v0, p0, Lcom/fimi/widget/DownRoundProgress;->max:I

    if-gt p1, v0, :cond_2

    .line 196
    iput p1, p0, Lcom/fimi/widget/DownRoundProgress;->progress:I

    .line 197
    invoke-virtual {p0}, Lcom/fimi/widget/DownRoundProgress;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setProgressTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/fimi/widget/DownRoundProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/fimi/widget/DownRoundProgress;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/fimi/widget/DownRoundProgress;->textSize:I

    .line 236
    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .param p1, "roundWidth"    # F

    .prologue
    .line 226
    iput p1, p0, Lcom/fimi/widget/DownRoundProgress;->roundWidth:F

    .line 227
    return-void
.end method
