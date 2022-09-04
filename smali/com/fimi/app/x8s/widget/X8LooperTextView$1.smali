.class Lcom/fimi/app/x8s/widget/X8LooperTextView$1;
.super Ljava/lang/Object;
.source "X8LooperTextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8LooperTextView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8LooperTextView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8LooperTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8LooperTextView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView$1;->this$0:Lcom/fimi/app/x8s/widget/X8LooperTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8LooperTextView$1;->this$0:Lcom/fimi/app/x8s/widget/X8LooperTextView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8LooperTextView;->access$000(Lcom/fimi/app/x8s/widget/X8LooperTextView;)V

    .line 111
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 106
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 101
    return-void
.end method
