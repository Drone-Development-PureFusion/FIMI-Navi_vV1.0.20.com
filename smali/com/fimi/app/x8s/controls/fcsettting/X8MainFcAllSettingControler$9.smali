.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;
.super Ljava/lang/Object;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;


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
    .line 643
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvancedSetup()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;->onGimbalAdvancedSetup()V

    .line 662
    :cond_0
    return-void
.end method

.method public onGimbalCalibrationClick()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showGimbalCalibarationUi()V

    .line 647
    return-void
.end method

.method public onGimbalXYZAdjust()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;->onGimbalXYZAdjustClick()V

    .line 669
    :cond_0
    return-void
.end method

.method public onHorizontalTrimClick()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;->onGimbalHorizontalTrimClick()V

    .line 654
    :cond_0
    return-void
.end method
