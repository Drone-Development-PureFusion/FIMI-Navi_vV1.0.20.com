.class public Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8BatteryItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SERIOUS_LOWPOWER_VALUE:I = 0xf

.field private static final SP_UPDATE_CAP_TIP:Ljava/lang/String; = "sp_update_cap_tip"


# instance fields
.field private COLOR_ABNORMAL_YELLOW:I

.field private COLOR_LOW_TEMP_BLUE:I

.field private COLOR_NORMAL_WHITE:I

.field private COLOR_SERIOUS_RED:I

.field private batteryLayout1:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

.field private batteryLayout2:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

.field private batteryLayout3:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

.field private btnCapacityNotUpdate:Landroid/widget/ImageButton;

.field private context:Landroid/content/Context;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private isRequested:Z

.field private rlItem:Landroid/view/View;

.field private sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

.field private sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

.field private stubItem:Landroid/view/ViewStub;

.field private swbLowLanding:Lcom/fimi/widget/SwitchButton;

.field private swbLowReturn:Lcom/fimi/widget/SwitchButton;

.field private tbLowPowerOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tbLowPowerSeriousOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tvOverReleaseTimes:Landroid/widget/TextView;

.field private tvRecycleTimes:Landroid/widget/TextView;

.field private tvRemainCapacity:Landroid/widget/TextView;

.field private tvRemainElectric:Landroid/widget/TextView;

.field private tvTemperature:Landroid/widget/TextView;

.field updateDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

.field private x8BatteryBtnRestParams:Landroid/widget/Button;

.field private x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 59
    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isRequested:Z

    .line 63
    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_LOW_TEMP_BLUE:I

    .line 64
    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_NORMAL_WHITE:I

    .line 65
    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_ABNORMAL_YELLOW:I

    .line 66
    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_SERIOUS_RED:I

    .line 76
    sget v0, Lcom/fimi/app/x8s/R$id;->stub_battery_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->stubItem:Landroid/view/ViewStub;

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_battery_state_low_temperature_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_LOW_TEMP_BLUE:I

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_battery_state_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_NORMAL_WHITE:I

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_battery_state_abnormal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_ABNORMAL_YELLOW:I

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_battery_state_serious:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_SERIOUS_RED:I

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerSeriousOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowReturn:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowLanding:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->restBatteryParams()V

    return-void
.end method

.method private isNeedShowUpdateCapDialog()Z
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_update_cap_tip"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestValue()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getLowPowerOpt(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 152
    :cond_0
    return-void
.end method

.method private restBatteryParams()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 535
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setLowPowerOpt(IZ)V

    .line 537
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/fimi/widget/SwitchButton;->getToggleOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 539
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->setLowReturn(Z)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/fimi/widget/SwitchButton;->getToggleOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 543
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->setLowLanding(Z)V

    .line 546
    :cond_1
    return-void
.end method

.method private setRecycleTimes(II)V
    .locals 2
    .param p1, "percent"    # I
    .param p2, "notUpdateTimes"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRecycleTimes:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    const/16 v0, 0x14

    if-le p2, v0, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isNeedShowUpdateCapDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->showUpdateDialog()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->btnCapacityNotUpdate:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->btnCapacityNotUpdate:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRemainCapacity(III)V
    .locals 4
    .param p1, "curCapacity"    # I
    .param p2, "totalCapacity"    # I
    .param p3, "capacityNotUpdateTimes"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainCapacity:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_unit_mah:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    return-void
.end method

.method private setRemainElectric(I)V
    .locals 6
    .param p1, "percent"    # I

    .prologue
    const/16 v5, 0xf

    .line 381
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainElectric:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getCurrentValue()F

    move-result v2

    float-to-int v0, v2

    .line 385
    .local v0, "lowPowerValue":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getCurrentValue()F

    move-result v2

    float-to-int v1, v2

    .line 387
    .local v1, "seriousLowPowerValue":I
    if-gt v5, p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 388
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainElectric:Landroid/widget/TextView;

    sget v3, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_ABNORMAL_YELLOW:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    :goto_0
    return-void

    .line 389
    :cond_0
    if-ge p1, v5, :cond_1

    .line 390
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainElectric:Landroid/widget/TextView;

    sget v3, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_SERIOUS_RED:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainElectric:Landroid/widget/TextView;

    sget v3, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_NORMAL_WHITE:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setTemperature(F)V
    .locals 8
    .param p1, "temperature"    # F

    .prologue
    const/4 v7, 0x1

    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 434
    const-string v0, ""

    .line 435
    .local v0, "state":Ljava/lang/String;
    const/high16 v1, -0x3ee00000    # -10.0f

    cmpg-float v1, v1, p1

    if-gez v1, :cond_2

    cmpg-float v1, p1, v2

    if-gez v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_low_temperature:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvTemperature:Landroid/widget/TextView;

    iget v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_LOW_TEMP_BLUE:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvTemperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_temperature_format:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    const-string/jumbo v2, "\u7981\u6b62\u8d77\u98de"

    invoke-static {v1, v2, v7}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 453
    :cond_1
    return-void

    .line 438
    :cond_2
    cmpg-float v1, v2, p1

    if-gtz v1, :cond_3

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_3

    .line 439
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_normal_temperature:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvTemperature:Landroid/widget/TextView;

    iget v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_NORMAL_WHITE:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 441
    :cond_3
    cmpg-float v1, v3, p1

    if-gez v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_high_temperature:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvTemperature:Landroid/widget/TextView;

    iget v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_SERIOUS_RED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private showUpdateDialog()V
    .locals 5

    .prologue
    .line 490
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->updateDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_update_capacity_tittle:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_update_capacity_content:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$11;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$11;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->updateDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .line 498
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_update_cap_tip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 499
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->updateDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->show()V

    .line 500
    return-void
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isShow:Z

    .line 367
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rlItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rlItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 90
    return-void
