.class Lcom/fimi/x8sdk/controller/FcCtrlManager$1;
.super Ljava/lang/Object;
.source "FcCtrlManager.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/controller/FcCtrlManager;->getLowPowerOpt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/controller/FcCtrlManager;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager$1;->this$0:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 224
    return-void
.end method
