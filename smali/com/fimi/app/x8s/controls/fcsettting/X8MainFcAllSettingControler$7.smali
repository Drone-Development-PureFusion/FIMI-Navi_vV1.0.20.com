.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$7;
.super Ljava/lang/Object;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;


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
    .line 579
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalibrationReturn()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeSecondUi()V

    .line 584
    return-void
.end method

.method public onCalibrationStart()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$1102(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;Z)Z

    .line 599
    return-void
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$1102(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;Z)Z

    .line 594
    return-void
.end method
