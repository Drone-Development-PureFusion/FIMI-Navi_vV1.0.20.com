.class Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;
.super Ljava/lang/Object;
.source "X8DoubleWaySeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->resetSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->access$002(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;F)F

    .line 287
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->access$000(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;)F

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->access$200(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->access$102(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;F)F

    .line 288
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->invalidate()V

    .line 289
    return-void
.end method
