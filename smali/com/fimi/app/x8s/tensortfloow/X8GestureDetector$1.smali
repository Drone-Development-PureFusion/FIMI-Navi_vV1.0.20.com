.class Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;
.super Ljava/lang/Object;
.source "X8GestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    iget v3, v3, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->FLIP_DISTANCE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8GestureListener;->onFlingResult(I)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    iput-boolean v1, v0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->isOnFling:Z

    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    iget v3, v3, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->FLIP_DISTANCE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/interfaces/IX8GestureListener;->onFlingResult(I)V

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    iput-boolean v1, v0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->isOnFling:Z

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    iget v3, v3, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->FLIP_DISTANCE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/interfaces/IX8GestureListener;->onFlingResult(I)V

    .line 77
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    iput-boolean v1, v0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->isOnFling:Z

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    iget v3, v3, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->FLIP_DISTANCE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;)Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/interfaces/IX8GestureListener;->onFlingResult(I)V

    .line 84
    :cond_8
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    iput-boolean v1, v0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->isOnFling:Z

    move v0, v1

    .line 85
    goto/16 :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 35
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
