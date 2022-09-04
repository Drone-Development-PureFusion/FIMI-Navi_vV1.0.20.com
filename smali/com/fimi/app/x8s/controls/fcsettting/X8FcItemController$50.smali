.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->reGetLostAction()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetLostAction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetLostAction;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "obj"    # Lcom/fimi/x8sdk/dataparser/AckGetLostAction;

    .prologue
    const/4 v2, 0x2

    .line 1588
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1589
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetLostAction;->getAction()I

    move-result v0

    .line 1590
    .local v0, "value":I
    if-nez v0, :cond_1

    .line 1591
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 1597
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 1606
    .end local v0    # "value":I
    :cond_0
    :goto_1
    return-void

    .line 1592
    .restart local v0    # "value":I
    :cond_1
    if-ne v0, v2, :cond_2

    .line 1593
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    goto :goto_0

    .line 1595
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    goto :goto_0

    .line 1599
    .end local v0    # "value":I
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 1600
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$3108(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)I

    .line 1601
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$3100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$2300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V

    goto :goto_1
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1585
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetLostAction;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$50;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetLostAction;)V

    return-void
.end method
