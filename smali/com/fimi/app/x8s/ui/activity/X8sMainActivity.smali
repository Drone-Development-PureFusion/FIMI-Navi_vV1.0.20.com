.class public Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
.super Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/x8sdk/listener/ConnectListener;
.implements Lcom/fimi/x8sdk/listener/FcHeartListener;
.implements Lcom/fimi/x8sdk/listener/FcSingalListener;
.implements Lcom/fimi/x8sdk/listener/FcBatteryListener;
.implements Lcom/fimi/x8sdk/listener/RelayHeartListener;
.implements Lcom/fimi/x8sdk/listener/FcSportStateListener;
.implements Lcom/fimi/x8sdk/listener/CameraStateListener;
.implements Lcom/fimi/app/x8s/interfaces/IX8SensorListener;
.implements Lcom/fimi/x8sdk/listener/HomeInfoListener;
.implements Lcom/fimi/x8sdk/listener/IX8VcTrackListener;
.implements Lcom/fimi/x8sdk/listener/NavigationStateListener;
.implements Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;
.implements Lcom/fimi/x8sdk/listener/IX8PowerListener;
.implements Lcom/fimi/x8sdk/listener/RightRollerLinstener;
.implements Lcom/fimi/x8sdk/listener/IX8AiStateListener;


# static fields
.field public static final X8GETAILINEID:I = 0xf4241

.field public static final X8GETAILINEIDBYHISTORY:I = 0xf4242


# instance fields
.field activateTTS:Z

.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field coverListener:Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

.field private isSendFlightLog:Z

.field private ivInterestMeteringVisibilityState:I

.field private ix8CameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

.field public ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

.field private mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

.field public mIConnectResultListener:Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

.field public mIX8GeneralItemControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

.field public mIX8GestureListener:Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

.field public mIX8MapVideoControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;

.field private mIX8Point2PointExcuteListener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;

.field private mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

.field private mX8AccurateLandingController:Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;

.field public mX8AiFlyListener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

.field private mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

.field private mX8AiTrackController:Lcom/fimi/app/x8s/controls/X8AiTrackController;

.field public mX8FcAllSettingListener:Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

.field private mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

.field private mX8FpvManager:Lcom/fimi/app/x8s/manager/X8FpvManager;

.field private mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private mX8GimbalViewManager:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

.field private mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private mX8MainAiFollowConfirmController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

.field private mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

.field private mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

.field private mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

.field private mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

.field private mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

.field private mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

.field private mX8PressureGpsManger:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

.field private mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

.field private mX8SensorManager:Lcom/fimi/app/x8s/manager/X8SensorManager;

.field private mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

.field private mainAiExcuteView:Landroid/view/View;

.field public mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

.field private mainRootView:Landroid/view/View;

.field private mainSettingShowView:Landroid/view/View;

.field public mainTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

.field private modeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

.field public personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

.field rightRollerMoveListener:Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;

.field rlCover:Landroid/widget/RelativeLayout;

.field rollerController:Lcom/fimi/app/x8s/controls/RightRollerController;

.field private time:I

.field private x8CameraInterestMeteringController:Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

.field private x8UpdateHintController:Lcom/fimi/app/x8s/controls/X8UpdateHintController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;-><init>()V

    .line 179
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->NORMAL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    .line 482
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIX8GestureListener:Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    .line 555
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$3;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$3;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    .line 563
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    .line 633
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$5;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .line 692
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$6;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$6;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->rightRollerMoveListener:Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;

    .line 704
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIX8MapVideoControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;

    .line 725
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiFlyListener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    .line 873
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->time:I

    .line 992
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$10;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$10;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcAllSettingListener:Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    .line 1044
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$11;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$11;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->coverListener:Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

    .line 1057
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$12;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIX8GeneralItemControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    .line 1244
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIX8Point2PointExcuteListener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;

    .line 1264
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$15;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$15;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIConnectResultListener:Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .line 1303
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->ix8CameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .line 1395
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/enums/X8ScreenEnum;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p1, "x1"    # Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8RightIconForMapController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->ivInterestMeteringVisibilityState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->ivInterestMeteringVisibilityState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalViewManager:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFollowConfirmController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fiveKeyDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->x8CameraInterestMeteringController:Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainAiFlyController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    return-object v0
.end method

