.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteComfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;
    }
.end annotation


# instance fields
.field private HIGHT_MAX:I

.field private HIGHT_MAX_PROGRESS:I

.field private HIGHT_MIN:I

.field private LEVEL_MAX:I

.field private LEVEL_MAX_PROGRESS:I

.field private LEVEL_MIN:I

.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private final contentView:Landroid/view/View;

.field private mAckAiGetGravitationPrameter:Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

.field private mBtnExcuteAdvancedSetting:Landroid/widget/Button;

.field private mBtnExcuteDefault:Landroid/widget/Button;

.field private mBtnExcuteOk:Landroid/widget/Button;

.field private mBtnExcuteSave:Landroid/widget/Button;

.field private mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private mComfirmState:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

.field private mExcuteReturn:Landroid/widget/ImageView;

.field private mExcuteTitle:Landroid/widget/TextView;

.field private mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mLlAdvancedSetting:Landroid/widget/LinearLayout;

.field private mRlExcuteSetting:Landroid/widget/RelativeLayout;

.field private mRlHightMinus:Landroid/widget/RelativeLayout;

.field private mRlHightPlus:Landroid/widget/RelativeLayout;

.field private mRlLevelMinus:Landroid/widget/RelativeLayout;

.field private mRlLevelPlus:Landroid/widget/RelativeLayout;

.field private mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

.field private mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

.field private mTvHeight:Landroid/widget/TextView;

.field private mTvLevel:Landroid/widget/TextView;

.field private mXthRotate:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private mXthVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private seekBarHightListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

