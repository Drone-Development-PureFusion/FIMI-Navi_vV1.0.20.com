.class public Lcom/fimi/app/x8s/widget/X8LooperTextView;
.super Landroid/widget/FrameLayout;
.source "X8LooperTextView.java"


# instance fields
.field private final ANIM_DELAYED_MILLIONS:I

.field private final ANIM_DURATION:I

.field private final DEFAULT_TEXT_COLOR:Ljava/lang/String;

.field private final DEFAULT_TEXT_SIZE:I

.field private final TIP_PREFIX:Ljava/lang/String;

.field private anim_in:Landroid/view/animation/Animation;

.field private anim_out:Landroid/view/animation/Animation;

.field private curTipIndex:I

.field private lastTimeMillis:J

.field private leftDrawable:Landroid/graphics/drawable/Drawable;

.field private needFlash:Z

.field private tipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tv_tip_in:Landroid/widget/TextView;

.field private tv_tip_out:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->curTipIndex:I

    .line 32
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->ANIM_DELAYED_MILLIONS:I

    .line 34
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->ANIM_DURATION:I

    .line 35
    const/16 v0, 0xe

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->DEFAULT_TEXT_SIZE:I

    .line 36
    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->DEFAULT_TEXT_COLOR:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->TIP_PREFIX:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->needFlash:Z

    .line 44
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->initTipFrame()V

    .line 45
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->initAnimation()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->curTipIndex:I

    .line 32
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->ANIM_DELAYED_MILLIONS:I

    .line 34
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->ANIM_DURATION:I

    .line 35
    const/16 v0, 0xe

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->DEFAULT_TEXT_SIZE:I

    .line 36
    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->DEFAULT_TEXT_COLOR:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->TIP_PREFIX:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->needFlash:Z

    .line 50
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->initTipFrame()V

    .line 51
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->initAnimation()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->curTipIndex:I

    .line 32
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->ANIM_DELAYED_MILLIONS:I

    .line 34
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->ANIM_DURATION:I

    .line 35
    const/16 v0, 0xe

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->DEFAULT_TEXT_SIZE:I

    .line 36
    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->DEFAULT_TEXT_COLOR:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->TIP_PREFIX:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->needFlash:Z

    .line 56
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->initTipFrame()V

    .line 57
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->initAnimation()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8LooperTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8LooperTextView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->updateTipAndPlayAnimationWithCheck()V

    return-void
.end method

.method private getNextTip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tipList:Ljava/util/List;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tipList:Ljava/util/List;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->curTipIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->curTipIndex:I

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v1, v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->newAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->anim_out:Landroid/view/animation/Animation;

    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->newAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->anim_in:Landroid/view/animation/Animation;

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->anim_in:Landroid/view/animation/Animation;

    new-instance v1, Lcom/fimi/app/x8s/widget/X8LooperTextView$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView$1;-><init>(Lcom/fimi/app/x8s/widget/X8LooperTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    return-void
.end method

.method private initTipFrame()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_out:Landroid/widget/TextView;

    .line 65
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_in:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_in:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->addView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_out:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->addView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public static isListEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 170
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "ResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    return-object v0
.end method

.method private newAnimation(FF)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fromYValue"    # F
    .param p2, "toYValue"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, p1

    move v7, v1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 117
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 118
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 119
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 120
    return-object v0
.end method

.method private newTextView()Landroid/widget/TextView;
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 70
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 73
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 75
    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 78
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 79
    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    return-object v1
.end method

.method private setFlashAnimator(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 181
    new-instance v0, Lcom/fimi/app/x8s/anim/FlashAnimator;

    invoke-direct {v0}, Lcom/fimi/app/x8s/anim/FlashAnimator;-><init>()V

    .line 182
    .local v0, "flashAnimator":Lcom/fimi/app/x8s/anim/FlashAnimator;
    invoke-static {v0}, Lcom/fimi/app/x8s/anim/YoYo;->with(Lcom/fimi/app/x8s/anim/BaseViewAnimator;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    .line 183
    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->duration(J)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeat(I)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v4, v4}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivot(FF)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 186
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->interpolate(Landroid/view/animation/Interpolator;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/widget/X8LooperTextView$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView$2;-><init>(Lcom/fimi/app/x8s/widget/X8LooperTextView;)V

    .line 187
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->withListener(Landroid/animation/Animator$AnimatorListener;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    .line 207
    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/fimi/app/x8s/anim/YoYo$YoYoString;

    .line 208
    return-void
.end method

.method private updateTip(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "tipView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->getNextTip()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "tip":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_1
    return-void
.end method

.method private updateTipAndPlayAnimation()V
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->curTipIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_out:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->updateTip(Landroid/widget/TextView;)V

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_in:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_out:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_in:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->bringChildToFront(Landroid/view/View;)V

    .line 142
    :goto_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->needFlash:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->setFlashAnimator(Landroid/view/View;)V

    .line 145
    :cond_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_in:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->updateTip(Landroid/widget/TextView;)V

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_out:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_in:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_out:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateTipAndPlayAnimationWithCheck()V
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->lastTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->lastTimeMillis:J

    .line 127
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->updateTipAndPlayAnimation()V

    goto :goto_0
.end method


# virtual methods
.method public needFlash(Z)V
    .locals 0
    .param p1, "needFlash"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->needFlash:Z

    .line 149
    return-void
.end method

.method public setDrawableLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method public setTipList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "tipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tipList:Ljava/util/List;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->curTipIndex:I

    .line 176
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView;->tv_tip_out:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->updateTip(Landroid/widget/TextView;)V

    .line 177
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->updateTipAndPlayAnimation()V

    .line 178
    return-void
.end method
