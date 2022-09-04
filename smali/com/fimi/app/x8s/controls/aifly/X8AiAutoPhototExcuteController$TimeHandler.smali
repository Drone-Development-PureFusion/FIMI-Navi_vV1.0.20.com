.class Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;
.super Landroid/os/Handler;
.source "X8AiAutoPhototExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;


# direct methods
.method private constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;
    .param p2, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$110(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_1
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$110(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)I

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "GO"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
