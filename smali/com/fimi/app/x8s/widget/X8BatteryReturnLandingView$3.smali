.class Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$3;
.super Ljava/lang/Object;
.source "X8BatteryReturnLandingView.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->onRetureHomeClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$3;->this$0:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$3;->this$0:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->access$000(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$3;->this$0:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->access$000(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$3;->this$0:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->access$000(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->dismiss()V

    .line 251
    :cond_0
    return-void
.end method
