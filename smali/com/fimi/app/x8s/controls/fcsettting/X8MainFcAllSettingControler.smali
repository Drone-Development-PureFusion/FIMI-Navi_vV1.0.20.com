.class public Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;,
        Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;
    }
.end annotation


# instance fields
.field private contentViewTopMargin:I

.field coverListener:Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private firstContentView:Landroid/view/View;

.field private gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private gimbalSettingListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

.field private isCanClose:Z

.field private isfiveKeyOpen:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

.field private loginDialogRestart:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private mActivity:Landroid/app/Activity;

.field private mCurrentFirstController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

.field private mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

.field private mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

.field private mFirstMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

.field private mIX8DroneStateListener:Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;

.field private mIX8GeneralItemControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

.field private mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

.field public mX8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private mX8DroneCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

.field private mX8DroneInfoStateController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;

.field public mX8FcItemListener:Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

.field private mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

.field private mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

.field private mX8FrequencyPointController:Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

.field public mX8FwUpgradeCtrlListener:Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

.field public mX8RcItemControllerListener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

.field mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

.field private modifyModeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

.field public mx8FiveKeyCalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

.field public mx8RockerCalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

.field rcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

.field private rcMatchCodeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

.field private rlFcAllSetting:Landroid/view/View;

.field private secondContentView:Landroid/view/View;

.field private x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

.field private x8FcExpSettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

.field private x8FcSensitivitySettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

.field private x8FiveKeyDefineController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

.field private x8FlightLogListController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

.field private x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

.field private x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

.field private x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isCanClose:Z

    .line 89
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 90
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mFirstMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    .line 324
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mIX8DroneStateListener:Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isfiveKeyOpen:Z

    .line 425
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$4;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcItemListener:Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

    .line 538
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8RcItemControllerListener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    .line 566
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$6;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mx8FiveKeyCalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    .line 579
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$7;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 604
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$8;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mx8RockerCalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 643
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->gimbalSettingListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    .line 791
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$12;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$12;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FwUpgradeCtrlListener:Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    .line 804
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$13;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$13;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->modifyModeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .line 154
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mActivity:Landroid/app/Activity;

    .line 155
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rl_main_fc_all_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rlFcAllSetting:Landroid/view/View;

    .line 156
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_main_fc_all_setting_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    .line 157
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_all_setting_first_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    .line 158
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_all_setting_second_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rlFcAllSetting:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isCanClose:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->loginDialogRestart:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->width:I

    return p1
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentViewTopMargin:I

    return v0
.end method

.method static synthetic access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentViewTopMargin:I

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->width:I

    return v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rlFcAllSetting:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->listener:Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    return-object v0
.end method


# virtual methods
.method public clearAllFirstController()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentFirstController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 148
    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    .line 149
    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneInfoStateController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;

    .line 150
    return-void
.end method

.method public clearAllSecondController()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 124
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    .line 125
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FiveKeyDefineController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    .line 126
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcSensitivitySettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .line 127
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcExpSettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .line 128
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    .line 129
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcMatchCodeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .line 130
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    .line 131
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FrequencyPointController:Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->closeItem()V

    .line 134
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->closeItem()V

    .line 138
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .line 141
    :cond_1
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .line 142
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    .line 143
    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FlightLogListController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .line 144
    return-void
.end method

.method public closeFcSettingUi(Z)V
    .locals 7
    .param p1, "needResponse"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isCanClose:Z

    .line 349
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow:Z

    if-eqz v1, :cond_0

    .line 350
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow:Z

    .line 351
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->width:I

    neg-int v4, v4

    iget v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentViewTopMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 352
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 353
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 354
    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public closeRootUi()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->closeItem()V

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->clearAllFirstController()V

    .line 483
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 484
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 485
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mFirstMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    .line 486
    return-void
.end method

.method public closeSecondUi()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FlightLogListController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FlightLogListController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->remioveDownNoticeList()V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->clearAllSecondController()V

    .line 472
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 473
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 475
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public fiveKeySwitchDronestateUI()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rlFcAllSetting:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    sget-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->DRONE_STATE:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isCanClose:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mFirstMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->FCSETTINGMENU:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    if-eq v0, v1, :cond_0

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeFcSettingUi(Z)V

    goto :goto_0
