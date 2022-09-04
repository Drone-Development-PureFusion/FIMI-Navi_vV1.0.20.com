.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$5;
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


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

.field final synthetic val$value:D


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;D)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    iput-wide p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$5;->val$value:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 5
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, -0x1

    .line 330
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$5;->val$value:D

    double-to-int v0, v0

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$5;->val$value:D

    double-to-int v1, v2

    invoke-static {v0, v1, v4, v4}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setExp(IIII)V

    .line 332
    return-void
.end method
