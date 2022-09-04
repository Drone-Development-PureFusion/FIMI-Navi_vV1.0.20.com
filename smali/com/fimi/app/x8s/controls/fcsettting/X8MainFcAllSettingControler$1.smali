.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;
.super Ljava/lang/Object;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 266
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 267
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 268
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$202(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;I)I

    .line 269
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;

    .line 270
    .local v1, "lp":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget v3, v1, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;I)I

    .line 272
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)I

    move-result v6

    neg-int v6, v6

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 273
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 275
    return-void
.end method
