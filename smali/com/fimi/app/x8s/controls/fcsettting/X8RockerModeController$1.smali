.class Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;
.super Ljava/lang/Object;
.source "X8RockerModeController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->showApDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V

    .line 74
    return-void
.end method

.method public onRight()V
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "mode":B
    iget v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->val$index:I

    packed-switch v2, :pswitch_data_0

    .line 97
    :goto_0
    move v1, v0

    .line 99
    .local v1, "temp":B
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;

    invoke-direct {v3, p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;B)V

    invoke-virtual {v2, v3, v0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V

    .line 124
    return-void

    .line 82
    .end local v1    # "temp":B
    :pswitch_0
    const/4 v0, 0x2

    .line 84
    goto :goto_0

    .line 87
    :pswitch_1
    const/4 v0, 0x1

    .line 89
    goto :goto_0

    .line 91
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
