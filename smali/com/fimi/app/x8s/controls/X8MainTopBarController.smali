.class public Lcom/fimi/app/x8s/controls/X8MainTopBarController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8MainTopBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ctrlType:I

.field private ibtnReturn:Landroid/widget/ImageButton;

.field private ibtnSetting:Landroid/widget/ImageButton;

.field private isReadyGo:Z

.field private isShowDisconnectLatlng:Z

.field private isStartFlick:Z

.field private lastState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

.field private mCurrentLat:D

.field private mCurrentLng:D

.field private mIvCenterHighightHelp:Landroid/widget/ImageView;

.field private mIvCenterHighightHelpInfo:Landroid/view/View;

.field private mIvCenterHighightView:Landroid/widget/ImageView;

.field private mIvDistance:Landroid/widget/ImageView;

.field private mIvFlyState:Landroid/widget/ImageView;

.field private mIvHight:Landroid/widget/ImageView;

.field private mIvTopCenterMode:Landroid/widget/ImageView;

.field private mIvTopCenterModeHelp:Landroid/widget/ImageView;

.field private mTvDisconnectLatlng:Landroid/widget/TextView;

.field private mTvDistance:Landroid/widget/TextView;

.field private mTvDistanceUnit:Landroid/widget/TextView;

.field private mTvHight:Landroid/widget/TextView;

.field private mTvHightUnit:Landroid/widget/TextView;

.field private mTvHs:Landroid/widget/TextView;

.field private mTvSpeedUnit:Landroid/widget/TextView;

.field private mTvVs:Landroid/widget/TextView;

.field private mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

.field private mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

.field private mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

.field private mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightView;

.field private mX8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private tvConnectState:Landroid/widget/TextView;

.field private vDroneInfoState:Landroid/view/View;

.field private vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

.field private x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->lastState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .line 79
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isShowDisconnectLatlng:Z

    .line 84
    iput v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ctrlType:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/X8MainTopBarController;)Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    return-object v0
.end method

