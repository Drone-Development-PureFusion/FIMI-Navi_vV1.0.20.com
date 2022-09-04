.class public Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8FiveKeyHintController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private angle:D

.field private currentValue:I

.field private fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

.field private parentView:Landroid/view/View;

.field private sbarFiveKey:Landroid/widget/SeekBar;

.field private tvFiveKeyShowType:Landroid/widget/TextView;

.field private x8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private x8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 33
    return-void
.end method


# virtual methods
.method public closeUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeUi()V

    .line 63
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->isShow:Z

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->parentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->restoreUpDownKey(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 42
    sget v0, Lcom/fimi/app/x8s/R$id;->main_all_setting_five_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->parentView:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->parentView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->tv_five_key_show_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->tvFiveKeyShowType:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->parentView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->sbar_five_key:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->sbarFiveKey:Landroid/widget/SeekBar;

    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->sbarFiveKey:Landroid/widget/SeekBar;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->sbarFiveKey:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 48
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "i"    # I
    .param p3, "b"    # Z

    .prologue
    const/16 v7, 0x190

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    if-ne v1, p2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    .line 98
    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    const/16 v2, 0x100

    if-gt v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->tvFiveKeyShowType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "fiveKeyShowTypeStr":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->tvFiveKeyShowType:Landroid/widget/TextView;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_show_type:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {v7}, Lcom/fimi/kernel/utils/AbAppUtil;->isFastClick(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->x8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    sget-object v2, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    iget v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeySetContrast(Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;I)Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->tvFiveKeyShowType:Landroid/widget/TextView;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_show_type:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_saturation:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {v7}, Lcom/fimi/kernel/utils/AbAppUtil;->isFastClick(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->x8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    sget-object v2, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    iget v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeySetSaturation(Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;I)Ljava/lang/String;

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 117
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 121
    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    const/16 v2, 0x100

    if-le v1, v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->tvFiveKeyShowType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "fiveKeyShowTypeStr":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->x8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    sget-object v2, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    iget v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeySetContrast(Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;I)Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->x8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    sget-object v2, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    iget v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->currentValue:I

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeySetSaturation(Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;I)Ljava/lang/String;

    goto :goto_0
.end method

.method public openUi()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->openUi()V

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->isShow:Z

    .line 74
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->parentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->tvFiveKeyShowType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "fiveKeyShowTypeStr":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->isSetCameraContrast()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->isSetCameraSaturation()V

    goto :goto_0
.end method

.method public setFiveKeyDefineGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "x8GimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->x8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 154
    return-void
.end method

.method public setFiveKeyDefineManager(Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;)V
    .locals 0
    .param p1, "fiveKeyDefineManager"    # Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    .line 150
    return-void
.end method

.method public setFiveKeyPitchAngle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->angle:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->x8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    const/16 v1, -0x5a

    invoke-virtual {v0, v1, v4}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setAiAutoPhotoPitchAngle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->x8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setAiAutoPhotoPitchAngle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method

.method public setSbarFiveKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "currentValueInt":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->sbarFiveKey:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public setTvFiveKeyShowType(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->tvFiveKeyShowType:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setX8MainCameraSettingController(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V
    .locals 0
    .param p1, "x8MainCameraSettingController"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->x8MainCameraSettingController:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .line 146
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/modulestate/GimbalState;)V
    .locals 6
    .param p1, "state"    # Lcom/fimi/x8sdk/modulestate/GimbalState;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/fimi/x8sdk/modulestate/GimbalState;->getPitchAngle()I

    move-result v0

    .line 37
    .local v0, "pitchAngle":I
    int-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->angle:D

    .line 38
    return-void
.end method
