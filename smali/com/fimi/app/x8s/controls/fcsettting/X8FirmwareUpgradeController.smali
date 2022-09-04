.class public Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8FirmwareUpgradeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

.field private availableUpgrades:Z

.field currentConnectedState:Z

.field private imgReturn:Landroid/widget/ImageView;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/entity/VersionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

.field private mRecyclerList:Landroid/support/v7/widget/RecyclerView;

.field private tvFirmwareUpgrade:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_main_general_item_firmware_upgrade:I

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    .line 55
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_return:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->imgReturn:Landroid/widget/ImageView;

    .line 56
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_firmware_upgrade:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->tvFirmwareUpgrade:Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->recycler_version_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->mRecyclerList:Landroid/support/v7/widget/RecyclerView;

    .line 60
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->initData()V

    .line 62
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    .local v1, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->mRecyclerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance v2, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->adapter:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

    .line 65
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->mRecyclerList:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->adapter:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 73
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->tvFirmwareUpgrade:Landroid/widget/TextView;

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController$1;

    const/16 v4, 0x320

    invoke-direct {v3, p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;)Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    return-object v0
.end method

.method private initData()V
    .locals 32

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 140
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v28

    .line 141
    .local v28, "versionState":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v14

    .line 142
    .local v14, "moduleFcAckVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v17

    .line 143
    .local v17, "moduleRcVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v12

    .line 144
    .local v12, "moduleCvVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v18

    .line 145
    .local v18, "moduleRepeaterRcVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v19

    .line 146
    .local v19, "moduleRepeaterVehicleVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v13

    .line 147
    .local v13, "moduleEscVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v15

    .line 148
    .local v15, "moduleGimbalVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v10

    .line 149
    .local v10, "moduleBatteryVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v16

    .line 150
    .local v16, "moduleNfzVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v11

    .line 151
    .local v11, "moduleCameraVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v20

    .line 153
    .local v20, "moduleUltrasonic":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v9, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 154
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_fc_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v9, v0, v1, v2}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 156
    .local v9, "flyControllerVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v5, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 157
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_camera_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v5, v0, v1, v2}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 159
    .local v5, "cameraVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v6, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 160
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_gimbal_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v6, v0, v1, v2}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 162
    .local v6, "cloudTerraceVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v4, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 163
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_battery_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v4, v0, v1, v2}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 165
    .local v4, "batteryVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v23, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 166
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_rc_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 168
    .local v23, "remoteControlVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v22, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 169
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_rc_rl_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 170
    .local v22, "remoteControlRepeaterVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v7, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 171
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_vc_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v7, v0, v1, v2}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 173
    .local v7, "cv":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v8, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 174
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_fc_rl_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v8, v0, v1, v2}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 176
    .local v8, "fcRl":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v24, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 177
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_esc_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 179
    .local v24, "servoVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v21, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 180
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_noflyzone_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 181
    .local v21, "noFlyZoneVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    new-instance v25, Lcom/fimi/app/x8s/entity/VersionEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    move-object/from16 v30, v0

    .line 182
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    sget v31, Lcom/fimi/app/x8s/R$string;->x8_fw_ultrasonic_name:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/entity/VersionEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 185
    .local v25, "ultrasonicVersion":Lcom/fimi/app/x8s/entity/VersionEntity;
    invoke-static {}, Lcom/fimi/x8sdk/update/UpdateUtil;->getUpfireDtos()Ljava/util/List;

    move-result-object v27

    .line 186
    .local v27, "upfirewareDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    .line 187
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_c

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/fimi/network/entity/UpfirewareDto;

    .line 188
    .local v26, "upfirewareDto":Lcom/fimi/network/entity/UpfirewareDto;
    if-eqz v28, :cond_b

    .line 189
    if-eqz v14, :cond_0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual {v14}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual {v14}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 190
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 191
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto :goto_0

    .line 192
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual {v11}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual {v11}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 193
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 194
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto :goto_0

    .line 195
    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual {v15}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual {v15}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 196
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 197
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 198
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual {v10}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual {v10}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 199
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 200
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 201
    :cond_3
    if-eqz v17, :cond_4

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual/range {v17 .. v17}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual/range {v17 .. v17}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 202
    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 203
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 204
    :cond_4
    if-eqz v18, :cond_5

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual/range {v18 .. v18}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual/range {v18 .. v18}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 205
    const/16 v30, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 206
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 207
    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual {v12}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual {v12}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 208
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 209
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 210
    :cond_6
    if-eqz v19, :cond_7

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 211
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 212
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 213
    :cond_7
    if-eqz v13, :cond_8

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual {v13}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual {v13}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 214
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 215
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 216
    :cond_8
    if-eqz v16, :cond_9

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual/range {v16 .. v16}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual/range {v16 .. v16}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 217
    const/16 v30, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 218
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 219
    :cond_9
    if-eqz v20, :cond_a

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getModel()I

    move-result v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v30

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 220
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->setHasNewVersion(Z)V

    .line 221
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 223
    :cond_a
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 226
    :cond_b
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    goto/16 :goto_0

    .line 230
    .end local v26    # "upfirewareDto":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->availableUpgrades:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->showNewUpdate(Z)V

    .line 243
    return-void
.end method

.method private showNewUpdate(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->tvFirmwareUpgrade:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->tvFirmwareUpgrade:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->tvFirmwareUpgrade:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->tvFirmwareUpgrade:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeItem()V

    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public eventBusUI(Lcom/fimi/kernel/base/EventMessage;)V
    .locals 2
    .param p1, "eventMessage"    # Lcom/fimi/kernel/base/EventMessage;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/fimi/kernel/base/EventMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x8_update_event_key"

    if-ne v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->onVersionChange()V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->adapter:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->notifyDataSetChanged()V

    .line 132
    :cond_0
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 88
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_return:I

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->closeItem()V

    .line 90
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;->onFirmwareUpgradeReturn()V

    .line 94
    :cond_0
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 262
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->currentConnectedState:Z

    if-eq v0, p1, :cond_0

    .line 263
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->currentConnectedState:Z

    .line 264
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->initData()V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->adapter:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->notifyDataSetChanged()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->showNewUpdate(Z)V

    .line 269
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectRelay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->initData()V

    .line 272
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->adapter:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->changeDatas(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onVersionChange()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->adapter:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->initData()V

    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->adapter:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->changeDatas(Ljava/util/ArrayList;)V

    .line 284
    :cond_0
    return-void
.end method

.method public setOnFirmwareClickListener(Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    .line 136
    return-void
.end method

.method public showItem()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->showItem()V

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 117
    return-void
.end method
