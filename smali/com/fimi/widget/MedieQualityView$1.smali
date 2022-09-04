.class Lcom/fimi/widget/MedieQualityView$1;
.super Landroid/os/Handler;
.source "MedieQualityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/MedieQualityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/MedieQualityView;


# direct methods
.method constructor <init>(Lcom/fimi/widget/MedieQualityView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/MedieQualityView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    iget v3, v3, Lcom/fimi/widget/MedieQualityView;->arg2:I

    int-to-float v3, v3

    div-float v2, v3, v4

    .line 60
    .local v2, "showArg2":F
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "arg2Str":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    iget-object v3, v3, Lcom/fimi/widget/MedieQualityView;->tvArg1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    iget v5, v5, Lcom/fimi/widget/MedieQualityView;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    iget-object v3, v3, Lcom/fimi/widget/MedieQualityView;->tvArg2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    invoke-static {v3}, Lcom/fimi/widget/MedieQualityView;->access$000(Lcom/fimi/widget/MedieQualityView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    :goto_0
    return-void

    .line 66
    .end local v0    # "arg2Str":Ljava/lang/String;
    .end local v1    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v2    # "showArg2":F
    :cond_0
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    iget v3, v3, Lcom/fimi/widget/MedieQualityView;->arg2:I

    int-to-float v3, v3

    div-float v2, v3, v4

    .line 67
    .restart local v2    # "showArg2":F
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local v1    # "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "arg2Str":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    iget-object v3, v3, Lcom/fimi/widget/MedieQualityView;->tvArg1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    iget v5, v5, Lcom/fimi/widget/MedieQualityView;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    iget-object v3, v3, Lcom/fimi/widget/MedieQualityView;->tvArg2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v3, p0, Lcom/fimi/widget/MedieQualityView$1;->this$0:Lcom/fimi/widget/MedieQualityView;

    invoke-static {v3}, Lcom/fimi/widget/MedieQualityView;->access$000(Lcom/fimi/widget/MedieQualityView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
