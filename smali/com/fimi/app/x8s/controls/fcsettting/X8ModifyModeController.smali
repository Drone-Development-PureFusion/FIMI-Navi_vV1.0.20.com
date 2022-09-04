.class public Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8ModifyModeController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;
    }
.end annotation


# instance fields
.field private aircraftCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

.field private apkVersionManager:Lcom/fimi/network/ApkVersionManager;

.field private back_btn:Landroid/widget/ImageView;

.field private blackBoxLayout:Landroid/widget/RelativeLayout;

.field private blackBoxLogLayout:Landroid/widget/RelativeLayout;

.field private blackBoxView:Landroid/view/View;

.field private calibrationView:Landroid/view/View;

.field private calibrationViewStub:Landroid/view/ViewStub;

.field private calibration_btn:Landroid/widget/Button;

.field private checkLayout:Landroid/widget/RelativeLayout;

.field private checkView:Landroid/view/View;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private gimbalSensorView:Landroid/view/View;

.field private gimbalSensorViewStub:Landroid/view/ViewStub;

.field private itemLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private mFormatState:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

.field private mFormatStorage:Landroid/widget/RelativeLayout;

.field private mGimbalSensorController:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

.field private mGimbalSensorLayout:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIvFormatStorage:Landroid/widget/ImageView;

.field private mLoadManage:Lcom/fimi/widget/CustomLoadManage;

.field private mPbFormat:Landroid/widget/ProgressBar;

.field private mTvFormatDec:Landroid/widget/TextView;

.field private mTvFormatTitle:Landroid/widget/TextView;

.field private mX8BlackBoxController:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

.field private mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

.field private nextContentLayout:Landroid/widget/RelativeLayout;

.field private sensorController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

.field private sensorLayout:Landroid/widget/RelativeLayout;

.field private sensorView:Landroid/view/View;

.field private sensorViewStub:Landroid/view/ViewStub;

.field private topLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private x8AircraftCalibrationLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 53
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatState:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 79
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/fimi/network/ApkVersionManager;

    invoke-direct {v0}, Lcom/fimi/network/ApkVersionManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->apkVersionManager:Lcom/fimi/network/ApkVersionManager;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatState:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatState:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->setFormatLogStorage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->calibrationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->calibrationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->aircraftCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->aircraftCalibrationController:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->gimbalSensorViewStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Landroid/view/ViewStub;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->gimbalSensorViewStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->gimbalSensorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->gimbalSensorView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mGimbalSensorController:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mGimbalSensorController:Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorViewStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Landroid/view/ViewStub;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorViewStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->setFormatUpgradeStorage()V

    return-void
.end method

.method static synthetic access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mX8BlackBoxController:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->nextContentLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/widget/CustomLoadManage;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mLoadManage:Lcom/fimi/widget/CustomLoadManage;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->recoverFormatState()V

    return-void
.end method

.method static synthetic access$2900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->getFormatState()V

    return-void
.end method

