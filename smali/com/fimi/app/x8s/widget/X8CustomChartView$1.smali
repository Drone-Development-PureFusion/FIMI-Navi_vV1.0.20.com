.class Lcom/fimi/app/x8s/widget/X8CustomChartView$1;
.super Ljava/lang/Object;
.source "X8CustomChartView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8CustomChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8CustomChartView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const/4 v4, 0x1

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$000(Lcom/fimi/app/x8s/widget/X8CustomChartView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v4

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$100(Lcom/fimi/app/x8s/widget/X8CustomChartView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$300(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v2

    add-double/2addr v2, v6

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$202(Lcom/fimi/app/x8s/widget/X8CustomChartView;D)D

    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 231
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->invalidate()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$100(Lcom/fimi/app/x8s/widget/X8CustomChartView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$400(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v2

    sub-double/2addr v2, v6

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$202(Lcom/fimi/app/x8s/widget/X8CustomChartView;D)D

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->invalidate()V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$100(Lcom/fimi/app/x8s/widget/X8CustomChartView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$400(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v2

    sub-double/2addr v2, v6

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$202(Lcom/fimi/app/x8s/widget/X8CustomChartView;D)D

    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 246
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->invalidate()V

    goto/16 :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$100(Lcom/fimi/app/x8s/widget/X8CustomChartView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$300(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$200(Lcom/fimi/app/x8s/widget/X8CustomChartView;)D

    move-result-wide v2

    add-double/2addr v2, v6

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->access$202(Lcom/fimi/app/x8s/widget/X8CustomChartView;D)D

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 254
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomChartView$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->invalidate()V

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 215
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method
