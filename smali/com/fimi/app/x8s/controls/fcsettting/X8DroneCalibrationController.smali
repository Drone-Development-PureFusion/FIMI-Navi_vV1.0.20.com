.class public Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8DroneCalibrationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;
    }
.end annotation


# instance fields
.field private btnResultConfirm:Landroid/widget/Button;

.field private btnStart:Landroid/widget/Button;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private imgFlag:Landroid/widget/ImageView;

.field private imgResult:Landroid/widget/ImageView;

.field private imgReturn:Landroid/widget/ImageView;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public mTimeHandler:Landroid/os/Handler;

.field private rlCalibration:Landroid/view/View;

.field private rlResult:Landroid/view/View;

.field private tvResultTip:Landroid/widget/TextView;

.field private tvResultTip1:Landroid/widget/TextView;

.field private tvTip:Landroid/widget/TextView;

.field private tvTip1:Landroid/widget/TextView;

.field private vVideo:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 46
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 440
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$7;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mTimeHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    return-object p1
.end method


# virtual methods
.method public closeItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v3, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v3, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-ne v2, v3, :cond_1

    .line 193
    :cond_0
    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->isShow:Z

    .line 194
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->defaultVal()V

    .line 196
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onClose()V

    .line 198
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 199
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    const/16 v3, 0x5dc

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->setOutTime(I)V

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fc_item_compass_calibration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fc_item_compass_calibration_exit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 207
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto :goto_0
.end method

.method public completeGalibration()V
    .locals 5

    .prologue
    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_ALL_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$5;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 347
    return-void
.end method

.method public defaultVal()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlCalibration:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlCalibration:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlResult:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_horizontal:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    return-void
.end method

.method public endStepCalibration()V
    .locals 5

    .prologue
    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_NEXT_STEP:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$3;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 305
    return-void
.end method

.method public getCalibrationState()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->MAGM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 413
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnResultConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_main_fc_item_drone_calibration:I

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_drone_calibartion_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlCalibration:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_drone_calibartion_result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlResult:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgReturn:Landroid/widget/ImageView;

    .line 92
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_tip1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip1:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->v_video:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->vVideo:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_compass_calibration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgResult:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_result_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvResultTip:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_result_tip1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvResultTip1:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_compass_result_confirm:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnResultConfirm:Landroid/widget/Button;

    .line 101
    sget v1, Lcom/fimi/app/x8s/R$id;->img_camp_flag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgFlag:Landroid/widget/ImageView;

    .line 102
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_img_camp_enable:I

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    return-void
.end method

.method public isCalibrationing()Z
    .locals 3

    .prologue
    .line 450
    const/4 v0, 0x1

    .line 451
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->SUCCESS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-ne v1, v2, :cond_1

    .line 452
    :cond_0
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->closeItem()V

    goto :goto_0
.end method

.method public nextStepCalibration()V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_NEXT_STEP:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$2;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 291
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 156
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->closeItem()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_compass_calibration:I

    if-ne v0, v1, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->startCalibration()V

    goto :goto_0

    .line 160
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_compass_result_confirm:I

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->restart()V

    goto :goto_0
.end method

.method public onDroneConnected(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->isShow:Z

    if-eqz v0, :cond_1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getDroneState()V

    .line 116
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->isInSky:Z

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->SUCCESS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-ne v0, v1, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_camp_enable:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_camp_disable:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_insky_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_camp_disable:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v0, v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onFailedByDisconnect()V

    goto :goto_0
.end method

.method public onFailed()V
    .locals 2

    .prologue
    .line 417
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 418
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->quitGalibration()V

    .line 419
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onResultFaild()V

    .line 422
    return-void
.end method

.method public onFailedByDisconnect()V
    .locals 2

    .prologue
    .line 426
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 427
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onResultFaild()V

    .line 430
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onResultFaild()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlCalibration:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlResult:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgResult:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_drone_calibartion_failed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvResultTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_result_failed:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvResultTip1:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_result_failed_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnResultConfirm:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_failed_confirm:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setOutTime(I)V

    .line 243
    return-void
.end method

.method public onResultSuccess()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlCalibration:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlResult:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgResult:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_drone_calibartion_success:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvResultTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_result_success:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvResultTip1:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_result_success_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnResultConfirm:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_success_confirm:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setOutTime(I)V

    .line 254
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    if-ne v0, v1, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->closeItem()V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->INTERRUPT:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 61
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->quitGalibration()V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 434
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->SUCCESS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 435
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->completeGalibration()V

    .line 436
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onResultSuccess()V

    .line 438
    return-void
.end method

.method public quitGalibration()V
    .locals 5

    .prologue
    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$4;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 329
    return-void
.end method

.method public restart()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlCalibration:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlResult:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 214
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 258
    return-void
.end method

.method public showItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->isShow:Z

    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip1:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->contentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getDroneState()V

    .line 185
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->isConect:Z

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onDroneConnected(Z)V

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onOpen()V

    .line 189
    return-void
.end method

.method public startCalibration()V
    .locals 5

    .prologue
    .line 262
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->WAITSTART:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mGaliStete:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_START:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->ordinal()I

    move-result v2

    sget-object v3, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->ordinal()I

    move-result v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$1;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 276
    return-void
.end method

.method public switch2Horizontal()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlCalibration:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rlResult:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_horizontal:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip1:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_horizontal_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->btnStart:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_camp_h:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    return-void
.end method

.method public switch2Vertical()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_vertical:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->tvTip1:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_compass_calibartion_vertical_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->imgFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_camp_v:I

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    return-void
.end method