.method static synthetic access$3000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/network/ApkVersionManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->apkVersionManager:Lcom/fimi/network/ApkVersionManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatStorage:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->x8AircraftCalibrationLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->topLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->itemLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->calibrationViewStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$802(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .param p1, "x1"    # Landroid/view/ViewStub;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->calibrationViewStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method private getFormatState()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;->FORMAT_DEVID_ALL:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;->ordinal()I

    move-result v1

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getFormatStorage(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 372
    return-void
.end method

.method private onFormatStorage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_modify_format_storage1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mIvFormatStorage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatDec:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mPbFormat:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 304
    return-void
.end method

.method private recoverFormatState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 307
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_modify_format_storage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mIvFormatStorage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatDec:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mPbFormat:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 311
    return-void
.end method

.method private setFormatLogStorage()V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->FORMAT_SENIOR:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;->FORMAT_DEVID_LOG:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;

    .line 315
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;->ordinal()I

    move-result v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    .line 314
    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setFormatStorage(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 329
    return-void
.end method

.method private setFormatUpgradeStorage()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->FORMAT_SENIOR:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;->FORMAT_DEVID_UPGRADE:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;

    .line 333
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatDevid;->ordinal()I

    move-result v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$11;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$11;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    .line 332
    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setFormatStorage(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 347
    return-void
.end method


# virtual methods
.method public closeItem()V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeItem()V

    .line 447
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorController:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->closeItem()V

    .line 451
    :cond_0
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->calibration_btn:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->back_btn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mGimbalSensorLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->checkLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->blackBoxLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->blackBoxLogLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatStorage:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 108
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_main_general_item_modify_layout:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->back_btn:Landroid/widget/ImageView;

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_sensor_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorLayout:Landroid/widget/RelativeLayout;

    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_gimbal_sensor_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mGimbalSensorLayout:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_btn_calibration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->calibration_btn:Landroid/widget/Button;

    .line 113
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_check_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->checkLayout:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_blackbox_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->blackBoxLayout:Landroid/widget/RelativeLayout;

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->layout_top:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->topLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 116
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_modify_item_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->itemLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 117
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_blackbox_layout1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->blackBoxLogLayout:Landroid/widget/RelativeLayout;

    .line 118
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_aircraft_calibration_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->x8AircraftCalibrationLayout:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_format_storage_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatStorage:Landroid/widget/RelativeLayout;

    .line 121
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->iv_format_storage:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mIvFormatStorage:Landroid/widget/ImageView;

    .line 122
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_format_storage_dec:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatDec:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_format_storage_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatTitle:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->pb_format_storage:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mPbFormat:Landroid/widget/ProgressBar;

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_next_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->nextContentLayout:Landroid/widget/RelativeLayout;

    .line 129
    return-void
.end method

.method public isRunningTask()Z
    .locals 2

    .prologue
    .line 462
    const/4 v0, 0x1

    .line 463
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mX8BlackBoxController:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mX8BlackBoxController:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->isRunningTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 468
    :cond_0
    return v0
.end method

.method public onBlackBoxBack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->topLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->itemLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;->onClose()V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mX8BlackBoxController:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .line 458
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->nextContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 459
    return-void
.end method

.method public onConnectedState(Lcom/fimi/x8sdk/entity/ConectState;)V
    .locals 0
    .param p1, "state"    # Lcom/fimi/x8sdk/entity/ConectState;

    .prologue
    .line 442
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    .line 421
    if-eqz p1, :cond_1

    .line 422
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 423
    .local v0, "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatStorage:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 425
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mIvFormatStorage:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_param_goto_icon_seletor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatTitle:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 437
    .end local v0    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    :goto_0
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 438
    return-void

    .line 428
    .restart local v0    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatStorage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 429
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mIvFormatStorage:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_camera_goto_icon_press:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 430
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 433
    .end local v0    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatStorage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 434
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mIvFormatStorage:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_camera_goto_icon_press:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 435
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mTvFormatTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->SEND_FORMAT_LOG:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mFormatState:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 291
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mLoadManage:Lcom/fimi/widget/CustomLoadManage;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/fimi/widget/CustomLoadManage;

    invoke-direct {v0}, Lcom/fimi/widget/CustomLoadManage;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mLoadManage:Lcom/fimi/widget/CustomLoadManage;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mLoadManage:Lcom/fimi/widget/CustomLoadManage;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/widget/CustomLoadManage;->showNoClickWithOutProgressBar(Landroid/content/Context;Z)V

    .line 296
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->onFormatStorage()V

    .line 297
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 68
    return-void
.end method

.method public setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V
    .locals 0
    .param p1, "modeControllerListener"    # Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .line 72
    return-void
.end method

.method public setX8GimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "x8GimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 64
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_modify_format_storage_dialog_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_modify_format_storage_dialog_dec:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 280
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 281
    return-void
.end method

.method public showItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->showItem()V

    .line 389
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->apkVersionManager:Lcom/fimi/network/ApkVersionManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$13;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/network/ApkVersionManager;->getAppSetting(Lcom/fimi/network/ApkVersionManager$AppSettingListener;)V

    .line 411
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->handleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->sensorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->topLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->itemLayout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 417
    return-void
.end method
