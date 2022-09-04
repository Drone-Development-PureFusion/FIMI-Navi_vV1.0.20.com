.class Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;
.super Landroid/os/Handler;
.source "X8MainBottomParameterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    iget v0, v0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->changeShowStatus:I

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    const/4 v1, 0x1

    iput v1, v0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->changeShowStatus:I

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    iget v1, v1, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->changeShowStatus:I

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->access$000(Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;I)V

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    iput v4, v0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->changeShowStatus:I

    goto :goto_0
.end method