.field private seekBarLevelListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 3
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x14

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MIN:I

    .line 39
    const/16 v0, 0x1e

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MAX:I

    .line 40
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MAX:I

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MIN:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MAX_PROGRESS:I

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MIN:I

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MAX:I

    .line 44
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MAX:I

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MIN:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MAX_PROGRESS:I

    .line 69
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;->MAIN:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mComfirmState:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

    .line 318
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$6;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->seekBarLevelListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    .line 338
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$7;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->seekBarHightListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    .line 73
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 74
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 75
    invoke-virtual {p1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_gravitation_excute_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->contentView:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->contentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->initViews(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->initActions()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->getParamer()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mTvHeight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mAckAiGetGravitationPrameter:Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;)Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;
    .param p1, "x1"    # Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mAckAiGetGravitationPrameter:Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->startGravitation()V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MIN:I

    return v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mTvLevel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;F)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;
    .param p1, "x1"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->changeEllipse(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 37
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MIN:I

    return v0
.end method

.method private changeEllipse(F)V
    .locals 8
    .param p1, "levelValue"    # F

    .prologue
    .line 311
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    .line 312
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v2

    .line 313
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v4

    .line 315
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getDeviceAngle()F

    move-result v0

    const/high16 v6, 0x42b40000    # 90.0f

    add-float v7, v0, v6

    move v6, p1

    .line 312
    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->addEllipse(DDFF)V

    .line 316
    return-void
.end method

.method private getParamer()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getGravitationPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 262
    return-void
.end method

.method private initActions()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mExcuteReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteAdvancedSetting:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlLevelMinus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlLevelPlus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->seekBarLevelListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlHightMinus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlHightPlus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->seekBarHightListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteDefault:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 101
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_gravitation_excute_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mExcuteReturn:Landroid/widget/ImageView;

    .line 102
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_gravitation_excute_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mExcuteTitle:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_gravitation_excute_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlExcuteSetting:Landroid/widget/RelativeLayout;

    .line 104
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ai_gravitation_excute_videotape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 106
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_excute_advanced_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteAdvancedSetting:Landroid/widget/Button;

    .line 107
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_excute_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteOk:Landroid/widget/Button;

    .line 108
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_excute_default:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteDefault:Landroid/widget/Button;

    .line 109
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_excute_save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteSave:Landroid/widget/Button;

    .line 110
    sget v0, Lcom/fimi/app/x8s/R$id;->ll_gravitation_excute_advanced_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mLlAdvancedSetting:Landroid/widget/LinearLayout;

    .line 111
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_gravitation_excute_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mTvLevel:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_gravitation_excute_level_minus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlLevelMinus:Landroid/widget/RelativeLayout;

    .line 113
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_ai_gravitation_excute_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    .line 114
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_gravitation_excute_level_plus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlLevelPlus:Landroid/widget/RelativeLayout;

    .line 115
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_gravitation_excute_height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mTvHeight:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_gravitation_excute_heigth_minus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlHightMinus:Landroid/widget/RelativeLayout;

    .line 117
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_ai_gravitation_excute_heigth:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    .line 118
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_gravitation_excute_heigth_plus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlHightPlus:Landroid/widget/RelativeLayout;

    .line 119
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ai_gravitation_excute_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthRotate:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 121
    return-void
.end method

.method private recoverDefaultValue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 273
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mTvLevel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_gravitation_excute_advanced_setting_level:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mTvHeight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_gravitation_excute_advanced_setting_height:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthRotate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 277
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MIN:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->changeEllipse(F)V

    .line 278
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFlyGravitationHeight(I)V

    .line 279
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFlyGravitationLevel(I)V

    .line 280
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFlyGravitationRotate(I)V

    .line 281
    return-void
.end method

.method private returnExcuteSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 284
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;->MAIN:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mComfirmState:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

    .line 285
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlExcuteSetting:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteDefault:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteSave:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteOk:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mLlAdvancedSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    return-void
.end method

.method private saveValue()V
    .locals 2

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->returnExcuteSetting()V

    .line 266
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFlyGravitationHeight(I)V

    .line 267
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFlyGravitationLevel(I)V

    .line 268
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthRotate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiFlyGravitationRotate(I)V

    .line 269
    return-void
.end method

.method private setGravitationPrameter()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 186
    new-instance v2, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;

    invoke-direct {v2}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;-><init>()V

    .line 187
    .local v2, "prameter":Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthRotate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setRotateDirecetion(I)V

    .line 188
    invoke-virtual {v2, v5}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setRotateSpeed(I)V

    .line 189
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MIN:I

    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/app/x8s/config/X8AiConfig;->getAiFlyGravitationLevel()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    add-int v1, v3, v4

    .line 190
    .local v1, "level":I
    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setHorizontalDistance(I)V

    .line 191
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MIN:I

    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/app/x8s/config/X8AiConfig;->getAiFlyGravitationHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x14

    add-int v0, v3, v4

    .line 192
    .local v0, "height":I
    invoke-virtual {v2, v0}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setRiseHeight(I)V

    .line 193
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setEllipseInclinal(I)V

    .line 194
    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setEccentricWheel(I)V

    .line 195
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v3

    if-nez v3, :cond_1

    .line 196
    invoke-virtual {v2, v5}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setAutoVideo(I)V

    .line 197
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v4, "normal_record"

    const-string v5, "record_mode"

    new-instance v6, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$1;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 214
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v4, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$3;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    invoke-virtual {v3, v2, v4}, Lcom/fimi/x8sdk/controller/FcManager;->setGravitationPrameter(Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 226
    return-void

    .line 203
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 204
    invoke-virtual {v2, v5}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setAutoVideo(I)V

    .line 205
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v4, "5s"

    const-string/jumbo v5, "video_timelapse"

    new-instance v6, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$2;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthVidotape:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v3

    if-nez v3, :cond_0

    .line 212
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->setAutoVideo(I)V

    goto :goto_0
.end method

.method private showAdvancedSetting()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;->ADVANCED:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mComfirmState:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mExcuteReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mRlExcuteSetting:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteDefault:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteSave:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mBtnExcuteOk:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mLlAdvancedSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mTvHeight:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MIN:I

    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/config/X8AiConfig;->getAiFlyGravitationHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1, v3, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/config/X8AiConfig;->getAiFlyGravitationHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mTvLevel:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MIN:I

    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/config/X8AiConfig;->getAiFlyGravitationLevel()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1, v3, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/config/X8AiConfig;->getAiFlyGravitationLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 306
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mXthRotate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/config/X8AiConfig;->getAiFlyGravitationRotate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 307
    return-void
.end method

.method private startGravitation()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setGravitationStart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 248
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 130
    .local v1, "id":I
    sget v4, Lcom/fimi/app/x8s/R$id;->img_ai_gravitation_excute_return:I

    if-ne v1, v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mComfirmState:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

    sget-object v5, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;->MAIN:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$ExcuteComfirmState;

    if-ne v4, v5, :cond_1

    .line 132
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    invoke-interface {v4}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onBackClick()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->returnExcuteSetting()V

    goto :goto_0

    .line 136
    :cond_2
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_excute_ok:I

    if-ne v1, v4, :cond_3

    .line 137
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->setGravitationPrameter()V

    goto :goto_0

    .line 138
    :cond_3
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_excute_advanced_setting:I

    if-ne v1, v4, :cond_4

    .line 139
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->showAdvancedSetting()V

    goto :goto_0

    .line 140
    :cond_4
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_excute_default:I

    if-ne v1, v4, :cond_5

    .line 141
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->recoverDefaultValue()V

    goto :goto_0

    .line 142
    :cond_5
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_ai_gravitation_excute_save:I

    if-ne v1, v4, :cond_6

    .line 143
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->saveValue()V

    goto :goto_0

    .line 144
    :cond_6
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_ai_gravitation_excute_level_minus:I

    if-ne v1, v4, :cond_8

    .line 145
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    add-int/lit8 v2, v4, -0xa

    .line 147
    .local v2, "l":I
    if-gez v2, :cond_7

    .line 148
    const/4 v2, 0x0

    .line 150
    :cond_7
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 151
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 152
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MIN:I

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 153
    .local v3, "levelValue":F
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->changeEllipse(F)V

    goto :goto_0

    .line 155
    .end local v2    # "l":I
    .end local v3    # "levelValue":F
    :cond_8
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_ai_gravitation_excute_level_plus:I

    if-ne v1, v4, :cond_a

    .line 156
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MAX_PROGRESS:I

    if-eq v4, v5, :cond_0

    .line 157
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    add-int/lit8 v2, v4, 0xa

    .line 158
    .restart local v2    # "l":I
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MAX_PROGRESS:I

    if-le v2, v4, :cond_9

    .line 159
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MAX_PROGRESS:I

    .line 161
    :cond_9
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 162
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->LEVEL_MIN:I

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbLevel:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 163
    .restart local v3    # "levelValue":F
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->changeEllipse(F)V

    goto/16 :goto_0

    .line 165
    .end local v2    # "l":I
    .end local v3    # "levelValue":F
    :cond_a
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_ai_gravitation_excute_heigth_minus:I

    if-ne v1, v4, :cond_c

    .line 166
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    add-int/lit8 v0, v4, -0x14

    .line 168
    .local v0, "h":I
    if-gez v0, :cond_b

    .line 169
    const/4 v0, 0x0

    .line 171
    :cond_b
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4, v0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto/16 :goto_0

    .line 173
    .end local v0    # "h":I
    :cond_c
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_ai_gravitation_excute_heigth_plus:I

    if-ne v1, v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MAX_PROGRESS:I

    if-eq v4, v5, :cond_0

    .line 175
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    add-int/lit8 v0, v4, 0x14

    .line 176
    .restart local v0    # "h":I
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MAX_PROGRESS:I

    if-le v0, v4, :cond_d

    .line 177
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->HIGHT_MAX_PROGRESS:I

    .line 179
    :cond_d
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mSbHeight:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4, v0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto/16 :goto_0
.end method

.method public setFcHeart(ZZ)V
    .locals 0
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 125
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 359
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 360
    return-void
.end method
