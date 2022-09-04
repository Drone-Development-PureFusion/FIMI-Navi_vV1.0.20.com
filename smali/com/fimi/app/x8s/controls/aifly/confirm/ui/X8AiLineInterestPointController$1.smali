.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;
.super Ljava/lang/Object;
.source "X8AiLineInterestPointController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->addTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$002(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 48
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_inreterst_max2:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return v7

    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 53
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 56
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 57
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-interface {v2, v3, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;->onUp(II)V

    .line 58
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
