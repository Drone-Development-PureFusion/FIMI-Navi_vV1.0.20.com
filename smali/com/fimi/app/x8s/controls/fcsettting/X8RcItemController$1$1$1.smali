.class Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1$1;
.super Ljava/lang/Object;
.source "X8RcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1$1;->this$2:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :cond_0
    return-void
.end method
