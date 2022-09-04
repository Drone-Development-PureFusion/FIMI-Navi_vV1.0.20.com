.class Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$3;
.super Ljava/lang/Object;
.source "X8ErrorCodeLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->setFlashAnimator(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$3;->this$0:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 226
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 221
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 231
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 217
    return-void
.end method
