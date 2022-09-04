.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$2;
.super Ljava/lang/Object;
.source "X8FcExpSettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setCurValue(D)V

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 262
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8FixedEditText;

    move-result-object v0

    const-string v1, "50"

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    return-void
.end method
