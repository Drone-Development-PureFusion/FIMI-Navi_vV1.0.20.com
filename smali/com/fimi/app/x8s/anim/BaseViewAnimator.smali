.class public abstract Lcom/fimi/app/x8s/anim/BaseViewAnimator;
.super Ljava/lang/Object;
.source "BaseViewAnimator.java"


# static fields
.field public static final DURATION:J = 0x3e8L


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDuration:J

.field private mRepeatMode:I

.field private mRepeatTimes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mDuration:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mRepeatTimes:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mRepeatMode:I

    .line 46
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 47
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 1
    .param p1, "l"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    return-object p0
.end method

.method public animate()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->start()V

    .line 60
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 118
    return-void
.end method

.method public getAnimatorAgent()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    return v0
.end method

.method protected abstract prepare(Landroid/view/View;)V
.end method

.method public removeAllListener()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 134
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "l"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    return-void
.end method

.method public reset(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 73
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 74
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 75
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 76
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 77
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 78
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 79
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotationY(Landroid/view/View;F)V

    .line 80
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotationX(Landroid/view/View;F)V

    .line 81
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 64
    invoke-virtual {p0}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->start()V

    .line 65
    return-void
.end method

.method public setDuration(J)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mDuration:J

    .line 99
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    return-object p0
.end method

.method public setRepeatMode(I)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 0
    .param p1, "repeatMode"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mRepeatMode:I

    .line 156
    return-object p0
.end method

.method public setRepeatTimes(I)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 0
    .param p1, "repeatTimes"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mRepeatTimes:I

    .line 151
    return-object p0
.end method

.method public setStartDelay(J)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->getAnimatorAgent()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 104
    return-object p0
.end method

.method public setTarget(Landroid/view/View;)Lcom/fimi/app/x8s/anim/BaseViewAnimator;
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->reset(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->prepare(Landroid/view/View;)V

    .line 55
    return-object p0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 88
    .local v0, "animator":Landroid/animation/Animator;
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 89
    check-cast v1, Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mRepeatTimes:I

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 90
    check-cast v0, Landroid/animation/ValueAnimator;

    .end local v0    # "animator":Landroid/animation/Animator;
    iget v1, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mRepeatMode:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 94
    iget-object v1, p0, Lcom/fimi/app/x8s/anim/BaseViewAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 95
    return-void
.end method
