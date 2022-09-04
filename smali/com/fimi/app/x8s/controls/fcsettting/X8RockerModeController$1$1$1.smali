.class Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1$1;
.super Ljava/lang/Object;
.source "X8RockerModeController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetRcMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1$1;->this$2:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V
    .locals 0
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "obj"    # Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 114
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1$1;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V

    return-void
.end method
