.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;
.super Ljava/lang/Object;
.source "X8FcExpSettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->requestDefaultValue()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;)V
    .locals 5
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "sensitivity"    # Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getThroPercent()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setCurValue(D)V

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8FixedEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getThroPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getYawPercent()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setCurValue(D)V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8FixedEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getYawPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getRollPercent()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setCurValue(D)V

    .line 176
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8FixedEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getRollPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;)V

    return-void
.end method