.end method

.method public fiveKeySwitchUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 393
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rlFcAllSetting:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    sget-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->BATTERY_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 395
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isfiveKeyOpen:Z

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isCanClose:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mFirstMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->DRONESTATE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    if-eq v0, v1, :cond_0

    .line 399
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isfiveKeyOpen:Z

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeFcSettingUi(Z)V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isfiveKeyOpen:Z

    goto :goto_0
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 166
    return-void
.end method

.method public isRunningTask()Z
    .locals 2

    .prologue
    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->isRunningTask()Z

    move-result v0

    .line 866
    :cond_0
    return v0
.end method

.method public onBatteryReceiveListener(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V
    .locals 1
    .param p1, "autoFcBattery"    # Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->onBatteryReceive(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 380
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_fc_all_setting:I

    if-ne v0, v1, :cond_0

    .line 381
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isCanClose:Z

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    instance-of v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    instance-of v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    instance-of v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    if-eqz v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeFcSettingUi(Z)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow:Z

    if-eqz v0, :cond_6

    .line 223
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->defaultVal()V

    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentFirstController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentFirstController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->onDroneConnected(Z)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->onDroneConnected(Z)V

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->onDroneConnected(Z)V

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FrequencyPointController:Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FrequencyPointController:Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->onDroneConnected(Z)V

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->onDroneConnected(Z)V

    .line 248
    :cond_6
    return-void
.end method

.method public onRcConnected(Z)V
    .locals 2
    .param p1, "isConnect"    # Z

    .prologue
    .line 175
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$14;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8MainFcAllSettingControler$SecondMenu:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$14;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8MainFcAllSettingControler$FirstMenu:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mFirstMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 202
    :cond_1
    :goto_1
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->onRcConnected(Z)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->checkRcConnect(Z)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcMatchCodeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcMatchCodeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->checkRcConnect(Z)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->onRcConnected(Z)V

    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public onVersionChange()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->onVersionChange()V

    .line 825
    :cond_0
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 833
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 830
    return-void
.end method

.method public setGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "gimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 837
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;)V
    .locals 0
    .param p1, "mX8FcAllSettingListener"    # Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->listener:Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    .line 423
    return-void
.end method

