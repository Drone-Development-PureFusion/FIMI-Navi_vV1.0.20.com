.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;
.super Ljava/lang/Object;
.source "X8AiReturnConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private MAX:I

.field private MIN:I

.field private accuracy:I

.field private btnOk:Landroid/view/View;

.field private contentView:Landroid/view/View;

.field private imgFlag:Landroid/widget/ImageView;

.field private imgReturn:Landroid/view/View;

.field private listener:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private prex:Ljava/lang/String;

.field private prex2:Ljava/lang/String;

.field res:I

.field private rlMinus:Landroid/view/View;

.field private rlPlus:Landroid/view/View;

.field private seekBarMax:F

.field private seekBarMin:F

.field temp:F

.field tmpRes:I

.field private tvCuurentHeight:Landroid/widget/TextView;

.field private tvHeight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->MAX:I

    .line 42
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->MIN:I

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    .line 44
    const/high16 v0, 0x42f00000    # 120.0f

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->seekBarMax:F

    .line 45
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->seekBarMin:F

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->temp:F

    .line 186
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->res:I

    .line 187
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tmpRes:I

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_return_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->contentView:Landroid/view/View;

    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->seekBarMax:F

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->seekBarMin:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->MAX:I

    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->initViews(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->initActions()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    .prologue
    .line 28
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    return v0
.end method


# virtual methods
.method public getHeight()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->setProgress(I)V

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getReturnHomeHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 104
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->imgReturn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->rlMinus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->rlPlus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 67
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->imgReturn:Landroid/view/View;

    .line 68
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->btnOk:Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->prex:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home_tip2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->prex2:Ljava/lang/String;

    .line 72
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tvCuurentHeight:Landroid/widget/TextView;

    .line 73
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_limit_height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tvHeight:Landroid/widget/TextView;

    .line 75
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->rlMinus:Landroid/view/View;

    .line 76
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->rlPlus:Landroid/view/View;

    .line 77
    sget v1, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    .line 78
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->MAX:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 79
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_return_flag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->imgFlag:Landroid/widget/ImageView;

    .line 80
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v0

    .line 81
    .local v0, "state":Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 109
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->onComfirnClick()V

    goto :goto_0

    .line 113
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v0, v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->MIN:I

    if-eq v1, v2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->setHeightLimit()V

    goto :goto_0

    .line 118
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->MAX:I

    if-eq v1, v2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->setHeightLimit()V

    goto :goto_0
.end method

.method public onComfirnClick()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onRetureHomeClick()V

    .line 175
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 149
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->setProgress1(F)V

    .line 150
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 155
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->setHeightLimit()V

    .line 160
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setHeightLimit()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->seekBarMin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 220
    .local v0, "h":F
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$2;

    invoke-direct {v2, p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;F)V

    invoke-virtual {v1, v2, v0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setReturnHome(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 231
    return-void
.end method

.method public setProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const/4 v5, 0x1

    .line 130
    int-to-float v2, p1

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->seekBarMin:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 131
    .local v0, "p":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->prex2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v5, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tvHeight:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public setProgress1(F)V
    .locals 5
    .param p1, "progress"    # F

    .prologue
    const/4 v4, 0x1

    .line 140
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->seekBarMin:F

    add-float v0, p1, v2

    .line 142
    .local v0, "p":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->prex2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->accuracy:I

    int-to-float v3, v3

    div-float v3, v0, v3

    invoke-static {v3, v4, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tvHeight:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;
    .param p2, "mFcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .line 60
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 61
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->getHeight()V

    .line 63
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 8
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/4 v7, 0x1

    .line 189
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHeight()F

    move-result v1

    .line 190
    .local v1, "h":F
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHomeDistance()F

    move-result v0

    .line 192
    .local v0, "d":F
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_2

    .line 193
    cmpg-float v3, v1, v4

    if-gtz v3, :cond_1

    .line 194
    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->temp:F

    .line 195
    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_1:I

    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tmpRes:I

    .line 209
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->prex:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->temp:F

    invoke-static {v6, v7, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tvCuurentHeight:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tmpRes:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tmpRes:I

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->res:I

    if-eq v3, v4, :cond_0

    .line 213
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tmpRes:I

    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->res:I

    .line 214
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->imgFlag:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->res:I

    invoke-static {v4, v5}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    :cond_0
    return-void

    .line 197
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->temp:F

    .line 198
    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_2:I

    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tmpRes:I

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_3

    .line 202
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v3

    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->temp:F

    .line 203
    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_3:I

    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tmpRes:I

    goto :goto_0

    .line 205
    :cond_3
    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->temp:F

    .line 206
    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_4:I

    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->tmpRes:I

    goto :goto_0
.end method
