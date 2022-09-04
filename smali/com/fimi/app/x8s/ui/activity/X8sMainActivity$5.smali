.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;


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
    .line 633
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryClick()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->BATTERY_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 663
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    .line 664
    return-void
.end method

.method public onDroneInfoStateClick()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->DRONE_STATE:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 680
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    .line 681
    return-void
.end method

.method public onFpvClick()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 651
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    .line 652
    return-void
.end method

.method public onGcClick()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GIMBAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 686
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    .line 687
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->startGimbalCalibaration()V

    .line 688
    return-void
.end method

.method public onGpsClick()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 645
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    .line 646
    return-void
.end method

.method public onMainReback()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->finish()V

    .line 675
    return-void
.end method

.method public onModelClick()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 669
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    .line 670
    return-void
.end method

.method public onRcClick()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->RC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 657
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    .line 658
    return-void
.end method

.method public onSettingClick()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 639
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    .line 640
    return-void
.end method
