.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController$1;
.super Ljava/lang/Object;
.source "X8GimbalHorizontalTrimController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->initData()V
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Float;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 80
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 82
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;)Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8HorizontalTrimView;->setCurrValue(F)V

    .line 88
    :cond_1
    return-void

    .line 83
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 84
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController$1;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Float;)V

    return-void
.end method
