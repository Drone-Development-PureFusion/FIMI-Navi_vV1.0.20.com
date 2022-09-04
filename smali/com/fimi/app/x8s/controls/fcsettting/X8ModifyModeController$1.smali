.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;
.super Landroid/os/Handler;
.source "X8ModifyModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$14;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8ModifyModeController$FormatState:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    return-void

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    goto :goto_0

    .line 97
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
