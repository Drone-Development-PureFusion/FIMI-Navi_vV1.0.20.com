.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frequencyPoint()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showFrequencyPoint()V

    .line 1102
    return-void
.end method

.method public modifyMode()V
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showModifyMode()V

    .line 1097
    return-void
.end method

.method public openFlightlog()V
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showFlightlog()V

    .line 1107
    return-void
.end method

.method public setGridLine(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1087
    return-void
.end method

.method public setVersion()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->setVersion()V

    .line 1092
    return-void
.end method

.method public showLog(Z)V
    .locals 0
    .param p1, "isShowMap"    # Z

    .prologue
    .line 1082
    return-void
.end method

.method public switchMap(Z)Z
    .locals 1
    .param p1, "isMap"    # Z

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public switchMapRectifyDeviation(Z)V
    .locals 0
    .param p1, "isMapRectifyDeviation"    # Z

    .prologue
    .line 1071
    return-void
.end method

.method public switchMapStyle(I)V
    .locals 1
    .param p1, "mapStyle"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->switchMapStyle(I)V

    .line 1066
    return-void
.end method

.method public switchUnity(Z)V
    .locals 1
    .param p1, "isShowMetric"    # Z

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->switchUnity()V

    .line 1076
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->switchUnityEvent()V

    .line 1077
    return-void
.end method