.method public setMapVideoController(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V
    .locals 0
    .param p1, "mapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .line 297
    return-void
.end method

.method public setRlCoverListener(Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;)V
    .locals 0
    .param p1, "coverListener"    # Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->coverListener:Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

    .line 301
    return-void
.end method

.method public setVersion()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    .line 680
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FwUpgradeCtrlListener:Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->setOnFirmwareClickListener(Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;)V

    .line 682
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;->showItem()V

    .line 683
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FirmwareUpgradeController:Lcom/fimi/app/x8s/controls/fcsettting/X8FirmwareUpgradeController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 684
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->VERSION:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 685
    return-void
.end method

.method public setX8GeneralItemControllerListerner(Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;)V
    .locals 0
    .param p1, "ix8GeneralItemControllerListerner"    # Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mIX8GeneralItemControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    .line 374
    return-void
.end method

.method public declared-synchronized showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V
    .locals 7
    .param p1, "menu"    # Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rlFcAllSetting:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->DRONE_STATE:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    if-ne p1, v1, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showDroneStateView()V

    .line 258
    :goto_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow:Z

    if-nez v1, :cond_0

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow:Z

    .line 260
    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->width:I

    if-nez v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 262
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->listener:Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->listener:Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;->showAllSetting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_1
    monitor-exit p0

    return-void

    .line 256
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showFcMenuView(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 279
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->width:I

    neg-int v5, v5

    iget v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentViewTopMargin:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 280
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 281
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public showCampView()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    .line 335
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V

    .line 336
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 337
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->showItem()V

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 339
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->DRONECALIBRATION:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 340
    return-void
.end method

.method public showDroneStateView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rlFcAllSetting:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneInfoStateController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;

    .line 319
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneInfoStateController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mIX8DroneStateListener:Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;)V

    .line 320
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8DroneInfoStateController:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentFirstController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 321
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->DRONESTATE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mFirstMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    .line 322
    return-void
.end method

.method public showExpUi()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcExpSettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .line 459
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcExpSettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcExpSettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcExpSettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->showItem()V

    .line 462
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcExpSettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 463
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->FCEXP:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 465
    return-void
.end method

.method public showFcMenuView(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V
    .locals 10
    .param p1, "menu"    # Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rlFcAllSetting:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    .line 307
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcItemListener:Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8RcItemControllerListener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mIX8GeneralItemControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->gimbalSettingListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    iget-object v9, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->coverListener:Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

    invoke-virtual/range {v0 .. v9}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->setListener(Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/x8sdk/controller/X8GimbalManager;Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;)V

    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchMenu(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->showItem()V

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FcSettingMenuController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentFirstController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 311
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->FCSETTINGMENU:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mFirstMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    .line 313
    return-void
.end method

.method public showFiveKeyUi(II)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "curIndex"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FiveKeyDefineController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    .line 492
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FiveKeyDefineController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mx8FiveKeyCalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;)V

    .line 493
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FiveKeyDefineController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->showItem()V

    .line 494
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FiveKeyDefineController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->setCurIndex(II)V

    .line 495
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FiveKeyDefineController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 496
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->FIVEKEY:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 499
    return-void
.end method

.method public showFlightlog()V
    .locals 11

    .prologue
    .line 708
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Lcom/fimi/widget/CustomLoadManage;

    invoke-direct {v0}, Lcom/fimi/widget/CustomLoadManage;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fimi/widget/CustomLoadManage;->x8ShowNoClick(Landroid/content/Context;)V

    .line 713
    const/4 v9, 0x0

    .line 714
    .local v9, "loginFlightPlaybackPath":Ljava/io/File;
    const/4 v7, 0x0

    .line 716
    .local v7, "flightPlaybackPath":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v0, ""

    invoke-static {v0}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8flightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v7    # "flightPlaybackPath":Ljava/io/File;
    .local v8, "flightPlaybackPath":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 718
    new-instance v10, Ljava/io/File;

    const-string v0, ""

    invoke-static {v0}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LoginFlightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 719
    .end local v9    # "loginFlightPlaybackPath":Ljava/io/File;
    .local v10, "loginFlightPlaybackPath":Ljava/io/File;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fimi/kernel/utils/FileUtil;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8flightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fimi/kernel/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v10

    .end local v10    # "loginFlightPlaybackPath":Ljava/io/File;
    .restart local v9    # "loginFlightPlaybackPath":Ljava/io/File;
    :cond_1
    move-object v7, v8

    .line 726
    .end local v8    # "flightPlaybackPath":Ljava/io/File;
    .restart local v7    # "flightPlaybackPath":Ljava/io/File;
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 728
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

    invoke-direct {v0, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;-><init>(Landroid/view/View;Lcom/fimi/widget/CustomLoadManage;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FlightLogListController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .line 729
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FlightLogListController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->modifyModeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V

    .line 730
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FlightLogListController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->showItem()V

    .line 731
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FlightLogListController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 732
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->FLIGHT_LOG:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 752
    .end local v7    # "flightPlaybackPath":Ljava/io/File;
    .end local v9    # "loginFlightPlaybackPath":Ljava/io/File;
    :goto_1
    return-void

    .line 722
    .restart local v7    # "flightPlaybackPath":Ljava/io/File;
    .restart local v9    # "loginFlightPlaybackPath":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 723
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    .line 724
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 734
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "flightPlaybackPath":Ljava/io/File;
    .end local v9    # "loginFlightPlaybackPath":Ljava/io/File;
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 735
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_login_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_playback_login_hint:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_login_go:I

    .line 736
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$10;

    invoke-direct {v5, p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;Landroid/content/Context;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->loginDialogRestart:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 749
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->loginDialogRestart:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto :goto_1

    .line 722
    .end local v1    # "context":Landroid/content/Context;
    .restart local v8    # "flightPlaybackPath":Ljava/io/File;
    .restart local v9    # "loginFlightPlaybackPath":Ljava/io/File;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "flightPlaybackPath":Ljava/io/File;
    .restart local v7    # "flightPlaybackPath":Ljava/io/File;
    goto :goto_2

    .end local v7    # "flightPlaybackPath":Ljava/io/File;
    .end local v9    # "loginFlightPlaybackPath":Ljava/io/File;
    .restart local v8    # "flightPlaybackPath":Ljava/io/File;
    .restart local v10    # "loginFlightPlaybackPath":Ljava/io/File;
    :catch_2
    move-exception v6

    move-object v7, v8

    .end local v8    # "flightPlaybackPath":Ljava/io/File;
    .restart local v7    # "flightPlaybackPath":Ljava/io/File;
    move-object v9, v10

    .end local v10    # "loginFlightPlaybackPath":Ljava/io/File;
    .restart local v9    # "loginFlightPlaybackPath":Ljava/io/File;
    goto :goto_2
.end method

.method public showFrequencyPoint()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FrequencyPointController:Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

    .line 776
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FrequencyPointController:Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$11;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$11;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;)V

    .line 784
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FrequencyPointController:Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;->showItem()V

    .line 785
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8FrequencyPointController:Lcom/fimi/app/x8s/controls/fcsettting/X8FrequencyPointController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 786
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->FREQUENCYPOINT:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 787
    return-void
.end method

.method public showGimbalAdvancedSetupMode()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .line 764
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->setGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V

    .line 765
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->modifyModeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V

    .line 766
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->gimbalSettingListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->setOnGimbalSettingListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;)V

    .line 767
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->showItem()V

    .line 768
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8GimbalAdvancedSetupController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 769
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->ADVANCED_SETUP:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 770
    return-void
.end method

.method public showGimbalCalibarationUi()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .line 631
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 632
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->setIx8CalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V

    .line 633
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->openUi()V

    .line 634
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 635
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->GIMBALCALIBARATION:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 636
    return-void
.end method

.method public showModifyMode()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .line 696
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 697
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->setX8GimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V

    .line 698
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->modifyModeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V

    .line 699
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->showItem()V

    .line 700
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8ModifyModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 701
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->MODIFYMODE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 702
    return-void
.end method

.method public showRcCalibrationUi()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    .line 507
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 508
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mx8RockerCalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->setIx8CalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V

    .line 509
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->openUi()V

    .line 510
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 511
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->RCCALIBRATION:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 512
    return-void
.end method

.method public showRcMatchCodeView()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcMatchCodeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    .line 518
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcMatchCodeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mx8RockerCalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->setIx8CalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V

    .line 519
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcMatchCodeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->openUi()V

    .line 520
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcMatchCodeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 521
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->RCMATCHCODE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 522
    return-void
.end method

.method public showRockerModeUi()V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->rcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    .line 528
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mx8RockerCalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V

    .line 529
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 530
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->showItem()V

    .line 531
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8RockerModeController:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 532
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->ROCKERMODE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 534
    return-void
.end method

.method public showSensitivityUi()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->firstContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 446
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->secondContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcSensitivitySettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .line 447
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcSensitivitySettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mX8CalibrationListener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V

    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcSensitivitySettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 449
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcSensitivitySettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->showItem()V

    .line 450
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8FcSensitivitySettingController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    .line 451
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;->SENSITIVITY:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mSecondMenu:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$SecondMenu;

    .line 453
    return-void
.end method

.method public startGimbalCalibaration()V
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showGimbalCalibarationUi()V

    .line 640
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->x8CloudCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->startCalibration()V

    .line 641
    return-void
.end method

.method public unMountError(Z)V
    .locals 1
    .param p1, "mountError"    # Z

    .prologue
    .line 841
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->mCurrentSecondController:Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->unMountError(Z)V

    .line 844
    :cond_0
    return-void
.end method
