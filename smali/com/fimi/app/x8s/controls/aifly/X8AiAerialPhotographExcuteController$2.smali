.class Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$2;
.super Ljava/lang/Object;
.source "X8AiAerialPhotographExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
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
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;)V
    .locals 0
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "sensitivity"    # Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    .prologue
    .line 227
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 224
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$2;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;)V

    return-void
.end method
