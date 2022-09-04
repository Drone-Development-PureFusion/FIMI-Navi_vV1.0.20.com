.class Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;
.super Landroid/os/Handler;
.source "X8WithTimeDoubleCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->access$000(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    iget-object v0, v0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->tvRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->access$100(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->access$010(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->access$200(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->access$300(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->access$300(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;->onRight()V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->dismiss()V

    goto :goto_0
.end method
