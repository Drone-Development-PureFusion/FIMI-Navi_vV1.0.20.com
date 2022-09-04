.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setFailsafe(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field final synthetic val$index:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;->val$index:I

    iput p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1470
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;->val$index:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 1472
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$43;->val$value:I

    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->onChangeLostAciton(I)V

    .line 1476
    :cond_0
    return-void
.end method
