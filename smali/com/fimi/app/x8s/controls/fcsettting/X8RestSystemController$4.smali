.class Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$4;
.super Ljava/lang/Object;
.source "X8RestSystemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restFcSystemParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController;->restSystemParamResult:Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->setFcResult(Z)V

    .line 158
    :cond_0
    return-void
.end method
