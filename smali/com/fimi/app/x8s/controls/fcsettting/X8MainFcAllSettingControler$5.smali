.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;
.super Ljava/lang/Object;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFiveKeyClicked(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "curIndex"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showFiveKeyUi(II)V

    .line 550
    return-void
.end method

.method public onRcCalibration()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showRcCalibrationUi()V

    .line 560
    return-void
.end method

.method public onRcMatchCode()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showRcMatchCodeView()V

    .line 555
    return-void
.end method

.method public onRockerModeClicked(Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;)V
    .locals 1
    .param p1, "onRcCtrlModelListener"    # Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iput-object p1, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    .line 544
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showRockerModeUi()V

    .line 545
    return-void
.end method