.method private fiveKeyDisabled()Z
    .locals 3

    .prologue
    .line 1520
    const/4 v0, 0x0

    .line 1521
    .local v0, "disabled":Z
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->activateTTS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->isTaskRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->isShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1522
    :cond_0
    const/4 v0, 0x1

    .line 1526
    :goto_0
    return v0

    .line 1524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public aiState(Z)V
    .locals 1
    .param p1, "isRunning"    # Z

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setAiRunning(Z)V

    .line 1613
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->setAiRunning(Z)V

    .line 1614
    return-void
.end method

.method public appFullSceen(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 527
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->closeUi()V

    .line 528
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->disShowSmall()V

    .line 542
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 531
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->openUi()V

    .line 532
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->openUi()V

    .line 533
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUi()V

    .line 534
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->openUiForSetting()V

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->switchByCloseFullScreen(Z)V

    .line 539
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->switchByCloseFullScreen(Z)V

    .line 540
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->resetShow()V

    goto :goto_0
.end method

.method public cameraStatusListener(Z)V
    .locals 1
    .param p1, "hasToken"    # Z

    .prologue
    .line 978
    if-eqz p1, :cond_0

    .line 979
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->defaultVal()V

    .line 983
    :cond_0
    return-void
.end method

.method public changeCamera(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 465
    return-void
.end method

.method public changeDirection(Lcom/fimi/x8sdk/dataparser/AckRightRoller;)V
    .locals 1
    .param p1, "ackRightRoller"    # Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->rollerController:Lcom/fimi/app/x8s/controls/RightRollerController;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->rollerController:Lcom/fimi/app/x8s/controls/RightRollerController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/RightRollerController;->changeRightRolloer(Lcom/fimi/x8sdk/dataparser/AckRightRoller;)V

    .line 1581
    :cond_0
    return-void
.end method

.method public closeByAiFly()V
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->closeUi()V

    .line 805
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->closeUi()V

    .line 806
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->closeUi()V

    .line 807
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->closeUi()V

    .line 808
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->closeUiForSetting()V

    .line 809
    return-void
.end method

.method public closeOther2FCAllSetting()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->closeUi()V

    .line 625
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->closeUi()V

    .line 626
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->closeUi()V

    .line 627
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->closeUiForSetting()V

    .line 628
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->closeUi()V

    .line 629
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->setErrorViewEnableShow(Z)V

    .line 630
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->disShowSmall()V

    .line 631
    return-void
.end method

.method public cloudUnMountError(Z)V
    .locals 1
    .param p1, "unMount"    # Z

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->unMountError(Z)V

    .line 1393
    :cond_0
    return-void
.end method

.method public getCameraManager()Lcom/fimi/x8sdk/controller/CameraManager;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    return-object v0
.end method

.method public getFcManager()Lcom/fimi/x8sdk/controller/FcManager;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    return-object v0
.end method

.method public getGimbalManager()Lcom/fimi/x8sdk/controller/X8GimbalManager;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    return-object v0
.end method

.method public getTaskManger()Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    return-object v0
.end method

.method public getX8MainFcAllSettingControler()Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    return-object v0
.end method

.method public getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    return-object v0
.end method

.method public getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTrackController:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    return-object v0
.end method

.method public getmX8GimbalManager()Lcom/fimi/x8sdk/controller/X8GimbalManager;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    return-object v0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    new-instance v0, Lcom/fimi/app/x8s/entity/X8AiModeState;

    invoke-direct {v0}, Lcom/fimi/app/x8s/entity/X8AiModeState;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->modeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    .line 230
    sget v0, Lcom/fimi/app/x8s/R$id;->x8s_main_view:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    .line 232
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_x8_ai_excute:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainAiExcuteView:Landroid/view/View;

    .line 233
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_x8_setting_show_view:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainSettingShowView:Landroid/view/View;

    .line 235
    new-instance v0, Lcom/fimi/app/x8s/controls/X8MapVideoController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1, p1, p0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;-><init>(Landroid/view/View;Landroid/os/Bundle;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIX8MapVideoControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;)V

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V

    .line 240
    new-instance v0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setX8sMainActivity(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V

    .line 245
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    .line 246
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->closeUi()V

    .line 248
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->x8CameraInterestMeteringController:Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    .line 249
    new-instance v0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1, p0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    .line 251
    new-instance v0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->modeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    invoke-direct {v0, v1, p0, v2}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/entity/X8AiModeState;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;)V

    .line 254
    new-instance v0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-static {v0}, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->setErrorCodeHolder(Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;)V

    .line 257
    new-instance v0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiFlyListener:Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    invoke-virtual {v0, p0, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setX8AiFlyListener(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;)V

    .line 260
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .line 261
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AccurateLandingController:Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;

    .line 262
    new-instance v0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->modeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;Lcom/fimi/app/x8s/entity/X8AiModeState;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    .line 265
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcAllSettingListener:Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->setListener(Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;)V

    .line 268
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFollowConfirmController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .line 269
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFollowConfirmController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->setAcitivity(Landroid/app/Activity;)V

    .line 271
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIX8GeneralItemControllerListerner:Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->setX8GeneralItemControllerListerner(Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;)V

    .line 272
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->setMapVideoController(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V

    .line 274
    new-instance v0, Lcom/fimi/app/x8s/manager/X8SensorManager;

    invoke-direct {v0, p0, p0}, Lcom/fimi/app/x8s/manager/X8SensorManager;-><init>(Landroid/app/Activity;Lcom/fimi/app/x8s/interfaces/IX8SensorListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8SensorManager:Lcom/fimi/app/x8s/manager/X8SensorManager;

    .line 276
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainAiExcuteView:Landroid/view/View;

    invoke-direct {v0, v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    .line 278
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setIX8AiStateListener(Lcom/fimi/x8sdk/listener/IX8AiStateListener;)V

    .line 280
    new-instance v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mainSettingShowView:Landroid/view/View;

    invoke-direct {v0, v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;-><init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalViewManager:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    .line 283
    new-instance v0, Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-direct {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTrackController:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    .line 284
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTrackController:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0, p0, v1}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->init(Landroid/app/Activity;Lcom/fimi/app/x8s/controls/X8MapVideoController;)V

    .line 286
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIX8GestureListener:Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->setX8GestureListener(Lcom/fimi/app/x8s/interfaces/IX8GestureListener;)V

    .line 288
    new-instance v0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-direct {v0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8PressureGpsManger:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    .line 290
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerConnectListener(Lcom/fimi/x8sdk/listener/ConnectListener;)V

    .line 291
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerVcTrackListener(Lcom/fimi/x8sdk/listener/IX8VcTrackListener;)V

    .line 292
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIConnectResultListener:Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;)V

    .line 294
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerCameraStateListener(Lcom/fimi/x8sdk/listener/CameraStateListener;)V

    .line 295
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerNavigationStateListener(Lcom/fimi/x8sdk/listener/NavigationStateListener;)V

    .line 296
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerListener(Lcom/fimi/x8sdk/listener/FcHeartListener;)V

    .line 297
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerRightRollerListener(Lcom/fimi/x8sdk/listener/RightRollerLinstener;)V

    .line 298
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerFcSingalListener(Lcom/fimi/x8sdk/listener/FcSingalListener;)V

    .line 299
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerFCBattery(Lcom/fimi/x8sdk/listener/FcBatteryListener;)V

    .line 300
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerHomeListener(Lcom/fimi/x8sdk/listener/HomeInfoListener;)V

    .line 301
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerSportState(Lcom/fimi/x8sdk/listener/FcSportStateListener;)V

    .line 302
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerRelayHeartListener(Lcom/fimi/x8sdk/listener/RelayHeartListener;)V

    .line 303
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->registerX8ErrorCodeListener(Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;)V

    .line 304
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/modulestate/StateManager;->setPowerListener(Lcom/fimi/x8sdk/listener/IX8PowerListener;)V

    .line 305
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->ix8PanoramicInformationListener:Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->setIx8PanoramicInformationListener(Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;)V

    .line 307
    const/16 v0, 0x66

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    new-instance v2, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$1;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/fimi/x8sdk/util/XPermission;->requestPermissions(Landroid/content/Context;I[Ljava/lang/String;Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;)V

    .line 319
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setPersonLacationListener(Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;)V

    .line 320
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->getGridLine()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->showGridLine(I)V

    .line 321
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->initAllModulManager()V

    .line 323
    new-instance v0, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;-><init>(Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;Lcom/fimi/x8sdk/controller/CameraManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    .line 324
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->setFiveKeyManager(Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;)V

    .line 326
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->setX8MainCameraSettingController(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V

    .line 327
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->setFiveKeyDefineManager(Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;)V

    .line 328
    new-instance v0, Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->x8UpdateHintController:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    .line 331
    invoke-static {}, Lcom/fimi/x8sdk/process/RelayProcess;->getRelayProcess()Lcom/fimi/x8sdk/process/RelayProcess;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/process/RelayProcess;->registerListener(Lcom/fimi/x8sdk/listener/RelayHeartListener;)V

    .line 332
    invoke-static {}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->getInstance()Lcom/fimi/x8sdk/controller/ConnectRcManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->connectRC(Landroid/content/Context;)V

    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8SensorManager:Lcom/fimi/app/x8s/manager/X8SensorManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8SensorManager;->registerListener()V

    .line 336
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->startUpdateTimer()V

    .line 337
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_cover:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->rlCover:Landroid/widget/RelativeLayout;

    .line 338
    return-void
.end method

.method public initAllModulManager()V
    .locals 6

    .prologue
    .line 341
    new-instance v0, Lcom/fimi/x8sdk/controller/FcManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/FcManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 342
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/controller/FcManager;->setContext(Landroid/content/Context;)V

    .line 343
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8PressureGpsManger:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->setFcManger(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 344
    new-instance v0, Lcom/fimi/x8sdk/controller/X8VcManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/X8VcManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    .line 345
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/controller/X8VcManager;->setContext(Landroid/content/Context;)V

    .line 346
    new-instance v0, Lcom/fimi/x8sdk/controller/X8GimbalManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/X8GimbalManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 347
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setContext(Landroid/content/Context;)V

    .line 348
    invoke-static {}, Lcom/fimi/x8sdk/controller/CameraManager;->getInstansCameraManager()Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 349
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setContext(Landroid/content/Context;)V

    .line 350
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->x8CameraInterestMeteringController:Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 351
    new-instance v0, Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 352
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setContext(Landroid/content/Context;)V

    .line 355
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 356
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTrackController:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->setVcManager(Lcom/fimi/x8sdk/controller/X8VcManager;)V

    .line 357
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 358
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 359
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 360
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 362
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFollowConfirmController:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIX8Point2PointExcuteListener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->setPoint2PointExcuteListener(Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 363
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 365
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->ix8CameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->setCameraMainSetListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V

    .line 366
    invoke-static {}, Lcom/fimi/x8sdk/controller/AllSettingManager;->getInstance()Lcom/fimi/x8sdk/controller/AllSettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/AllSettingManager;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 367
    invoke-static {}, Lcom/fimi/x8sdk/process/RelayProcess;->getRelayProcess()Lcom/fimi/x8sdk/process/RelayProcess;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/process/RelayProcess;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 369
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->setGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V

    .line 370
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->setFiveKeyDefineGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V

    .line 372
    new-instance v0, Lcom/fimi/app/x8s/manager/X8FpvManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8VcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/manager/X8FpvManager;-><init>(Lcom/fimi/x8sdk/controller/X8VcManager;Lcom/fimi/app/x8s/controls/X8MapVideoController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FpvManager:Lcom/fimi/app/x8s/manager/X8FpvManager;

    .line 373
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setManager(Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 374
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->coverListener:Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->setRlCoverListener(Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;)V

    .line 376
    new-instance v0, Lcom/fimi/app/x8s/controls/RightRollerController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->rightRollerMoveListener:Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/RightRollerController;-><init>(Lcom/fimi/x8sdk/controller/CameraManager;Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;Landroid/content/Context;Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->rollerController:Lcom/fimi/app/x8s/controls/RightRollerController;

    .line 377
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 469
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 470
    const v3, 0xf4241

    if-ne p1, v3, :cond_0

    if-ne p2, v4, :cond_0

    .line 471
    const-string v3, "id"

    invoke-virtual {p3, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 472
    .local v0, "lineId":J
    const-string/jumbo v3, "type"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 473
    .local v2, "type":I
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v3, v0, v1, v2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onLinesConfirmOkByHistory(JI)V

    .line 475
    .end local v0    # "lineId":J
    .end local v2    # "type":I
    :cond_0
    const v3, 0xf4242

    if-ne p1, v3, :cond_1

    if-ne p2, v4, :cond_1

    .line 476
    const-string v3, "id"

    invoke-virtual {p3, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 477
    .restart local v0    # "lineId":J
    const-string/jumbo v3, "type"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 478
    .restart local v2    # "type":I
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->switchLine(JI)V

    .line 480
    .end local v0    # "lineId":J
    .end local v2    # "type":I
    :cond_1
    return-void
.end method

.method public onAiFlyClick()V
    .locals 2

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->closeAiUi(Z)V

    .line 1602
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->showAiUi()V

    .line 1603
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->closeUi()V

    .line 1604
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->closeUi()V

    .line 1605
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->closeUi()V

    .line 1606
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->closeUiForSetting()V

    .line 1607
    return-void
.end method

.method public onBatteryListener(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V
    .locals 1
    .param p1, "autoFcBattery"    # Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->onBatteryListener(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V

    .line 1119
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->onBatteryReceiveListener(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V

    .line 1121
    return-void
.end method

.method public onConnectedState(Lcom/fimi/x8sdk/entity/ConectState;)V
    .locals 4
    .param p1, "state"    # Lcom/fimi/x8sdk/entity/ConectState;

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 878
    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectRelay()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 879
    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->onConnectedState(Lcom/fimi/x8sdk/entity/ConectState;)V

    .line 883
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->onDroneConnected(Z)V

    .line 884
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->onDroneConnected(Z)V

    .line 885
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->onDroneConnected(Z)V

    .line 886
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->onDroneConnected(Z)V

    .line 887
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->showVideoBg(Z)V

    .line 888
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalViewManager:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->onDroneConnected(Z)V

    .line 889
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FpvManager:Lcom/fimi/app/x8s/manager/X8FpvManager;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/manager/X8FpvManager;->onDroneConnectState(Z)V

    .line 890
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->onDroneConnected(Z)V

    .line 891
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->time:I

    if-nez v0, :cond_3

    .line 892
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$9;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->syncTime(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 897
    iput v3, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->time:I

    .line 901
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AccurateLandingController:Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->onDroneConnected(Z)V

    .line 902
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->onDroneConnected(Z)V

    .line 903
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8PressureGpsManger:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->startTask()V

    .line 904
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->x8UpdateHintController:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->setPresenterLockMotor()V

    .line 905
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->isSendFlightLog:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getRcCtrlMode()V

    .line 912
    :cond_0
    iput-boolean v3, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->isSendFlightLog:Z

    .line 916
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->isSendFlightLog:Z

    .line 945
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->onRcConnected(Z)V

    .line 973
    :goto_2
    return-void

    .line 899
    :cond_3
    iput v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->time:I

    goto :goto_0

    .line 921
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->defaultVal()V

    .line 922
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->defaultVal()V

    .line 923
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->defaultVal()V

    .line 924
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->onDisconnectDroneVal()V

    .line 925
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->defaultVal()V

    .line 926
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->defaultVal()V

    .line 927
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->setToken(I)V

    .line 929
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->onDroneConnected(Z)V

    .line 930
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->onDroneConnected(Z)V

    .line 931
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->onDroneConnected(Z)V

    .line 932
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->onDroneConnected(Z)V

    .line 933
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalViewManager:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->onDroneConnected(Z)V

    .line 934
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->showVideoBg(Z)V

    .line 935
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->resetAppScreenForDisconnect()V

    .line 936
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FpvManager:Lcom/fimi/app/x8s/manager/X8FpvManager;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/manager/X8FpvManager;->onDroneConnectState(Z)V

    .line 937
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->reset()V

    .line 938
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->onDroneConnected(Z)V

    .line 939
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AccurateLandingController:Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->onDroneConnected(Z)V

    .line 940
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->onDroneConnected(Z)V

    .line 941
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8PressureGpsManger:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->stopTask()V

    .line 942
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->isSendFlightLog:Z

    goto :goto_1

    .line 948
    :cond_5
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->reset()V

    .line 949
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->defaultVal()V

    .line 950
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->defaultVal()V

    .line 951
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->defaultVal()V

    .line 952
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->defaultVal()V

    .line 953
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->defaultVal()V

    .line 954
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->defaultVal()V

    .line 955
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->setToken(I)V

    .line 956
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->onDroneConnected(Z)V

    .line 957
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->defaultVal()V

    .line 958
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->onDroneConnected(Z)V

    .line 959
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->onDroneConnected(Z)V

    .line 960
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->onDroneConnected(Z)V

    .line 961
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->showVideoBg(Z)V

    .line 962
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->onRcConnected(Z)V

    .line 963
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8GimbalViewManager:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->onDroneConnected(Z)V

    .line 964
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->resetAppScreenForDisconnect()V

    .line 965
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FpvManager:Lcom/fimi/app/x8s/manager/X8FpvManager;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/manager/X8FpvManager;->onDroneConnectState(Z)V

    .line 967
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->onDroneConnected(Z)V

    .line 968
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AccurateLandingController:Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->onDroneConnected(Z)V

    .line 969
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->onDroneConnected(Z)V

    .line 970
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8PressureGpsManger:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->stopTask()V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x1

    .line 207
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->requestWindowFeature(I)Z

    .line 209
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 210
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 212
    sget v0, Lcom/fimi/app/x8s/R$layout;->activity_x8s_main:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->setContentView(I)V

    .line 213
    sput-boolean v2, Lcom/fimi/app/x8s/X8Application;->isAoaTopActivity:Z

    .line 214
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->NORMAL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    .line 215
    sput-boolean v2, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    .line 216
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->init(Landroid/os/Bundle;)V

    .line 217
    sget-boolean v0, Lcom/fimi/x8sdk/rtp/X8Rtp;->simulationTest:Z

    if-nez v0, :cond_0

    .line 218
    sget-boolean v0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->appTest:Z

    if-eqz v0, :cond_0

    .line 219
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_error_codeTest:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 449
    invoke-super {p0}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onDestroy()V

    .line 450
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onDestroy()V

    .line 451
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->removeAllListener()V

    .line 452
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mIConnectResultListener:Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->removeNoticeList(Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;)V

    .line 453
    invoke-static {}, Lcom/fimi/x8sdk/process/RelayProcess;->getRelayProcess()Lcom/fimi/x8sdk/process/RelayProcess;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/x8sdk/process/RelayProcess;->removeListener(Lcom/fimi/x8sdk/listener/RelayHeartListener;)V

    .line 455
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8SensorManager:Lcom/fimi/app/x8s/manager/X8SensorManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8SensorManager;->unRegisterListener()V

    .line 456
    invoke-static {}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->getInstance()Lcom/fimi/x8sdk/controller/ConnectRcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->unConnectRC()V

    .line 457
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/app/x8s/X8Application;->isAoaTopActivity:Z

    .line 458
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->setToken(I)V

    .line 460
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->stopUpdateTimer()V

    .line 462
    return-void
.end method

.method public onErrorCode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1382
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->activateTTS:Z

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->onErrorCode(Ljava/util/List;)V

    .line 1385
    :cond_0
    return-void
.end method

.method public onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V
    .locals 1
    .param p1, "fcHeart"    # Lcom/fimi/x8sdk/dataparser/AutoFcHeart;
    .param p2, "isLowPower"    # Z

    .prologue
    .line 987
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V

    .line 988
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V

    .line 989
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V

    .line 990
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1210
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1220
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->rlCover:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    .line 1221
    .local v0, "visibility":I
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1222
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isRunningTask()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 1227
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1230
    .end local v0    # "visibility":I
    :goto_1
    return v1

    .line 1225
    .restart local v0    # "visibility":I
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainFcAllSettingControler:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeFcSettingUi(Z)V

    goto :goto_0

    .line 1230
    .end local v0    # "visibility":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onNavigationState(Lcom/fimi/x8sdk/modulestate/DroneState;)V
    .locals 0
    .param p1, "droneState"    # Lcom/fimi/x8sdk/modulestate/DroneState;

    .prologue
    .line 1241
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 428
    invoke-super {p0}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onPause()V

    .line 429
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onPause()V

    .line 430
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->onPause()V

    .line 431
    return-void
.end method

.method public onPowerChange(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->onPowerChange(I)V

    .line 1574
    return-void
.end method

.method public onRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V
    .locals 1
    .param p1, "autoRelayHeart"    # Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->showRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V

    .line 1126
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 390
    invoke-static {p1, p2, p3}, Lcom/fimi/x8sdk/util/XPermission;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 391
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onResume()V

    .line 407
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onResume()V

    .line 408
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->onResume()V

    .line 409
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->x8UpdateHintController:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->queryCurSystemStatus()V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->activateTTS:Z

    .line 411
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 438
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 439
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 440
    return-void
.end method

.method public onSensorChanged(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->isMapInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onSensorChanged(F)V

    .line 1199
    :cond_0
    return-void
.end method

.method public onShowAiFlyIcon()V
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->openUiForSetting()V

    .line 1585
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 396
    invoke-super {p0}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onStart()V

    .line 399
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 417
    invoke-super {p0}, Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;->onStop()V

    .line 418
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const/high16 v1, -0x3b860000    # -1000.0f

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->setOriginalDistance(F)V

    .line 419
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/X8FcLogManager;->closeFileOutputStream()V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->activateTTS:Z

    .line 421
    return-void
.end method

.method public onTaskBack()V
    .locals 2

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1556
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->openUi()V

    .line 1557
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1558
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUi()V

    .line 1559
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->openUi()V

    .line 1560
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 1561
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->showCameraView(Z)V

    .line 1562
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->openUiForSetting()V

    .line 1563
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->resetShow()V

    .line 1564
    return-void
.end method

.method public onTaskComplete(ZLjava/lang/String;)V
    .locals 2
    .param p1, "showText"    # Z
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1530
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 1531
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->openUiForSetting()V

    .line 1532
    if-eqz p1, :cond_0

    .line 1533
    invoke-static {p0, p2, v1}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1535
    :cond_0
    return-void
.end method

.method public onTaskRunning()V
    .locals 2

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1539
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->openUi()V

    .line 1540
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1541
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUi()V

    .line 1542
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->openUi()V

    .line 1543
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherStateRunning()V

    .line 1544
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->showCameraView(Z)V

    .line 1545
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->closeUiForTaskRunning()V

    .line 1547
    return-void
.end method

.method public onTestErrorCode(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1588
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_pow:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1589
    .local v0, "etPow":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1590
    .local v1, "strN":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1591
    const-string v1, "0"

    .line 1593
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1594
    .local v2, "n":J
    invoke-static {v2, v3}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->setErrorCode(J)V

    .line 1595
    return-void
.end method

.method public onTracking(Lcom/fimi/x8sdk/dataparser/AutoVcTracking;)V
    .locals 1
    .param p1, "tracking"    # Lcom/fimi/x8sdk/dataparser/AutoVcTracking;

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTrackController:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->onTracking(Lcom/fimi/x8sdk/dataparser/AutoVcTracking;)V

    .line 1237
    return-void
.end method

.method public resetAppScreenForDisconnect()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    if-ne v0, v1, :cond_0

    .line 869
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->appFullSceen(Z)V

    .line 870
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->NORMAL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    .line 872
    :cond_0
    return-void
.end method

.method public runFixedwing()V
    .locals 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1510
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->openUi()V

    .line 1511
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1512
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUi()V

    .line 1513
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->openUi()V

    .line 1514
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherStateRunning()V

    .line 1515
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->showCameraView(Z)V

    .line 1516
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->closeUiForTaskRunning()V

    .line 1517
    return-void
.end method

.method public showAiFollowView(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 819
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchDrawingOrderForAiFollow()V

    .line 820
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->openAiFollow(I)V

    .line 821
    return-void
.end method

.method public showAiGravitationView()V
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 813
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->openAiGravitation()V

    .line 814
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 815
    return-void
.end method

.method public showAiLineView(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 855
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 856
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->openAiLine(IJ)V

    .line 857
    return-void
.end method

.method public showAiLineView(IJI)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "lineId"    # J
    .param p4, "type"    # I

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 848
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->openAiLine(IJ)V

    .line 849
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 850
    return-void
.end method

.method public showAiPoint2PointView()V
    .locals 2

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 825
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchByPoint2PointMap()V

    .line 826
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->openAiD2Point()V

    .line 827
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 828
    return-void
.end method

.method public showAiScrewView()V
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 840
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchBySurroundMap()V

    .line 841
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->initScrewExcuteController()V

    .line 842
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 844
    return-void
.end method

.method public showAiSurroundView()V
    .locals 2

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 832
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchBySurroundMap()V

    .line 833
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->openAiSurround()V

    .line 834
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 836
    return-void
.end method

.method public showAutoPhtoView(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeByAiFly()V

    .line 861
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchByAiLineVideo()V

    .line 862
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->openAiAutoPhoto(I)V

    .line 863
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setOtherShow(Z)V

    .line 865
    return-void
.end method

.method public showCamState(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 6
    .param p1, "cameraStateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1161
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getMode()I

    move-result v0

    .line 1164
    .local v0, "model":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 1166
    :cond_2
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v4, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v1, v4, :cond_3

    .line 1168
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sput-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 1178
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getState()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 1179
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sput-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 1182
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->showCameraState(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    .line 1183
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->showCamState(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    .line 1184
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->showCameraStatus(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    .line 1185
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->showCameraStatus(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    .line 1187
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getInfo()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    move v1, v2

    .line 1188
    :goto_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getInfo()I

    move-result v4

    if-ne v4, v5, :cond_8

    move v4, v2

    :goto_3
    or-int/2addr v1, v4

    .line 1189
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getInfo()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    :goto_4
    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1190
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/base/EventMessage;

    const-string/jumbo v4, "x8_camera_state_event_key"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/fimi/kernel/base/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 1171
    :cond_5
    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x21

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    .line 1173
    :cond_6
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v4, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v1, v4, :cond_3

    .line 1175
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sput-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    goto :goto_1

    :cond_7
    move v1, v3

    .line 1187
    goto :goto_2

    :cond_8
    move v4, v3

    .line 1188
    goto :goto_3

    :cond_9
    move v2, v3

    .line 1189
    goto :goto_4
.end method

.method public showGimbalState(Lcom/fimi/x8sdk/modulestate/GimbalState;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/x8sdk/modulestate/GimbalState;

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainBottomParameterController:Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->showSportState(Lcom/fimi/x8sdk/modulestate/GimbalState;)V

    .line 1155
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8FiveKeyHintController:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->showSportState(Lcom/fimi/x8sdk/modulestate/GimbalState;)V

    .line 1157
    return-void
.end method

.method public showHomeInfo(Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;)V
    .locals 6
    .param p1, "homeInfo"    # Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->isMapInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->getFLatLng()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->getFLatLng()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v1

    iget-wide v4, v1, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setHomeLocation(DD)V

    .line 1206
    :cond_0
    return-void
.end method

.method public showSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V
    .locals 1
    .param p1, "signalState"    # Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->showSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V

    .line 1114
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 6
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 1131
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->isMapInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->addDeviceLocation(DD)V

    .line 1134
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$13;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$13;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getNoFlyNormal(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1140
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->addFlyPolyline(DD)V

    .line 1141
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDeviceAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->chaneDeviceAngle(F)V

    .line 1142
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mMapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->moveCameraByDevice()V

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->showAiView()V

    .line 1147
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8AiTaskManager:Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 1148
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 1149
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 1150
    return-void
.end method

.method public showTopByGimbalHorizontalTrim()V
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainTopBarController:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1568
    return-void
.end method

.method public taskFullScreen(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->appFullSceen(Z)V

    .line 547
    if-eqz p1, :cond_0

    .line 548
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    .line 553
    :goto_0
    return-void

    .line 550
    :cond_0
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->NORMAL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mAppScreen:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    .line 551
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->mX8MainRightMenuController:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setAiFly(Z)V

    goto :goto_0
.end method
