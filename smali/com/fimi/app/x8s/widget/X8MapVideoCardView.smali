.class public Lcom/fimi/app/x8s/widget/X8MapVideoCardView;
.super Landroid/view/ViewGroup;
.source "X8MapVideoCardView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MapVideoCardView"


# instance fields
.field MAX_HEIGHT:I

.field MAX_WIDTH:I

.field MIN_HEIGHT:I

.field MIN_WIDTH:I

.field private indexs:[Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field padingBottom:I

.field padingLeft:I

.field private state:I

.field switchDrawingOrder:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->state:I

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    .line 31
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrder:Z

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8MapVideoCardView;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->mContext:Landroid/content/Context;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->setChildrenDrawingOrderEnabled(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->setClipChildren(Z)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->setClipToPadding(Z)V

    .line 55
    return-void
.end method

.method private performAnim(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .param p1, "viewAnim"    # Landroid/view/View;
    .param p2, "scaleView"    # Landroid/view/View;
    .param p3, "mapView"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/fimi/app/x8s/media/FimiH264Video;

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Landroid/widget/RelativeLayout;

    const-string v7, "#000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 159
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    invoke-virtual {p0, p1, v6, v7}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 160
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 161
    .local v0, "bouncer":Landroid/animation/AnimatorSet;
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, "xScaleAnimator":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x0

    .line 164
    .local v5, "yScaleAnimator":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/view/View;->setPivotX(F)V

    .line 165
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {p3, v6}, Landroid/view/View;->setPivotY(F)V

    .line 166
    const-string v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget v10, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingLeft:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {p3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 167
    new-instance v6, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;

    invoke-direct {v6, p0, p2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;-><init>(Lcom/fimi/app/x8s/widget/X8MapVideoCardView;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    const-string v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    iget v10, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingLeft:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {p3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 194
    const/4 v6, 0x2

    new-array v1, v6, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v4, v1, v6

    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 195
    .local v1, "mAnimators":[Landroid/animation/Animator;
    const/16 v2, 0x1f4

    .line 196
    .local v2, "time":I
    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 197
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 198
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 226
    .end local v0    # "bouncer":Landroid/animation/AnimatorSet;
    .end local v1    # "mAnimators":[Landroid/animation/Animator;
    .end local v2    # "time":I
    .end local v4    # "xScaleAnimator":Landroid/animation/ObjectAnimator;
    .end local v5    # "yScaleAnimator":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget v8, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    iget v9, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingLeft:I

    add-int/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    aput v8, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 204
    .local v3, "va":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;-><init>(Lcom/fimi/app/x8s/widget/X8MapVideoCardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public changSize(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 237
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 238
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    return-void
.end method

.method public changeOrderFlag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrder:Z

    if-nez v1, :cond_0

    .line 140
    iput-boolean v4, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrder:Z

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v1, v3

    .line 145
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    .line 146
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aput-object v0, v1, v4

    .line 147
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->state:I

    .line 148
    return-void

    .line 142
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrder:Z

    goto :goto_0
.end method

.method public changeSmallSize()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->setSmallDefaultSize()V

    .line 306
    :cond_0
    return-void
.end method

.method public changeSmallSize(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "b":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 283
    const/4 v0, 0x1

    .line 287
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 288
    div-int/lit8 v1, p1, 0x2

    sput v1, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    .line 289
    sput p1, Lcom/fimi/app/x8s/X8Application;->SCREEN_WIDTH:I

    .line 290
    sput p2, Lcom/fimi/app/x8s/X8Application;->SCREEN_HEIGHT:I

    .line 291
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    .line 292
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    .line 293
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit16 v1, v1, 0x780

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingBottom:I

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingLeft:I

    .line 295
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    mul-int/lit16 v1, v1, 0x150

    div-int/lit16 v1, v1, 0x780

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    .line 296
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    mul-int/lit16 v1, v1, 0xbd

    div-int/lit16 v1, v1, 0x438

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    .line 300
    :cond_1
    return-void

    .line 284
    :cond_2
    if-ne p1, p3, :cond_3

    if-eq p2, p4, :cond_0

    :cond_3
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->state:I

    if-nez v1, :cond_0

    .line 285
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disShowSmall()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 102
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->switchDrawingOrder:Z

    if-nez v1, :cond_0

    .line 103
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    move v0, p2

    .line 110
    .end local p2    # "i":I
    .local v0, "i":I
    :goto_0
    return v1

    .line 105
    .end local v0    # "i":I
    .restart local p2    # "i":I
    :cond_0
    if-nez p2, :cond_1

    .line 106
    add-int/lit8 p2, p1, -0x1

    :goto_1
    move v0, p2

    .end local p2    # "i":I
    .restart local v0    # "i":I
    move v1, p2

    .line 110
    goto :goto_0

    .line 108
    .end local v0    # "i":I
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 p2, v1, -0x1

    goto :goto_1
.end method

.method public isFullVideo()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v1, v1, v2

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/fimi/app/x8s/media/FimiH264Video;

    if-eqz v1, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 313
    :cond_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 119
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->getChildCount()I

    move-result v0

    .line 72
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 73
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 76
    .local v3, "measureHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 78
    .local v4, "measuredWidth":I
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-ne v1, v5, :cond_1

    .line 79
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 80
    const/4 v5, 0x0

    sub-int v6, p5, v3

    invoke-virtual {v1, v5, v6, v4, p5}, Landroid/view/View;->layout(IIII)V

    .line 72
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingLeft:I

    sub-int v6, p5, v3

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingLeft:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->padingBottom:I

    sub-int v8, p5, v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 85
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 90
    .end local v1    # "childView":Landroid/view/View;
    .end local v3    # "measureHeight":I
    .end local v4    # "measuredWidth":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 61
    .local v1, "w_size":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 62
    .local v0, "h_size":I
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->measureChildren(II)V

    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->setMeasuredDimension(II)V

    .line 65
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 277
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changeSmallSize(IIII)V

    .line 278
    return-void
.end method

.method public resetShow()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    return-void
.end method

.method public setSmallDefaultSize()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 245
    return-void
.end method

.method public switchDrawingOrder(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 125
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->state:I

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->state:I

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1, p1}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->performAnim(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public switchDrawingOrderForAiFollow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->disShowSmall()V

    .line 262
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/media/FimiH264Video;->change9GridSize(II)V

    .line 257
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changeOrderFlag()V

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public switchDrawingOrderForAiLineVideo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 334
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 339
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changeOrderFlag()V

    .line 340
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 341
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/media/FimiH264Video;->change9GridSize(II)V

    goto :goto_0
.end method

.method public switchDrawingOrderForGimbal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 349
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    if-eqz v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 355
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/media/FimiH264Video;->change9GridSize(II)V

    .line 356
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changeOrderFlag()V

    .line 357
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 358
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchDrawingOrderForPoint2Point()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 321
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changeOrderFlag()V

    .line 322
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 323
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->indexs:[Landroid/view/View;

    aget-object v0, v0, v4

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/media/FimiH264Video;->change9GridSize(II)V

    .line 328
    :cond_0
    return-void
.end method
