.class public Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8FcSensitivitySettingController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;


# instance fields
.field private final DEFAULT_VALUE:I

.field private btnReset:Landroid/widget/ImageButton;

.field private content_layout:Lcom/fimi/kernel/percent/PercentLinearLayout;

.field private curAttitudeSens:I

.field private curBrakeSens:I

.field private curYawSens:I

.field private curYawTrip:I

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private imgReturn:Landroid/widget/ImageView;

.field private isRequested:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private mContext:Landroid/content/Context;

.field private resetDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private sbAttitudeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

.field private sbBrakeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

.field private sbYawSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

.field private sbYawTrip:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 33
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->DEFAULT_VALUE:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->isRequested:Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbAttitudeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbYawSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbBrakeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbYawTrip:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method private requestDefaultValue()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->isShow:Z

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->defaultVal()V

    .line 181
    return-void
.end method

.method public defaultVal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->content_layout:Lcom/fimi/kernel/percent/PercentLinearLayout;

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->btnReset:Landroid/widget/ImageButton;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 167
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0xa

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_main_fc_sensitivity_setting:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    .line 66
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->content_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/percent/PercentLinearLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->content_layout:Lcom/fimi/kernel/percent/PercentLinearLayout;

    .line 67
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->imgReturn:Landroid/widget/ImageView;

    .line 68
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_reset:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->btnReset:Landroid/widget/ImageButton;

    .line 69
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->btnReset:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 70
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->sb_attitude_sens:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbAttitudeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .line 73
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->sb_brake_sens:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbBrakeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .line 74
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->sb_yaw_trip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbYawTrip:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .line 75
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->sb_yaw_sens:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbYawSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .line 77
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbAttitudeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fc_sensitivity_attitude_sens:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->initData(Ljava/lang/String;II)V

    .line 79
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbBrakeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fc_sensitivity_brake_sens:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->initData(Ljava/lang/String;II)V

    .line 80
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbYawTrip:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fc_sensitivity_yaw_trip:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->initData(Ljava/lang/String;II)V

    .line 81
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbYawSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fc_sensitivity_yaw_sens:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->initData(Ljava/lang/String;II)V

    .line 83
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbAttitudeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-virtual {v2, p0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setOnSeekChangedListener(Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;)V

    .line 84
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbBrakeSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-virtual {v2, p0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setOnSeekChangedListener(Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;)V

    .line 85
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbYawTrip:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-virtual {v2, p0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setOnSeekChangedListener(Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;)V

    .line 86
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->sbYawSens:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-virtual {v2, p0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setOnSeekChangedListener(Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;)V

    .line 88
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->initActions()V

    .line 90
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 194
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->closeItem()V

    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_reset:I

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->resetDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v1, :cond_2

    .line 202
    new-instance v1, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_sensitivity_reset_title:I

    .line 203
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_fc_sensitivity_reset_content:I

    .line 204
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->resetDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->resetDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto :goto_0
.end method

.method public onDroneConnected(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->isShow:Z

    if-eqz v0, :cond_0

    .line 102
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->isRequested:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->requestDefaultValue()V

    .line 104
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->isRequested:Z

    .line 107
    :cond_0
    new-array v0, v1, [Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->content_layout:Lcom/fimi/kernel/percent/PercentLinearLayout;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 108
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->btnReset:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 110
    return-void

    .line 108
    :cond_1
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public onSeekValueSet(II)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "value"    # I

    .prologue
    .line 265
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_attitude_sens:I

    if-ne p1, v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1, p2, p2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAttitudeSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 273
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_brake_sens:I

    if-ne p1, v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$7;

    invoke-direct {v1, p0, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;I)V

    invoke-virtual {v0, v1, p2, p2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 310
    :cond_2
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_yaw_trip:I

    if-ne p1, v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 318
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$10;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 331
    :cond_3
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_yaw_sens:I

    if-ne p1, v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$11;

    invoke-direct {v1, p0, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$11;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;I)V

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setYawSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 340
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$12;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$12;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method

.method public setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 189
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 185
    return-void
.end method

.method public showItem()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->isShow:Z

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->getDroneState()V

    .line 174
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->isConect:Z

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->onDroneConnected(Z)V

    .line 175
    return-void
.end method