.end method

.method public onBatteryReceive(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V
    .locals 24
    .param p1, "autoFcBattery"    # Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isShow:Z

    if-eqz v4, :cond_0

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getCell1Voltage()D

    move-result-wide v6

    .line 345
    .local v6, "cell1voltage":D
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getCell2Voltage()D

    move-result-wide v8

    .line 346
    .local v8, "cell2voltage":D
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getCell3Voltage()D

    move-result-wide v10

    .line 347
    .local v10, "cell3voltage":D
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getUvc()I

    move-result v12

    .line 349
    .local v12, "dischargeCnt":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->batteryLayout1:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    invoke-virtual/range {v5 .. v12}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->setData(DDDI)V

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->batteryLayout2:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    move-wide v14, v8

    move-wide/from16 v16, v6

    move-wide/from16 v18, v10

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->setData(DDDI)V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->batteryLayout3:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    move-wide v14, v10

    move-wide/from16 v16, v8

    move-wide/from16 v18, v6

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->setData(DDDI)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getCurrentCapacity()I

    move-result v21

    .line 354
    .local v21, "curCapacity":I
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getTotalCapacity()I

    move-result v23

    .line 355
    .local v23, "totalCapacity":I
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getRemainPercentage()I

    move-result v22

    .line 356
    .local v22, "percent":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setRemainElectric(I)V

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getRcNotUpdateCnt()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setRemainCapacity(III)V

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getCc()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setRecycleTimes(II)V

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->getTemperature()F

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setTemperature(F)V

    move-object/from16 v4, p0

    move v5, v12

    .line 360
    invoke-virtual/range {v4 .. v11}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setDischargeCnt(IDDD)V

    .line 362
    .end local v6    # "cell1voltage":D
    .end local v8    # "cell2voltage":D
    .end local v10    # "cell3voltage":D
    .end local v12    # "dischargeCnt":I
    .end local v21    # "curCapacity":I
    .end local v22    # "percent":I
    .end local v23    # "totalCapacity":I
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 506
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_capacity_not_update:I

    if-ne v0, v1, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->showUpdateDialog()V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_battery_btn_rest_params:I

    if-ne v0, v1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->showRestParamDialog()V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isShow:Z

    if-nez v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rlItem:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 115
    if-nez p1, :cond_3

    .line 116
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainElectric:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_default_na:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainCapacity:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_default_na:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRecycleTimes:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_default_na:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvTemperature:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_default_na:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvOverReleaseTimes:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_default_na:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setViewEnable(Z)V

    .line 122
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isRequested:Z

    .line 130
    :cond_2
    :goto_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    .line 131
    .local v0, "isOngroud":Z
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->x8BatteryBtnRestParams:Landroid/widget/Button;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->x8BatteryBtnRestParams:Landroid/widget/Button;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "isOngroud":Z
    :cond_3
    iget-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isRequested:Z

    if-nez v3, :cond_2

    .line 125
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setViewEnable(Z)V

    .line 126
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->requestValue()V

    .line 127
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isRequested:Z

    goto :goto_1

    .restart local v0    # "isOngroud":Z
    :cond_4
    move v1, v2

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    const v1, 0x3ecccccd    # 0.4f

    goto :goto_3
.end method

.method public setDischargeCnt(IDDD)V
    .locals 4
    .param p1, "dischargeCnt"    # I
    .param p2, "voltage1"    # D
    .param p4, "voltage2"    # D
    .param p6, "voltage3"    # D

    .prologue
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 465
    cmpg-double v0, p2, v2

    if-gez v0, :cond_0

    .line 466
    add-int/lit8 p1, p1, 0x1

    .line 468
    :cond_0
    cmpg-double v0, p4, v2

    if-gez v0, :cond_1

    .line 469
    add-int/lit8 p1, p1, 0x1

    .line 471
    :cond_1
    cmpg-double v0, p6, v2

    if-gez v0, :cond_2

    .line 472
    add-int/lit8 p1, p1, 0x1

    .line 475
    :cond_2
    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvOverReleaseTimes:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvOverReleaseTimes:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_SERIOUS_RED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    :goto_0
    return-void

    .line 479
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvOverReleaseTimes:Landroid/widget/TextView;

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_never_release:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvOverReleaseTimes:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->COLOR_NORMAL_WHITE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 480
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 550
    return-void
.end method

.method public setLowPowerOpt(IZ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "isReset"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getCurrentValue()F

    move-result v0

    float-to-int v2, v0

    .line 300
    .local v2, "lowPowerValue":I
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->getCurrentValue()F

    move-result v0

    float-to-int v3, v0

    .line 301
    .local v3, "seriousLowPowerValue":I
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v4

    .line 302
    .local v4, "lowPowerOpt":I
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerSeriousOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v5

    .line 304
    .local v5, "seriousLowPowerOpt":I
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;IIZ)V

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setLowPowerOpt(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIII)V

    .line 333
    return-void
.end method

.method public setViewEnable(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnable(Z)V

    .line 157
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnable(Z)V

    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerSeriousOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8TabHost;->setEnabled(Z)V

    .line 161
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 162
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerSeriousOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->setAlpha(F)V

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowLanding:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 166
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowReturn:Lcom/fimi/widget/SwitchButton;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowLanding:Lcom/fimi/widget/SwitchButton;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setAlpha(F)V

    .line 169
    return-void

    :cond_0
    move v0, v2

    .line 161
    goto :goto_0

    :cond_1
    move v0, v2

    .line 162
    goto :goto_1

    :cond_2
    move v0, v2

    .line 166
    goto :goto_2

    :cond_3
    move v1, v2

    .line 167
    goto :goto_3
.end method

.method public showItem()V
    .locals 3

    .prologue
    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->isShow:Z

    .line 174
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rlItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->stubItem:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_battery_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rlItem:Landroid/view/View;

    .line 177
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->context:Landroid/content/Context;

    .line 178
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->layout_battery_core1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->batteryLayout1:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    .line 179
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->layout_battery_core2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->batteryLayout2:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    .line 180
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->layout_battery_core3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->batteryLayout3:Lcom/fimi/app/x8s/widget/X8BatteryLayout;

    .line 183
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_remain_electric:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainElectric:Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_remain_capacity:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRemainCapacity:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_capacity_not_update:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->btnCapacityNotUpdate:Landroid/widget/ImageButton;

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_recycle_times:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvRecycleTimes:Landroid/widget/TextView;

    .line 188
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_temperature:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvTemperature:Landroid/widget/TextView;

    .line 189
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_over_release_times:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tvOverReleaseTimes:Landroid/widget/TextView;

    .line 191
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->vsb_low_power_warning:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    .line 192
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->vsb_low_power_serious_warning:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    .line 194
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->th_low_power_operation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 195
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->th_low_power_operation_serious:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerSeriousOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->swb_low_power_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowReturn:Lcom/fimi/widget/SwitchButton;

    .line 197
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->swb_low_power_landing:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/widget/SwitchButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowLanding:Lcom/fimi/widget/SwitchButton;

    .line 198
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_battery_btn_rest_params:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->x8BatteryBtnRestParams:Landroid/widget/Button;

    .line 199
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->x8BatteryBtnRestParams:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowReturn:Lcom/fimi/widget/SwitchButton;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 216
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowLanding:Lcom/fimi/widget/SwitchButton;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$3;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 230
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->btnCapacityNotUpdate:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$4;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V

    .line 239
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarning:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$5;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;)V

    .line 253
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$6;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;)V

    .line 267
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->sbLowPowerWarningSerious:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$7;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setListener(Lcom/fimi/app/x8s/interfaces/IX8ValueSeakBarViewListener;)V

    .line 274
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$8;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 282
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->tbLowPowerSeriousOperation:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$9;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 290
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rlItem:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowReturn:Lcom/fimi/widget/SwitchButton;

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowReturn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 292
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->swbLowLanding:Lcom/fimi/widget/SwitchButton;

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowLanding()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 295
    return-void
.end method

.method public showRestParamDialog()V
    .locals 6

    .prologue
    .line 517
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    .line 519
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_battery_reset_params:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    .line 520
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_battery_reset_params_hint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_general_rest:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$12;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$12;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 532
    return-void
.end method
