.class public Lcom/fimi/app/x8s/widget/X8FollowSpeedView;
.super Landroid/view/View;
.source "X8FollowSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;
    }
.end annotation


# instance fields
.field private cursorColor:I

.field private cursorH:I

.field private cursorW:I

.field private isClick:Z

.field private isInit:Z

.field private isRight:Z

.field private isSet:Z

.field private lineBgColor:I

.field private lineH:I

.field private listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private panding:I

.field private pos:F

.field private progessColor:I

.field private rectF:Landroid/graphics/RectF;

.field private s:I

.field private thumW:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_bg:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineBgColor:I

    .line 24
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_progess:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->progessColor:I

    .line 25
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_cursor:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorColor:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->initView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_bg:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineBgColor:I

    .line 24
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_progess:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->progessColor:I

    .line 25
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_cursor:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorColor:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 55
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->initView(Landroid/content/Context;)V

    .line 56
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
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_bg:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineBgColor:I

    .line 24
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_progess:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->progessColor:I

    .line 25
    sget v0, Lcom/fimi/app/x8s/R$color;->x8_follow_speed_line_cursor:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorColor:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->initView(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private calculProgress(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 145
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 146
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 147
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    sub-int/2addr v0, v1

    int-to-float p1, v0

    .line 150
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 151
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->pos:F

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->postInvalidate()V

    .line 160
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 154
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    add-int/lit8 v0, v0, 0x0

    int-to-float p1, v0

    .line 156
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 157
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->pos:F

    goto :goto_0
.end method

.method private setInitSpeed(II)V
    .locals 3
    .param p1, "s"    # I
    .param p2, "v"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "x":F
    if-ltz p1, :cond_0

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 242
    :goto_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 243
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->pos:F

    .line 244
    return-void

    .line 239
    :cond_0
    neg-int p1, p1

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    goto :goto_0
.end method

.method private setSpeedByMeasure(II)V
    .locals 1
    .param p1, "s"    # I
    .param p2, "v"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->s:I

    .line 229
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->v:I

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isSet:Z

    .line 231
    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$dimen;->x8_follow_speed_line_h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineH:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$dimen;->x8_follow_speed_cursor_w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorW:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$dimen;->x8_follow_speed_cursor_h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorH:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$dimen;->x8_follow_speed_thum_w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->thumW:I

    .line 70
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->thumW:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    .line 71
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x40400000    # 3.0f

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    .line 77
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->getHeight()I

    move-result v0

    .line 78
    .local v0, "h":I
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    if-lez v1, :cond_2

    .line 79
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isInit:Z

    if-nez v1, :cond_0

    .line 80
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->s:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->v:I

    invoke-direct {p0, v1, v2}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setInitSpeed(II)V

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isInit:Z

    .line 84
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    .line 85
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineBgColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 88
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    if-eqz v1, :cond_3

    .line 89
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->pos:F

    add-float/2addr v4, v5

    div-int/lit8 v5, v0, 0x2

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->progessColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    if-eqz v1, :cond_4

    .line 99
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->thumW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorW:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorW:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    .line 107
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->cursorColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    if-eqz v1, :cond_1

    .line 110
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isSet:Z

    if-eqz v1, :cond_6

    .line 111
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->v:I

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    invoke-interface {v2, v1, v3}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;->onChange(FZ)V

    .line 112
    iput-boolean v9, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isSet:Z

    .line 117
    :cond_1
    :goto_3
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isClick:Z

    if-eqz v1, :cond_2

    .line 118
    iput-boolean v9, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isClick:Z

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;->onSendData()V

    .line 124
    :cond_2
    return-void

    .line 92
    :cond_3
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->pos:F

    sub-float/2addr v2, v3

    div-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->lineH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    goto/16 :goto_0

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->thumW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 111
    :cond_5
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->s:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->v:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    goto :goto_2

    .line 114
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->pos:F

    mul-float/2addr v2, v8

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    invoke-interface {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;->onChange(FZ)V

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 133
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->calculProgress(F)V

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;->onSendData()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setLeftClick(III)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "MAX"    # I
    .param p3, "MIN"    # I

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    if-eqz v0, :cond_2

    .line 168
    if-ge p1, p3, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 172
    :cond_0
    add-int/lit8 p1, p1, -0xa

    .line 179
    :cond_1
    :goto_0
    sub-int v0, p2, p3

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setSpeedByMeasure(II)V

    .line 180
    sub-int v0, p2, p3

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setInitSpeed(II)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isClick:Z

    .line 182
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->postInvalidate()V

    .line 184
    return-void

    .line 174
    :cond_2
    add-int/lit8 p1, p1, -0xa

    .line 175
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p2, p3

    if-le v0, v1, :cond_1

    .line 176
    sub-int v0, p2, p3

    neg-int p1, v0

    goto :goto_0
.end method

.method public setOnSpeedChangeListener(Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->listener:Lcom/fimi/app/x8s/widget/X8FollowSpeedView$OnChangeListener;

    .line 164
    return-void
.end method

.method public setRightClick(III)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "MAX"    # I
    .param p3, "MIN"    # I

    .prologue
    const/4 v1, 0x1

    .line 188
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    if-eqz v0, :cond_1

    .line 189
    add-int/lit8 p1, p1, 0xa

    .line 190
    sub-int v0, p2, p3

    if-le p1, v0, :cond_0

    .line 191
    sub-int p1, p2, p3

    .line 201
    :cond_0
    :goto_0
    sub-int v0, p2, p3

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setSpeedByMeasure(II)V

    .line 202
    sub-int v0, p2, p3

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setInitSpeed(II)V

    .line 203
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isClick:Z

    .line 204
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->postInvalidate()V

    .line 206
    return-void

    .line 195
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p3, :cond_2

    .line 197
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 199
    :cond_2
    add-int/lit8 p1, p1, 0xa

    goto :goto_0
.end method

.method public setSpeed(II)V
    .locals 4
    .param p1, "s"    # I
    .param p2, "v"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->setSpeedByMeasure(II)V

    .line 210
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isInit:Z

    if-eqz v1, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "x":F
    if-ltz p1, :cond_1

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    .line 219
    :goto_0
    int-to-float v1, p1

    mul-float/2addr v1, v3

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 220
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->w:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->panding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 222
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->pos:F

    .line 223
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->postInvalidate()V

    .line 225
    .end local v0    # "x":F
    :cond_0
    return-void

    .line 216
    .restart local v0    # "x":F
    :cond_1
    neg-int p1, p1

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8FollowSpeedView;->isRight:Z

    goto :goto_0
.end method
