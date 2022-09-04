.class public Lcom/fimi/app/x8s/anim/FlashAnimator;
.super Lcom/fimi/app/x8s/anim/BaseViewAnimator;
.source "FlashAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/fimi/app/x8s/anim/BaseViewAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public prepare(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/fimi/app/x8s/anim/FlashAnimator;->getAnimatorAgent()Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string v3, "alpha"

    const/4 v4, 0x5

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 34
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 36
    return-void

    .line 33
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
