.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;
.super Ljava/lang/Object;
.source "X8AiLinesExcuteConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/fimi/widget/SwitchButton$OnSwitchListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;
    }
.end annotation


# static fields
.field private static final CURVE_MODE:I = 0x3


# instance fields
.field private DEFAULE_SPEED:F

.field private MAX:F

.field private MAX_PROGRESS:I

.field private MIN:F

.field private aiLineMode:I

.field private btnGo:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private dataByHistory:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private distance:F

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field i:I

.field private imgBack:Landroid/widget/ImageView;

.field isInSky:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private mCurveVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

.field mHandler:Landroid/os/Handler;

.field private mRlCurveVideotape:Landroid/widget/RelativeLayout;

.field private mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

.field private mSbCurve:Lcom/fimi/widget/SwitchButton;

.field private mSbRecord:Lcom/fimi/widget/SwitchButton;

.field private mTvDistanceTitle:Landroid/widget/TextView;

.field private mTvLineFollowTitle:Landroid/widget/TextView;

.field private mX8AiLineExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

.field private mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

.field private mX8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private mapPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

.field private model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

.field private sbSeekBar:Landroid/widget/SeekBar;

.field private successCount:I

.field private tbDisconnect:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tbEnd:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tvDistance:Landroid/widget/TextView;

.field private tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tvPointSize:Landroid/widget/TextView;

.field private tvSpeed:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private vMinus:Landroid/view/View;

