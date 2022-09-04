.class public Lcom/fimi/app/x8s/controls/X8MainRightMenuController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8MainRightMenuController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

.field cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private cameraState:Lcom/fimi/x8sdk/modulestate/CameraState;

.field private context:Landroid/content/Context;

.field curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

.field private curModeType:I

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private imbCameraTools:Landroid/widget/ImageButton;

.field private imbMedia:Landroid/widget/ImageButton;

.field private imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

.field private imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

.field public ix8PanoramicInformationListener:Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

.field private mIvHotDot:Landroid/widget/ImageView;

.field private mTvRecordTime:Lcom/fimi/widget/StrokeTextView;

.field private mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

.field private mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

.field private personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

.field private pivTake:Z

.field private selfShow:Z

.field private tvPanoramaNumber:Lcom/fimi/widget/StrokeTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/entity/X8AiModeState;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p3, "mX8AiModeState"    # Lcom/fimi/app/x8s/entity/X8AiModeState;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    .line 546
    new-instance v0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->ix8PanoramicInformationListener:Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

    .line 79
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 80
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/widget/StrokeTextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->tvPanoramaNumber:Lcom/fimi/widget/StrokeTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/app/x8s/widget/X8ShutterImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getPanoramicStart()Z

    move-result v0

    return v0
.end method

.method private getPanoramicStart()Z
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->isTakingPanoramicPhotos()Z

    move-result v0

    return v0
.end method

.method private startRecord()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$6;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->startVideo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 303
    return-void
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$7;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->stopVideo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 323
    return-void
.end method

