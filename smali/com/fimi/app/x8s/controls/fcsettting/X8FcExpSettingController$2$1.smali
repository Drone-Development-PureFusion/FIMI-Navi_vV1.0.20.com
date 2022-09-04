.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$1;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "resp"    # Ljava/lang/Object;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setCurValue(D)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8FixedEditText;

    move-result-object v0

    const-string v1, "50"

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :cond_0
    return-void
.end method