.field private vPlus:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MIN:F

    .line 68
    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MAX:F

    .line 70
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MAX:F

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MIN:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MAX_PROGRESS:I

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->distance:F

    .line 82
    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->successCount:I

    .line 83
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    .line 84
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->DEFAULE_SPEED:F

    .line 94
    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    .line 592
    const/4 v1, 0x4

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->i:I

    .line 593
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$11;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$11;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mHandler:Landroid/os/Handler;

    .line 125
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 126
    .local v0, "state":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->isInSky:Z

    move-object v1, p1

    .line 127
    check-cast v1, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 128
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_excute_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    .line 129
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 130
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->initView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->initAction()V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/entity/X8AilinePrameter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AiLineExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dataByHistory:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbRecord:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->startVideo()V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->startAiLineSetPoint(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->stopVideo()V

    return-void
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    return-object v0
.end method

.method private sendRecordMode()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 363
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 364
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCurveVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "normal_record"

    const-string v2, "record_mode"

    new-instance v3, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$6;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 384
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCurveVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v1, "5s"

    const-string/jumbo v2, "video_timelapse"

    new-instance v3, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$7;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 379
    :cond_1
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->startAiLineSetPoint(Z)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->startAiLineSetPoint(Z)V

    goto :goto_0
.end method

.method private setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 694
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 695
    .local v0, "progress":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 696
    return-void
.end method

.method private startAiLineSetPoint(Z)V
    .locals 25
    .param p1, "isSaveData2Collector"    # Z

    .prologue
    .line 415
    const/16 v19, 0x0

    .line 416
    .local v19, "orientation":I
    const/4 v12, 0x0

    .line 417
    .local v12, "compeletEvent":I
    const/4 v13, 0x0

    .line 418
    .local v13, "disconnectEvent":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v14

    .line 420
    .local v14, "i":I
    if-nez v14, :cond_7

    .line 422
    const/16 v19, 0x0

    .line 428
    .end local v14    # "i":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v14

    .line 430
    .restart local v14    # "i":I
    if-nez v14, :cond_8

    .line 432
    const/16 v19, 0x0

    .line 443
    .end local v14    # "i":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbDisconnect:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v2

    if-nez v2, :cond_a

    .line 444
    const/4 v13, 0x0

    .line 448
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbEnd:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v2

    if-nez v2, :cond_b

    .line 449
    const/4 v12, 0x0

    .line 455
    :cond_3
    :goto_3
    const/4 v9, 0x0

    .line 456
    .local v9, "altitude":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->successCount:I

    .line 457
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MIN:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    add-float v24, v2, v3

    .line 458
    .local v24, "speed":F
    const/high16 v2, 0x41200000    # 10.0f

    mul-float v2, v2, v24

    float-to-int v0, v2

    move/from16 v22, v0

    .line 459
    .local v22, "s":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v23

    .line 461
    .local v23, "size":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v15, "mCmdAiLinePoints":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v14, v0, :cond_12

    .line 464
    const/4 v10, 0x0

    .line 465
    .local v10, "angle":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 466
    .local v20, "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    new-instance v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;

    invoke-direct {v11}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;-><init>()V

    .line 468
    .local v11, "cmdPoint":Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/fimi/x8sdk/util/GpsCorrect;->Mars_To_Earth0(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v16

    .line 471
    .local v16, "mFlatlng":Lcom/fimi/x8sdk/entity/FLatLng;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v2, :cond_c

    .line 472
    const/4 v2, 0x1

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->pioEnbale:I

    .line 476
    :goto_5
    move-object/from16 v0, v20

    iget v10, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    .line 477
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    .line 478
    move-object/from16 v0, v20

    iget v10, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->angle:F

    .line 481
    :cond_4
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    .line 482
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    float-to-int v2, v2

    mul-int/lit8 v9, v2, 0xa

    .line 483
    new-instance v18, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    invoke-direct/range {v18 .. v18}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;-><init>()V

    .line 484
    .local v18, "mLatlngInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setNumber(I)V

    .line 485
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setTotalnumber(I)V

    .line 486
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLongitude(D)V

    .line 487
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLatitude(D)V

    .line 488
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    float-to-int v2, v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setAltitude(I)V

    .line 489
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->gimbalPitch:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setGimbalPitch(I)V

    .line 490
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setYaw(F)V

    .line 491
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setSpeed(I)V

    .line 492
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setYawMode(I)V

    .line 493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    .line 494
    const/4 v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setPointActionCmd(I)V

    .line 498
    :goto_6
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setRoration(I)V

    .line 499
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v2, :cond_5

    .line 500
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLongitudePOI(D)V

    .line 501
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLatitudePOI(D)V

    .line 503
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    float-to-int v2, v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setAltitudePOI(I)V

    .line 505
    :cond_5
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    move/from16 v0, v22

    iput v0, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->speed:I

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->switchScreenAngle2DroneAngle(F)F

    move-result v2

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->angle:F

    .line 510
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->gimbalPitch:I

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->gimbalPitch:I

    .line 511
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->orientation:I

    .line 512
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->rotation:I

    .line 513
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iput-wide v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->latitude:D

    .line 514
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    iput-wide v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->longitude:D

    .line 515
    iput v9, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->altitude:I

    .line 516
    move/from16 v0, v23

    iput v0, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->count:I

    .line 517
    iput v14, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->nPos:I

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbRecord:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v2}, Lcom/fimi/widget/SwitchButton;->getToggleOn()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_7
    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->autoRecord:I

    .line 520
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-object/from16 v21, v0

    .line 521
    .local v21, "pointInterest":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    if-eqz v21, :cond_6

    .line 522
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/fimi/x8sdk/util/GpsCorrect;->Mars_To_Earth0(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v17

    .line 523
    .local v17, "mFlatlngInterest":Lcom/fimi/x8sdk/entity/FLatLng;
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    iput-wide v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->latitudePIO:D

    .line 524
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    iput-wide v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->longitudePIO:D

    .line 525
    move-object/from16 v0, v21

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->altitudePIO:I

    .line 528
    .end local v17    # "mFlatlngInterest":Lcom/fimi/x8sdk/entity/FLatLng;
    :cond_6
    iput v13, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->disconnectEvent:I

    .line 529
    iput v12, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->compeletEvent:I

    .line 530
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dataByHistory:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dataByHistory:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getIsCurve()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    const/4 v3, 0x1

    :goto_9
    or-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 532
    const/4 v2, 0x1

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->coordinatedTurnOff:I

    .line 539
    :goto_a
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 423
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    .end local v9    # "altitude":I
    .end local v10    # "angle":F
    .end local v11    # "cmdPoint":Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;
    .end local v15    # "mCmdAiLinePoints":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;>;"
    .end local v16    # "mFlatlng":Lcom/fimi/x8sdk/entity/FLatLng;
    .end local v18    # "mLatlngInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .end local v20    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v21    # "pointInterest":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v22    # "s":I
    .end local v23    # "size":I
    .end local v24    # "speed":F
    :cond_7
    const/4 v2, 0x1

    if-ne v14, v2, :cond_0

    .line 425
    const/16 v19, 0x2

    goto/16 :goto_0

    .line 433
    :cond_8
    const/4 v2, 0x1

    if-ne v14, v2, :cond_9

    .line 435
    const/16 v19, 0x2

    goto/16 :goto_1

    .line 436
    :cond_9
    const/4 v2, 0x2

    if-ne v14, v2, :cond_1

    .line 438
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 445
    .end local v14    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbDisconnect:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 446
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 451
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbEnd:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 452
    const/4 v12, 0x4

    goto/16 :goto_3

    .line 474
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    .restart local v9    # "altitude":I
    .restart local v10    # "angle":F
    .restart local v11    # "cmdPoint":Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;
    .restart local v14    # "i":I
    .restart local v15    # "mCmdAiLinePoints":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;>;"
    .restart local v16    # "mFlatlng":Lcom/fimi/x8sdk/entity/FLatLng;
    .restart local v20    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .restart local v22    # "s":I
    .restart local v23    # "size":I
    .restart local v24    # "speed":F
    :cond_c
    const/4 v2, 0x0

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->pioEnbale:I

    goto/16 :goto_5

    .line 496
    .restart local v18    # "mLatlngInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    :cond_d
    move-object/from16 v0, v20

    iget v2, v0, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setPointActionCmd(I)V

    goto/16 :goto_6

    .line 518
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 530
    .restart local v21    # "pointInterest":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    goto :goto_9

    .line 534
    :cond_11
    const/4 v2, 0x0

    iput v2, v11, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;->coordinatedTurnOff:I

    goto :goto_a

    .line 544
    .end local v10    # "angle":F
    .end local v11    # "cmdPoint":Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;
    .end local v16    # "mFlatlng":Lcom/fimi/x8sdk/entity/FLatLng;
    .end local v18    # "mLatlngInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .end local v20    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v21    # "pointInterest":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    move/from16 v0, v19

    iput v0, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->orientation:I

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    move/from16 v0, v22

    iput v0, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->speed:I

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    iput v13, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->disConnectType:I

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    iput v12, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->endType:I

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    iput-object v7, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->list:Ljava/util/List;

    .line 549
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->isInSky:Z

    if-eqz v2, :cond_13

    if-nez p1, :cond_13

    .line 550
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sendPoint(Ljava/util/List;I)V

    .line 560
    :goto_b
    return-void

    .line 552
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    iget v3, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->orientation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    iget v4, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->speed:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    iget v5, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->disConnectType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSaveData:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;

    iget v6, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$SaveData;->endType:I

    move-object/from16 v2, p0

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->saveData(IIIILjava/util/List;Z)V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dataByHistory:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    if-nez v2, :cond_14

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_save_tip:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 556
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onSaveClick()V

    goto :goto_b
.end method

.method private startVideo()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$8;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->startVideo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 399
    return-void
.end method

.method private stopVideo()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$9;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->stopVideo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 412
    return-void
.end method


# virtual methods
.method public changeOrientation(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 221
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 222
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "angle":F
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 225
    .local v2, "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput p1, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    .line 227
    if-nez p1, :cond_0

    .line 228
    invoke-virtual {v2, v0}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    .line 222
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_0
    if-nez v1, :cond_1

    .line 233
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getDeviceLatlng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-result-object v3

    .line 234
    .local v3, "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p0, v3, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->getAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v0

    .line 240
    :goto_2
    invoke-virtual {v2, v0}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    goto :goto_1

    .line 237
    .end local v3    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 238
    .restart local v3    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p0, v3, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->getAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v0

    goto :goto_2

    .line 243
    .end local v0    # "angle":F
    .end local v2    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v3    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->clearAllSmallMarker()V

    .line 244
    if-nez p1, :cond_3

    .line 249
    :goto_3
    return-void

    .line 247
    :cond_3
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->addSmallMarkerByMap(I)V

    goto :goto_3
.end method

.method public changeOrientationForVideo(I)V
    .locals 9
    .param p1, "orientation"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 252
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 253
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "angle":F
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 256
    .local v2, "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iput p1, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->yawMode:I

    .line 258
    if-nez p1, :cond_0

    .line 259
    iput v0, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    .line 253
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    if-ne p1, v8, :cond_2

    .line 261
    if-nez v1, :cond_1

    .line 263
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getDeviceLatlng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-result-object v3

    .line 264
    .local v3, "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p0, v3, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->getAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v0

    .line 270
    :goto_2
    iput v0, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    goto :goto_1

    .line 267
    .end local v3    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_1
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 268
    .restart local v3    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    invoke-virtual {p0, v3, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->getAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v0

    goto :goto_2

    .line 272
    .end local v3    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    iget v5, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->angle:F

    iput v5, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->showAngle:F

    goto :goto_1

    .line 275
    .end local v0    # "angle":F
    .end local v2    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    if-nez p1, :cond_4

    .line 276
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->clearAllSmallMarker()V

    .line 282
    :goto_3
    return-void

    .line 277
    :cond_4
    if-ne p1, v7, :cond_5

    .line 278
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->addOrUpdateSmallMarkerForVideo(I)V

    goto :goto_3

    .line 280
    :cond_5
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->addOrUpdateSmallMarkerForVideo(I)V

    goto :goto_3
.end method

.method public getAllTime(F)F
    .locals 14
    .param p1, "speed"    # F

    .prologue
    .line 732
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 733
    const/4 v13, 0x0

    .line 749
    :cond_0
    return v13

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 736
    .local v12, "size":I
    const/4 v13, 0x0

    .line 737
    .local v13, "time":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 738
    if-nez v11, :cond_2

    .line 739
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v2

    .line 740
    .local v2, "alt":F
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getDeviceLatlng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-result-object v3

    .line 741
    .local v3, "point1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 742
    .local v4, "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget v1, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->getRunTime(FFLcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;F)F

    move-result v0

    add-float/2addr v13, v0

    .line 737
    .end local v2    # "alt":F
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 744
    .end local v3    # "point1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .end local v4    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    add-int/lit8 v1, v11, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 745
    .restart local v3    # "point1":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 746
    .restart local v4    # "point2":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget v6, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iget v7, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    move-object v5, p0

    move-object v8, v3

    move-object v9, v4

    move v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->getRunTime(FFLcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;F)F

    move-result v0

    add-float/2addr v13, v0

    goto :goto_1
.end method

.method public getAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F
    .locals 2
    .param p1, "from"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p2, "to"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 619
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v0

    .line 620
    .local v0, "angle":F
    return v0
.end method

.method public getCameraManager()Lcom/fimi/x8sdk/controller/CameraManager;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    return-object v0
.end method

.method public getRunTime(FFLcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;F)F
    .locals 16
    .param p1, "height"    # F
    .param p2, "alt"    # F
    .param p3, "point1"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p4, "point2"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p5, "speed"    # F

    .prologue
    .line 753
    const/4 v9, 0x0

    .line 755
    .local v9, "temp":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v13}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v13

    invoke-virtual {v13}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v13

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v13, v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getDistance(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v3

    .line 756
    .local v3, "distance":F
    sub-float v13, p1, p2

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_2

    .line 757
    sub-float v9, p1, p2

    .line 758
    const/4 v4, 0x1

    .line 763
    .local v4, "isUp":Z
    :goto_0
    div-float v13, v9, v3

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v2, v14

    .line 764
    .local v2, "degrees":F
    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 765
    .local v6, "radians":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float v5, v13, p5

    .line 766
    .local v5, "sh":F
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float v8, v13, p5

    .line 767
    .local v8, "sv":F
    if-eqz v4, :cond_3

    .line 768
    const/high16 v13, 0x40800000    # 4.0f

    cmpl-float v13, v8, v13

    if-lez v13, :cond_0

    .line 769
    const/high16 v8, 0x40800000    # 4.0f

    .line 777
    :cond_0
    :goto_1
    div-float v12, v9, v8

    .line 778
    .local v12, "tv":F
    div-float v10, v3, v5

    .line 779
    .local v10, "th":F
    move v11, v10

    .line 780
    .local v11, "time":F
    cmpl-float v13, v12, v10

    if-lez v13, :cond_1

    .line 781
    move v11, v12

    .line 783
    :cond_1
    return v11

    .line 760
    .end local v2    # "degrees":F
    .end local v4    # "isUp":Z
    .end local v5    # "sh":F
    .end local v6    # "radians":D
    .end local v8    # "sv":F
    .end local v10    # "th":F
    .end local v11    # "time":F
    .end local v12    # "tv":F
    :cond_2
    sub-float v9, p2, p1

    .line 761
    const/4 v4, 0x0

    .restart local v4    # "isUp":Z
    goto :goto_0

    .line 772
    .restart local v2    # "degrees":F
    .restart local v5    # "sh":F
    .restart local v6    # "radians":D
    .restart local v8    # "sv":F
    :cond_3
    const/high16 v13, 0x40400000    # 3.0f

    cmpl-float v13, v8, v13

    if-lez v13, :cond_0

    .line 773
    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_1
.end method

.method public initAction()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->vMinus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 291
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->vPlus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbCurve:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbRecord:Lcom/fimi/widget/SwitchButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 308
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 135
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->imgBack:Landroid/widget/ImageView;

    .line 136
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mTvLineFollowTitle:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_distance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mTvDistanceTitle:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvPointSize:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->vMinus:Landroid/view/View;

    .line 143
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    .line 144
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->vPlus:Landroid/view/View;

    .line 145
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    .line 146
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_line_curve_videotape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mRlCurveVideotape:Landroid/widget/RelativeLayout;

    .line 147
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ai_line_curve_videotape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCurveVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 148
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mCurveVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 150
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ai_line_rorate1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 171
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ai_line_rorate2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 186
    sget v0, Lcom/fimi/app/x8s/R$id;->tb_disconnect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbDisconnect:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbDisconnect:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 196
    sget v0, Lcom/fimi/app/x8s/R$id;->tb_ai_excute_end:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbEnd:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 197
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbEnd:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 206
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_ai_auto_record:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/SwitchButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbRecord:Lcom/fimi/widget/SwitchButton;

    .line 208
    sget v0, Lcom/fimi/app/x8s/R$id;->swb_ai_curve:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/SwitchButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbCurve:Lcom/fimi/widget/SwitchButton;

    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MAX_PROGRESS:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 210
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbCurve:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbRecord:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 212
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->isInSky:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_save:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 313
    .local v4, "id":I
    sget v5, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v4, v5, :cond_1

    .line 314
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    if-eqz v5, :cond_0

    .line 315
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    sget v5, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v4, v5, :cond_2

    .line 318
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    iget v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MAX_PROGRESS:I

    if-eq v5, v6, :cond_0

    .line 319
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 321
    :cond_2
    sget v5, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v4, v5, :cond_3

    .line 322
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    invoke-interface {v5}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onBackClick()V

    .line 323
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-eqz v5, :cond_0

    .line 324
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    goto :goto_0

    .line 325
    :cond_3
    sget v5, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v4, v5, :cond_0

    .line 326
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v6, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    .line 327
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v8, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 328
    .local v3, "fristPointLatLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v6

    .line 329
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 330
    .local v2, "droneLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v3, v2}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v0

    .line 331
    .local v0, "distance":D
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpl-double v5, v0, v6

    if-lez v5, :cond_4

    .line 332
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->showDialog()V

    goto :goto_0

    .line 334
    :cond_4
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sendRecordMode()V

    goto :goto_0
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sendRecordMode()V

    .line 342
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v5, 0x1

    .line 723
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MIN:F

    int-to-float v3, p2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 724
    .local v0, "speed":F
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-static {v0, v5, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->getAllTime(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 726
    .local v1, "time":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    if-eqz v2, :cond_0

    .line 728
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setSpeed(F)V

    .line 729
    :cond_0
    return-void
.end method

.method public onRight()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->startAiLineSetPoint(Z)V

    .line 347
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 789
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 794
    return-void
.end method

.method public onSwitch(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    .line 799
    if-eqz p2, :cond_0

    .line 800
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbCurve:Lcom/fimi/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbCurve:Lcom/fimi/widget/SwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    goto :goto_0
.end method

.method public saveData(IIIILjava/util/List;Z)V
    .locals 8
    .param p1, "orientation"    # I
    .param p2, "speed"    # I
    .param p3, "disconnectType"    # I
    .param p4, "endType"    # I
    .param p6, "isSaveData2Collector"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 645
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 648
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dataByHistory:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    if-nez v2, :cond_2

    .line 649
    new-instance v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-direct {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;-><init>()V

    .line 650
    .local v0, "lineInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setTime(J)V

    .line 651
    invoke-virtual {v0, p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setType(I)V

    .line 652
    invoke-virtual {v0, p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSpeed(I)V

    .line 653
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->distance:F

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setDistance(F)V

    .line 654
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setIsCurve(I)V

    .line 655
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v2

    sget-object v5, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    if-ne v2, v5, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setMapType(I)V

    .line 656
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v5, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne v2, v5, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setRunByMapOrVedio(I)V

    .line 657
    invoke-virtual {v0, p3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setDisconnectType(I)V

    .line 658
    invoke-virtual {v0, p4}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setExcuteEnd(I)V

    .line 659
    sget-object v2, Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->locality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setLocality(Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbRecord:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v2}, Lcom/fimi/widget/SwitchButton;->getToggleOn()Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v0, v4}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setAutoRecord(I)V

    .line 661
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v2

    invoke-virtual {v2, v0, p5}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->addLineDatas(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;Ljava/util/List;)Z

    move-result v1

    .line 662
    .local v1, "ret":Z
    if-eqz p6, :cond_2

    .line 663
    invoke-virtual {v0, v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSaveFlag(I)V

    .line 664
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->updatelineSaveFlag(IJ)V

    .line 669
    .end local v0    # "lineInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .end local v1    # "ret":Z
    :cond_2
    return-void

    .restart local v0    # "lineInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    :cond_3
    move v2, v4

    .line 654
    goto :goto_0

    :cond_4
    move v2, v4

    .line 655
    goto :goto_1

    :cond_5
    move v2, v4

    .line 656
    goto :goto_2
.end method

.method public sendActionCmdOneByOne()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method public sendActionCmdOneByOne(Ljava/util/List;II)V
    .locals 3
    .param p2, "index"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;>;"
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;IILjava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/x8sdk/controller/FcManager;->setAiLinePointsAction(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1032
    return-void
.end method

.method public sendPoint(Ljava/util/List;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "mCmdAiLinePoints":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sendPointCmdOneByOne(Ljava/util/List;II)V

    .line 566
    :cond_0
    return-void
.end method

.method public sendPointCmdOneByOne(Ljava/util/List;II)V
    .locals 3
    .param p2, "index"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "mCmdAiLinePoints":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;>;"
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$10;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$10;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;IILjava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/x8sdk/controller/FcManager;->setAiLinePoints(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 585
    return-void
.end method

.method public setAiLineMode(I)V
    .locals 0
    .param p1, "aiLineMode"    # I

    .prologue
    .line 1036
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    .line 1037
    return-void
.end method

.method public setDat()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 831
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initView ......."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 833
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getOrientation()I

    move-result v3

    .line 834
    .local v3, "orientation":I
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getDisconnectActioin()I

    move-result v1

    .line 835
    .local v1, "disconnectEvent":I
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getEndAction()I

    move-result v2

    .line 836
    .local v2, "endEvent":I
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getAutoRecorde()I

    move-result v0

    .line 837
    .local v0, "autoRecord":I
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v7, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne v6, v7, :cond_5

    .line 838
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->setVisibility(I)V

    .line 839
    if-nez v3, :cond_3

    .line 841
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 863
    :cond_0
    :goto_0
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disconnectEvent ......."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 865
    if-nez v1, :cond_7

    .line 866
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbDisconnect:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 871
    :cond_1
    :goto_1
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endEvent ......."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 873
    if-nez v2, :cond_8

    .line 874
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbEnd:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 879
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mSbRecord:Lcom/fimi/widget/SwitchButton;

    if-ne v0, v4, :cond_9

    :goto_3
    invoke-virtual {v6, v4}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 880
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getSpeed()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setSpeed(F)V

    .line 881
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setViewValue()V

    .line 883
    return-void

    .line 842
    :cond_3
    if-ne v3, v4, :cond_4

    .line 844
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v9}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    goto :goto_0

    .line 845
    :cond_4
    if-ne v3, v9, :cond_0

    .line 847
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    goto :goto_0

    .line 850
    :cond_5
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->setVisibility(I)V

    .line 851
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orientation ......."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 853
    if-nez v3, :cond_6

    .line 855
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v5}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    goto/16 :goto_0

    .line 856
    :cond_6
    if-ne v3, v9, :cond_0

    .line 858
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orientation .....1111111111111.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 860
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    goto/16 :goto_0

    .line 867
    :cond_7
    if-ne v1, v4, :cond_1

    .line 868
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbDisconnect:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    goto/16 :goto_1

    .line 875
    :cond_8
    if-ne v2, v4, :cond_2

    .line 876
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tbEnd:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v6, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    goto :goto_2

    :cond_9
    move v4, v5

    .line 879
    goto :goto_3
.end method

.method public setDataByHistory(J)V
    .locals 3
    .param p1, "lineId"    # J

    .prologue
    .line 887
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getLineInfoById(J)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    move-result-object v0

    .line 888
    .local v0, "lineInfo":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    if-nez v0, :cond_0

    .line 892
    :goto_0
    return-void

    .line 891
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setDataByHistory(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    goto :goto_0
.end method

.method public setDataByHistory(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dataByHistory:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .line 958
    return-void
.end method

.method public setDistance(F)V
    .locals 5
    .param p1, "distance"    # F

    .prologue
    .line 688
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->distance:F

    .line 689
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 690
    .local v0, "d":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/entity/X8AilinePrameter;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "mapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .param p4, "mX8AilinePrameter"    # Lcom/fimi/app/x8s/entity/X8AilinePrameter;
    .param p5, "mX8AiLineExcuteController"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 115
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 116
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .line 117
    iput-object p4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AilinePrameter:Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    .line 118
    iput-object p5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mX8AiLineExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .line 120
    return-void
.end method

.method public setPointSizeAndDistance(IFLjava/util/List;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;)V
    .locals 4
    .param p1, "aiLinePointSize"    # I
    .param p2, "aiLineDistance"    # F
    .param p4, "model"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;",
            "Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "mapPointList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 807
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 808
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mTvDistanceTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setDistance(F)V

    .line 812
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    .line 813
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvPointSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setViewValue()V

    .line 816
    iput-object p4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->model:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 817
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    if-ne p4, v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation2:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->setVisibility(I)V

    .line 822
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setDat()V

    .line 824
    return-void

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvOrientation1:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPointsAction()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 962
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 963
    .local v4, "size":I
    iput v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->successCount:I

    .line 965
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 967
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapPointList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 968
    .local v3, "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    new-instance v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;-><init>()V

    .line 969
    .local v0, "cmd":Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;
    iput v1, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->pos:I

    .line 970
    iput v4, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->count:I

    .line 971
    iget v5, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    packed-switch v5, :pswitch_data_0

    .line 1006
    :goto_1
    :pswitch_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 975
    :pswitch_1
    sget-object v5, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->HOVER:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->ordinal()I

    move-result v5

    iput v5, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->cmd0:I

    .line 976
    iput v8, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->time:I

    .line 977
    iput v6, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->para0:I

    goto :goto_1

    .line 980
    :pswitch_2
    sget-object v5, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->VIDEO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->ordinal()I

    move-result v5

    iput v5, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->cmd0:I

    .line 981
    iput v8, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->time:I

    .line 982
    iput v6, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->para0:I

    goto :goto_1

    .line 988
    :pswitch_3
    sget-object v5, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->PHOTO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->ordinal()I

    move-result v5

    iput v5, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->cmd0:I

    .line 989
    iput v6, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->time:I

    .line 990
    iput v6, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->para0:I

    goto :goto_1

    .line 993
    :pswitch_4
    sget-object v5, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->HOVER:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->ordinal()I

    move-result v5

    iput v5, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->cmd0:I

    .line 994
    sget-object v5, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->PHOTO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->ordinal()I

    move-result v5

    iput v5, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->cmd1:I

    .line 995
    const/4 v5, 0x5

    iput v5, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->time:I

    .line 996
    iput v6, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->para0:I

    .line 997
    iput v6, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->para1:I

    goto :goto_1

    .line 1000
    :pswitch_5
    sget-object v5, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->PHOTO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->ordinal()I

    move-result v5

    iput v5, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->cmd0:I

    .line 1001
    iput v6, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->time:I

    .line 1002
    const/4 v5, 0x3

    iput v5, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;->para0:I

    goto :goto_1

    .line 1008
    .end local v0    # "cmd":Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;
    .end local v3    # "point":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1009
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v2, v7, v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sendActionCmdOneByOne(Ljava/util/List;II)V

    .line 1012
    :cond_1
    return-void

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setViewValue()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 699
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->MIN:F

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 700
    .local v0, "speed":F
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->getAllTime(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 701
    .local v1, "time":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-static {v0, v5, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 703
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_setting_curve_lessthan:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mTvLineFollowTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_curve:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mRlCurveVideotape:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    if-nez v2, :cond_2

    .line 707
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mTvLineFollowTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_straight:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mRlCurveVideotape:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 710
    :cond_2
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    if-ne v2, v5, :cond_3

    .line 711
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mTvLineFollowTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_setting:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mRlCurveVideotape:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 714
    :cond_3
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->aiLineMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 715
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mTvLineFollowTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_history:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mRlCurveVideotape:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public showDialog()V
    .locals 7

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_route:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "t":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_ai_line_save_collector:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "m":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_line_save_fly:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->contentView:Landroid/view/View;

    .line 354
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_save:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 356
    .end local v2    # "t":Ljava/lang/String;
    .end local v3    # "m":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 357
    return-void
.end method

.method public startExcute()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$12;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$12;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiLineExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 685
    return-void
.end method

.method public switchScreenAngle2DroneAngle(F)F
    .locals 4
    .param p1, "angle"    # F

    .prologue
    const/4 v3, 0x0

    .line 630
    cmpg-float v2, p1, v3

    if-gez v2, :cond_0

    move v0, p1

    .end local p1    # "angle":F
    .local v0, "angle":F
    move v1, p1

    .line 639
    .end local v0    # "angle":F
    .local v1, "angle":F
    :goto_0
    return v1

    .line 633
    .end local v1    # "angle":F
    .restart local p1    # "angle":F
    :cond_0
    cmpg-float v2, v3, p1

    if-gtz v2, :cond_1

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    :goto_1
    move v0, p1

    .end local p1    # "angle":F
    .restart local v0    # "angle":F
    move v1, p1

    .line 639
    .end local v0    # "angle":F
    .restart local v1    # "angle":F
    goto :goto_0

    .line 636
    .end local v1    # "angle":F
    .restart local p1    # "angle":F
    :cond_1
    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr p1, v2

    goto :goto_1
.end method

.method public testUI()V
    .locals 4

    .prologue
    .line 606
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->startAiLineProcess()V

    .line 607
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 608
    return-void
.end method
