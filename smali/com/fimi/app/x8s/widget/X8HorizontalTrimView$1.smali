.class Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;
.super Ljava/lang/Object;
.source "X8HorizontalTrimView.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerPositionChanged(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->access$100(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->access$100(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 65
    return-void
.end method

.method public onSeekProgress(I)V
    .locals 6
    .param p1, "progress"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    .line 51
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-static {v1, p1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->access$002(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;I)I

    .line 52
    if-gtz p1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->val$context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_minus_angle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    int-to-float v3, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "rt":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->access$100(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    return-void

    .line 57
    .end local v0    # "rt":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->val$context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_cloud_angle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    int-to-float v3, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0    # "rt":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->access$100(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSizeChanged()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->access$200(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->access$000(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->setProgress(F)V

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView$1;->this$0:Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->access$302(Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;Z)Z

    .line 71
    return-void
.end method
