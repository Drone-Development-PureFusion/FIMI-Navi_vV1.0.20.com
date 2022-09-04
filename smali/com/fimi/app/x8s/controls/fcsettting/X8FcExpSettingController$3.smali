.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$3;
.super Ljava/lang/Object;
.source "X8FcExpSettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->onFingerUp(ID)V
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
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

.field final synthetic val$value:D


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;D)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    iput-wide p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$3;->val$value:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "resp"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x1

    .line 306
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$3;->val$value:D

    double-to-int v0, v0

    invoke-static {v2, v2, v0, v2}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setExp(IIII)V

    .line 311
    :cond_0
    return-void
.end method