.method private takePhoto()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getMode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 247
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->isTakingPanoramicPhotos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$3;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setPanoramaPhotographState(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V

    .line 283
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$4;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V

    sget v2, Lcom/fimi/kernel/Constants;->panoramaType:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setPanoramaPhotographType(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_take_photo_not_insky_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$5;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->takePhoto(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method


# virtual methods
.method public checkCameraParam()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 521
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v1

    .line 522
    .local v1, "paramsValue":Lcom/fimi/x8sdk/entity/X8CameraParamsValue;
    if-eqz v1, :cond_1

    .line 523
    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    .line 524
    .local v0, "object":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_resolution()Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, "video_resolution":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getSystem_type()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "system_type":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 528
    :cond_0
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_main_btn_media_select:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 529
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    .line 545
    .end local v0    # "object":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    .end local v2    # "system_type":Ljava/lang/String;
    .end local v3    # "video_resolution":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 532
    .restart local v0    # "object":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    .restart local v2    # "system_type":Ljava/lang/String;
    .restart local v3    # "video_resolution":Ljava/lang/String;
    :cond_2
    const-string v4, "1920x1080 50P 16:9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "1920x1080 25P 16:9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 533
    :cond_3
    const-string v4, "PAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    .line 535
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_piv_btn_selector:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 537
    :cond_4
    const-string v4, "1920x1080 30P 16:9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "1920x1080 60P 16:9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    :cond_5
    const-string v4, "NTSC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 539
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    .line 540
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_piv_btn_selector:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->selfShow:Z

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 499
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->closeUi()V

    .line 500
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public getHandleViewWidth()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->handleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbCameraTools:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->cameraState:Lcom/fimi/x8sdk/modulestate/CameraState;

    .line 118
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->context:Landroid/content/Context;

    .line 97
    sget v0, Lcom/fimi/app/x8s/R$id;->main_right_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->handleView:Landroid/view/View;

    .line 98
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_camera_tools:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbCameraTools:Landroid/widget/ImageButton;

    .line 99
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_switch_photo_video_module:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    .line 100
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_photo_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    .line 101
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_meida:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    .line 103
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_record_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/StrokeTextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mTvRecordTime:Lcom/fimi/widget/StrokeTextView;

    .line 104
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_panorama_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/StrokeTextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->tvPanoramaNumber:Lcom/fimi/widget/StrokeTextView;

    .line 105
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_record_hot_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mIvHotDot:Landroid/widget/ImageView;

    .line 108
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 138
    .local v0, "id":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbCameraTools:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;->onCameraSettingClick()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setClickable(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->onPhotoVideoSwitcher()V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 144
    invoke-static {v3}, Lcom/fimi/kernel/utils/AbAppUtil;->isFastClick(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setClickable(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->onPhotoVideoShutter()V

    .line 149
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;->onCameraShutterClick()V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 151
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    if-eqz v1, :cond_4

    .line 152
    invoke-static {v3}, Lcom/fimi/kernel/utils/AbAppUtil;->isFastClick(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setClickable(Z)V

    .line 156
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->takePhoto()V

    goto :goto_0

    .line 159
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->context:Landroid/content/Context;

    const-class v4, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    const/16 v3, 0x8

    .line 589
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 590
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setClickable(Z)V

    .line 591
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isDelayedPhotography()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getPanoramicStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setClickable(Z)V

    .line 594
    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v0, v1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    .line 596
    const/16 v0, 0x20

    iput v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    .line 597
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mIvHotDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mTvRecordTime:Lcom/fimi/widget/StrokeTextView;

    invoke-virtual {v0, v3}, Lcom/fimi/widget/StrokeTextView;->setVisibility(I)V

    .line 599
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->ideal:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 602
    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getPanoramicStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->tvPanoramaNumber:Lcom/fimi/widget/StrokeTextView;

    invoke-virtual {v0, v3}, Lcom/fimi/widget/StrokeTextView;->setVisibility(I)V

    .line 605
    :cond_2
    return-void
.end method

.method public onPhotoVideoShutter()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getInfo()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_rtp8:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v0, v1, :cond_3

    .line 225
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->takePhoto()V

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 229
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->stopRecord()V

    goto :goto_0

    .line 231
    :cond_4
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->startRecord()V

    goto :goto_0
.end method

.method public onPhotoVideoSwitcher()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->isConnect()Z

    move-result v0

    .line 184
    .local v0, "isConnect":Z
    if-eqz v0, :cond_1

    .line 185
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$1;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->swithVideoMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 214
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$2;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->swithPhotoMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->getCurrentIndex()I

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 206
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v1, v3, v2}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 209
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v1, v2, v2}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    goto :goto_0
.end method

.method public openUi()V
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->selfShow:Z

    .line 490
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 491
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getAutoCameraStateADV()Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->showCameraState(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    .line 492
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->showCameraView(Z)V

    .line 493
    return-void
.end method

.method public setAiFly(Z)V
    .locals 0
    .param p1, "visiable"    # Z

    .prologue
    .line 334
    return-void
.end method

.method public setBackGround(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->handleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 516
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    goto :goto_0
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    goto :goto_0
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;)V
    .locals 0
    .param p1, "mainRightMenuListener"    # Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    .line 328
    return-void
.end method

.method public setOtherShow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    sget-object v1, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->READY:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8AiModeState;->setAiModeState(Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    sget-object v1, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->IDLE:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8AiModeState;->setAiModeState(Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;)V

    goto :goto_0
.end method

.method public setOtherStateRunning()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    sget-object v1, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->RUNNING:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8AiModeState;->setAiModeState(Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;)V

    .line 512
    return-void
.end method

.method public setPersonLacationListener(Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;)V
    .locals 0
    .param p1, "personLacationListener"    # Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    .line 338
    return-void
.end method

.method public showCameraState(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 10
    .param p1, "cameraStateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 359
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v2, v3, :cond_0

    .line 360
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setClickable(Z)V

    .line 362
    :cond_0
    if-nez p1, :cond_2

    .line 483
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .line 364
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getState()I

    move-result v1

    .line 365
    .local v1, "status":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_error:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 368
    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    .line 369
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_take_success:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 377
    :cond_4
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getMode()I

    move-result v0

    .line 378
    .local v0, "model":I
    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v2, v3, :cond_15

    .line 379
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    if-eq v2, v0, :cond_7

    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getPanoramicStart()Z

    move-result v2

    if-nez v2, :cond_7

    .line 380
    :cond_5
    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 381
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v6}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 382
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_main_btn_media_select:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 383
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;->turnCameraModel()V

    .line 384
    :cond_6
    if-ne v0, v7, :cond_f

    .line 385
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v2, v6, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    .line 386
    iput v7, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    .line 404
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isDelayedPhotography()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getPanoramicStart()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 405
    :cond_8
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 406
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 407
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v6}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setClickable(Z)V

    .line 408
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_main_btn_media_unclickable:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 409
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 426
    :cond_9
    :goto_2
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    .line 446
    :cond_a
    :goto_3
    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v2, v3, :cond_1b

    .line 447
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v2, v3, :cond_c

    .line 448
    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 449
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 450
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mIvHotDot:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mTvRecordTime:Lcom/fimi/widget/StrokeTextView;

    invoke-virtual {v2, v6}, Lcom/fimi/widget/StrokeTextView;->setVisibility(I)V

    .line 452
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v2, v5, v5}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    .line 453
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;->turnCameraModel()V

    .line 454
    :cond_b
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->checkCameraParam()V

    .line 456
    :cond_c
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mTvRecordTime:Lcom/fimi/widget/StrokeTextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getRecHour()I

    move-result v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getRecMinute()I

    move-result v4

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getRecSecond()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/fimi/app/x8s/tools/TimeFormateUtil;->getRecordTime(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/widget/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v9}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 459
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v6}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setClickable(Z)V

    .line 460
    iget-boolean v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    if-nez v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_main_btn_media_unclickable:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 462
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_0

    .line 370
    .end local v0    # "model":I
    :cond_d
    const/16 v2, 0x9

    if-ne v1, v2, :cond_e

    .line 371
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_camera_captured_successfully:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 373
    :cond_e
    if-ne v1, v7, :cond_4

    .line 374
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_camera_rtp10:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 387
    .restart local v0    # "model":I
    :cond_f
    const/16 v2, 0x13

    if-ne v0, v2, :cond_10

    .line 388
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v2, v9, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    .line 389
    const/16 v2, 0x13

    iput v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    goto/16 :goto_1

    .line 390
    :cond_10
    const/16 v2, 0x14

    if-ne v0, v2, :cond_13

    .line 391
    sget v2, Lcom/fimi/kernel/Constants;->panoramaType:I

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->PANORAMA_TYPE_LEVEL:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_11

    .line 392
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    goto/16 :goto_1

    .line 393
    :cond_11
    sget v2, Lcom/fimi/kernel/Constants;->panoramaType:I

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->PANORAMA_TYPE_RIGHT_ANGLE:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_12

    .line 394
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    goto/16 :goto_1

    .line 396
    :cond_12
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    goto/16 :goto_1

    .line 399
    :cond_13
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v2, v6, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    .line 400
    iput v7, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    goto/16 :goto_1

    .line 419
    :cond_14
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->isClickable()Z

    move-result v2

    if-nez v2, :cond_9

    .line 420
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v6}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 421
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setClickable(Z)V

    .line 422
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_main_btn_media_select:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 423
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_2

    .line 427
    :cond_15
    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v2, v3, :cond_a

    .line 428
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v2, v3, :cond_16

    iget v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    if-eq v2, v0, :cond_18

    .line 430
    :cond_16
    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 431
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 432
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mainRightMenuListener:Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;->turnCameraModel()V

    .line 433
    :cond_17
    if-ne v0, v8, :cond_19

    .line 434
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v2, v5, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    .line 435
    iput v8, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    .line 444
    :cond_18
    :goto_4
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    goto/16 :goto_3

    .line 436
    :cond_19
    const/16 v2, 0x21

    if-ne v0, v2, :cond_1a

    .line 437
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    .line 438
    const/16 v2, 0x21

    iput v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    goto :goto_4

    .line 440
    :cond_1a
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbPhotoVideo:Lcom/fimi/app/x8s/widget/X8ShutterImageView;

    invoke-virtual {v2, v5, v6}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setCurrentIndex(II)V

    .line 441
    iput v8, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->curModeType:I

    goto :goto_4

    .line 466
    :cond_1b
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isDelayedPhotography()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getPanoramicStart()Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mIvHotDot:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1c

    .line 468
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setCurrentIndex(I)V

    .line 469
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbSwitchPhotoVideo:Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setClickable(Z)V

    .line 471
    :cond_1c
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mIvHotDot:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mTvRecordTime:Lcom/fimi/widget/StrokeTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/fimi/widget/StrokeTextView;->setVisibility(I)V

    .line 473
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_main_btn_media_select:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 474
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    .line 475
    iget-boolean v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->pivTake:Z

    if-nez v2, :cond_1

    .line 476
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->imbMedia:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method public showCameraView(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 342
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AiModeState;->isAiModeStateReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->handleView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showPersonLocation()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;->showPersonLocation()V

    .line 177
    :cond_0
    return-void
.end method

.method public switchByCloseFullScreen(Z)V
    .locals 2
    .param p1, "isFullVideo"    # Z

    .prologue
    .line 351
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->handleView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    return-void

    .line 351
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
