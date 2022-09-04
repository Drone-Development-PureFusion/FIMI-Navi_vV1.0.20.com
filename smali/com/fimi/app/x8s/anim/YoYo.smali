.class public Lcom/fimi/app/x8s/anim/YoYo;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/anim/YoYo$YoYoString;,
        Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;,
        Lcom/fimi/app/x8s/anim/YoYo$EmptyAnimatorListener;,
        Lcom/fimi/app/x8s/anim/YoYo$AnimatorCallback;
    }
.end annotation


# static fields
.field public static final CENTER_PIVOT:F = 3.4028235E38f

.field private static final DURATION:J = 0x3e8L

.field public static final INFINITE:I = -0x1

.field private static final NO_DELAY:J


# instance fields
.field private animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private delay:J

.field private duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private pivotX:F

.field private pivotY:F

.field private repeat:Z

.field private repeatMode:I

.field private repeatTimes:I

.field private target:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)V
    .locals 2
    .param p1, "animationComposer"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$000(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    .line 57
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$100(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->duration:J

    .line 58
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$200(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->delay:J

    .line 59
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$300(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->repeat:Z

    .line 60
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$400(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->repeatTimes:I

    .line 61
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$500(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->repeatMode:I

    .line 62
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$600(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->interpolator:Landroid/view/animation/Interpolator;

    .line 63
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$700(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->pivotX:F

    .line 64
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$800(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->pivotY:F

    .line 65
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$900(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->callbacks:Ljava/util/List;

    .line 66
    invoke-static {p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->access$1000(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/anim/YoYo;->target:Landroid/view/View;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;Lcom/fimi/app/x8s/anim/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .param p2, "x1"    # Lcom/fimi/app/x8s/anim/YoYo$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/anim/YoYo;-><init>(Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/anim/YoYo;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/anim/YoYo;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fimi/app/x8s/anim/YoYo;->play()Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    move-result-object v0

    return-object v0
.end method

.method private play()Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 5

    .prologue
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v3, 0x40000000    # 2.0f

    .line 244
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    iget-object v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->target:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->setTarget(Landroid/view/View;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    .line 246
    iget v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->pivotX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->target:Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->target:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 251
    :goto_0
    iget v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->pivotY:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->target:Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->target:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    iget-wide v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->duration:J

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->setDuration(J)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->repeatTimes:I

    .line 258
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->setRepeatTimes(I)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->repeatMode:I

    .line 259
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->setRepeatMode(I)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->interpolator:Landroid/view/animation/Interpolator;

    .line 260
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->delay:J

    .line 261
    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->setStartDelay(J)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    .line 263
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 265
    .local v0, "callback":Landroid/animation/Animator$AnimatorListener;
    iget-object v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    invoke-virtual {v2, v0}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    goto :goto_2

    .line 249
    .end local v0    # "callback":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->target:Landroid/view/View;

    iget v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->pivotX:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->target:Landroid/view/View;

    iget v2, p0, Lcom/fimi/app/x8s/anim/YoYo;->pivotY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->animate()V

    .line 269
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/YoYo;->animator:Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    return-object v1
.end method

.method public static with(Lcom/fimi/app/x8s/anim/BaseViewAnimator;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;
    .locals 1
    .param p0, "animator"    # Lcom/fimi/app/x8s/anim/BaseViewAnimator;

    .prologue
    .line 69
    new-instance v0, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;-><init>(Lcom/fimi/app/x8s/anim/BaseViewAnimator;)V

    return-object v0
.end method