.method private clipbroadLatlng()V
    .locals 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 234
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 235
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 236
    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fly_status_disconnect_copy_latlng_of_clip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 235
    invoke-static {v1, v2, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 238
    return-void
.end method

.method private showDiaLog()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 422
    iget v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ctrlType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 423
    new-instance v0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fly_status_atti_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fly_status_atti_message:I

    .line 424
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fly_status_atti_comfire:I

    .line 425
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/fimi/app/x8s/controls/X8MainTopBarController$1;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController$1;-><init>(Lcom/fimi/app/x8s/controls/X8MainTopBarController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .line 433
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 434
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->show()V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ctrlType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 436
    new-instance v0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fly_status_vpu_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_fly_status_vpu_message:I

    .line 437
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fly_status_vpu_comfire:I

    .line 438
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/fimi/app/x8s/controls/X8MainTopBarController$2;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController$2;-><init>(Lcom/fimi/app/x8s/controls/X8MainTopBarController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .line 446
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 447
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->show()V

    goto :goto_0
.end method

.method private startFlick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 452
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isStartFlick:Z

    if-eqz v1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 455
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 456
    .local v0, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 457
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 458
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 459
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 460
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isStartFlick:Z

    .line 461
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public defaultVal()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isShowDisconnectLatlng:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mCurrentLat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mCurrentLng:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightView;->defaultVal()V

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->setPercent(I)V

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->resetByDidconnect()V

    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDistance:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvDistance:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_distance_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvHight:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_hight_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvVs:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHs:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->setPercent(I)V

    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_state_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterModeHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelpInfo:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->stopFlick(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->setStrTime(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHightUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDistanceUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvSpeedUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iput v4, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ctrlType:I

    .line 178
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ibtnSetting:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ibtnReturn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->vDroneInfoState:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelpInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 100
    sget v0, Lcom/fimi/app/x8s/R$id;->main_top_bars:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->handleView:Landroid/view/View;

    .line 101
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_return_time_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    .line 103
    sget v0, Lcom/fimi/app/x8s/R$id;->electric_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MainElectricView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

    .line 104
    sget v0, Lcom/fimi/app/x8s/R$id;->power_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MainPowerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

    .line 106
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ibtn_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ibtnSetting:Landroid/widget/ImageButton;

    .line 107
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ibtn_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ibtnReturn:Landroid/widget/ImageButton;

    .line 109
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_hight:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHight:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_fly_hight:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvHight:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_distance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDistance:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_fly_distance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvDistance:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_vs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvVs:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_hs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHs:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_connect_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_fly_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/fimi/app/x8s/R$id;->x8main_top_center_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightView;

    .line 120
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_height_lable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHightUnit:Landroid/widget/TextView;

    .line 121
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_distance_lable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDistanceUnit:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_vs_unit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvSpeedUnit:Landroid/widget/TextView;

    .line 123
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_drone_info_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->vDroneInfoState:Landroid/view/View;

    .line 124
    sget v0, Lcom/fimi/app/x8s/R$id;->v_landing_return_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    .line 125
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_top_disconnect_latlng:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_top_center_highight_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    .line 127
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_top_center_highight_help:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelp:Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_top_center_highight_help_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelpInfo:Landroid/view/View;

    .line 129
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_top_center_mode_help:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterModeHelp:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_top_center_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    .line 132
    return-void
.end method

.method public onBatteryListener(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V
    .locals 5
    .param p1, "autoFcBattery"    # Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightView;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/widget/X8MainTopRightView;->setFcBattey(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V

    .line 374
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getRemainPercentage()I

    move-result v0

    .line 375
    .local v0, "percent":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->setPercent(I)V

    .line 377
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getRemainingTime()I

    move-result v2

    invoke-static {v2}, Lcom/fimi/app/x8s/tools/TimeFormateUtil;->getRecordTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->setStrTime(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getLandingCapacity()I

    move-result v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getRhtCapacity()I

    move-result v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getTotalCapacity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->setPercent(IIII)V

    .line 379
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 214
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_ibtn_setting:I

    if-ne v0, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onSettingClick()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_ibtn_return:I

    if-ne v0, v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onMainReback()V

    .line 218
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isShowDisconnectLatlng:Z

    goto :goto_0

    .line 220
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_drone_info_state:I

    if-ne v0, v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onDroneInfoStateClick()V

    goto :goto_0

    .line 222
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_top_disconnect_latlng:I

    if-ne v0, v1, :cond_4

    .line 223
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->clipbroadLatlng()V

    goto :goto_0

    .line 224
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->iv_top_center_highight_help_info:I

    if-ne v0, v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->showDiaLog()V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public onConnectedState(Lcom/fimi/x8sdk/entity/ConectState;)V
    .locals 6
    .param p1, "state"    # Lcom/fimi/x8sdk/entity/ConectState;

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 316
    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 317
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 318
    .local v0, "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isCanFly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_can_fly:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setTvConnectState(I)V

    .line 321
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isReadyGo:Z

    .line 326
    :goto_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->onDeviceStateChange(I)V

    .line 347
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isShowDisconnectLatlng:Z

    .line 353
    .end local v0    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    :goto_2
    return-void

    .line 323
    .restart local v0    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_cannot_takeoff:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setTvConnectState(I)V

    .line 324
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isReadyGo:Z

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isTakeOffing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isReadyGo:Z

    .line 329
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_taking:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setTvConnectState(I)V

    .line 330
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/X8FcLogManager;->onDeviceStateChange(I)V

    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 332
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isReadyGo:Z

    .line 333
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/X8FcLogManager;->onDeviceStateChange(I)V

    .line 334
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_5

    move v1, v2

    .line 335
    :goto_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v3, v2

    :cond_4
    or-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 336
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_returning:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setTvConnectState(I)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 334
    goto :goto_3

    .line 337
    :cond_6
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 338
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_landing:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setTvConnectState(I)V

    goto :goto_1

    .line 340
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_flying:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setTvConnectState(I)V

    goto :goto_1

    .line 343
    :cond_8
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isLanding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isReadyGo:Z

    .line 345
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_landing:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setTvConnectState(I)V

    goto/16 :goto_1

    .line 350
    .end local v0    # "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    :cond_9
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isReadyGo:Z

    .line 351
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_connectiong:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->setTvConnectState(I)V

    goto/16 :goto_2
.end method

.method public onDisconnectDroneVal()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightView;->onDisconnectDroneVal()V

    .line 182
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->setPercent(I)V

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->resetByDidconnect()V

    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDistance:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvDistance:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_distance_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvHight:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_hight_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvVs:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHs:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->setPercent(I)V

    .line 193
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_state_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelpInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterModeHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->stopFlick(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->setStrTime(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHightUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDistanceUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvSpeedUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isShowDisconnectLatlng:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mCurrentLat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mCurrentLng:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDisconnectLatlng:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_0
    iput v4, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ctrlType:I

    .line 209
    return-void
.end method

.method public onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V
    .locals 6
    .param p1, "fcHeart"    # Lcom/fimi/x8sdk/dataparser/AutoFcHeart;
    .param p2, "isLowPower"    # Z

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 247
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlType()I

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ctrlType:I

    if-eq v0, v1, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlType()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ctrlType:I

    .line 249
    iget v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->ctrlType:I

    if-ne v0, v5, :cond_0

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->startFlick(Landroid/view/View;)V

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlType()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 255
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isReadyGo:Z

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_top_center_highight_atti_big_1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 257
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterModeHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelpInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_1
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterModeHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_atti_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 273
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_gps_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterModeHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelpInfo:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->stopFlick(Landroid/view/View;)V

    goto :goto_1

    .line 283
    :cond_3
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 284
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isReadyGo:Z

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_top_center_highight_vpu_big_1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 286
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterModeHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelpInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->stopFlick(Landroid/view/View;)V

    goto/16 :goto_1

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterModeHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvTopCenterMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_vpu_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvCenterHighightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->stopFlick(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onPowerChange(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->setPercent(I)V

    .line 314
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8MainTopRightView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V

    .line 243
    return-void
.end method

.method public setTvConnectState(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 364
    return-void
.end method

.method public setX8sMainActivity(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->setX8sMainActivity(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    .line 135
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 136
    return-void
.end method

.method public showCamState(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 0
    .param p1, "cameraStateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    .line 358
    return-void
.end method

.method public showRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V
    .locals 1
    .param p1, "autoRelayHeart"    # Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8MainTopRightView;->setRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V

    .line 414
    return-void
.end method

.method public showSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V
    .locals 1
    .param p1, "signalState"    # Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8MainTopRightView;->setFcSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V

    .line 369
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 4
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    .line 383
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvDistance:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_distance:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 384
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mIvHight:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_hight:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 386
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHight:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHeight()F

    move-result v1

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDistance:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHomeDistance()F

    move-result v1

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHightUnit:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getPrexDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvDistanceUnit:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getPrexDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvHs:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDownVelocity()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvVs:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getGroupSpeed()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mTvSpeedUnit:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getPrexSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->lastState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .line 397
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDeviceLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mCurrentLat:D

    .line 398
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDeviceLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->mCurrentLng:D

    .line 399
    return-void
.end method

.method public stopFlick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->isStartFlick:Z

    .line 466
    if-nez p1, :cond_0

    .line 470
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public switchUnity()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->lastState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->lastState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 408
    :cond_0
    return-void
.end method
