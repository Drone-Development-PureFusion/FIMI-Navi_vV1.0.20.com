.class public Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8FlightlogTopBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ibtnReturn:Landroid/widget/ImageButton;

.field private isCollect:Z

.field private lastState:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;

.field private mActivity:Landroid/app/Activity;

.field private mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

.field private mIvDistance:Landroid/widget/ImageView;

.field private mIvFlyState:Landroid/widget/ImageView;

.field private mIvHight:Landroid/widget/ImageView;

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

.field private mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;

.field private tvConnectState:Landroid/widget/TextView;

.field private vDroneInfoState:Landroid/view/View;

.field private vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

.field private x8IbtnFlightlogCollect:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/View;ZLandroid/app/Activity;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "isCollect"    # Z
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->lastState:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    .line 80
    iput-boolean p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->isCollect:Z

    .line 81
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mActivity:Landroid/app/Activity;

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 83
    if-eqz p2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->x8IbtnFlightlogCollect:Landroid/widget/ImageButton;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_selector_flightlog_btn_collect_end:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->x8IbtnFlightlogCollect:Landroid/widget/ImageButton;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_selector_flightlog_btn_collect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Lcom/fimi/widget/CustomLoadManage;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;Lcom/fimi/widget/CustomLoadManage;)Lcom/fimi/widget/CustomLoadManage;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;
    .param p1, "x1"    # Lcom/fimi/widget/CustomLoadManage;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->isCollect:Z

    return v0
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->isCollect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->x8IbtnFlightlogCollect:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public defaultVal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->defaultVal()V

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->setPercent(I)V

    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->resetByDidconnect()V

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvDistance:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvDistance:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_distance_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 157
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvHight:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_hight_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 158
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvVs:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHs:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->tvConnectState:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->setPercent(I)V

    .line 162
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_state_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->setStrTime(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHightUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvDistanceUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvSpeedUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public eventBusUI(Lcom/fimi/kernel/base/EventMessage;)V
    .locals 4
    .param p1, "eventMessage"    # Lcom/fimi/kernel/base/EventMessage;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fimi/kernel/base/EventMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x8_flightlog_rename_file_event_key"

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mCustomLoadManage:Lcom/fimi/widget/CustomLoadManage;

    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    .line 201
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->isCollect:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_playback_collection_successful:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_playback_collection_Cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public initActions()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->x8IbtnFlightlogCollect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->x8IbtnFlightlogCollect:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;

    const/16 v2, 0x1f4

    invoke-direct {v1, p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->ibtnReturn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->vDroneInfoState:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 93
    sget v0, Lcom/fimi/app/x8s/R$id;->flight_top_bars:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->handleView:Landroid/view/View;

    .line 94
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_return_time_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    .line 96
    sget v0, Lcom/fimi/app/x8s/R$id;->electric_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MainElectricView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

    .line 97
    sget v0, Lcom/fimi/app/x8s/R$id;->power_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MainPowerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

    .line 99
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ibtn_flightlog_collect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->x8IbtnFlightlogCollect:Landroid/widget/ImageButton;

    .line 100
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_ibtn_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->ibtnReturn:Landroid/widget/ImageButton;

    .line 102
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_hight:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHight:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_fly_hight:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvHight:Landroid/widget/ImageView;

    .line 104
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_distance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvDistance:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_fly_distance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvDistance:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_vs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvVs:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_hs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHs:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_connect_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->tvConnectState:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_fly_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/fimi/app/x8s/R$id;->x8main_top_center_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;

    .line 113
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_height_lable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHightUnit:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_distance_lable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvDistanceUnit:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_vs_unit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvSpeedUnit:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_drone_info_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->vDroneInfoState:Landroid/view/View;

    .line 117
    sget v0, Lcom/fimi/app/x8s/R$id;->v_landing_return_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    .line 119
    return-void
.end method

.method public onBatteryListener(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V
    .locals 5
    .param p1, "autoFcBattery"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->setFcBattey(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V

    .line 280
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getRemainPercentage()I

    move-result v0

    .line 281
    .local v0, "percent":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->setPercent(I)V

    .line 283
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getRemainingTime()I

    move-result v2

    invoke-static {v2}, Lcom/fimi/app/x8s/tools/TimeFormateUtil;->getRecordTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->setStrTime(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getLandingCapacity()I

    move-result v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getRhtCapacity()I

    move-result v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getTotalCapacity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->setPercent(IIII)V

    .line 285
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 191
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_ibtn_return:I

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 193
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;->toMainUI()V

    .line 195
    :cond_0
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public onConnectedState(Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;)V
    .locals 5
    .param p1, "droneState"    # Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;
    .param p2, "autoFcHeartPlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-virtual {p1}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isOnGround()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isCanFly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fly_status_can_fly:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->setTvConnectState(I)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fly_status_cannot_takeoff:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->setTvConnectState(I)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isTakeOffing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fly_status_taking:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->setTvConnectState(I)V

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p1}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isInSky()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getCtrlModel()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 245
    :goto_1
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getCtrlModel()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    :goto_2
    or-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 246
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fly_status_returning:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->setTvConnectState(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 244
    goto :goto_1

    :cond_5
    move v1, v2

    .line 245
    goto :goto_2

    .line 247
    :cond_6
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getCtrlModel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 248
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fly_status_landing:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->setTvConnectState(I)V

    goto :goto_0

    .line 250
    :cond_7
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fly_status_flying:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->setTvConnectState(I)V

    goto :goto_0

    .line 253
    :cond_8
    invoke-virtual {p1}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isLanding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_fly_status_landing:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->setTvConnectState(I)V

    goto :goto_0
.end method

.method public onDisconnectDroneVal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->onDisconnectDroneVal()V

    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainElectricView:Lcom/fimi/app/x8s/widget/X8MainElectricView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8MainElectricView;->setPercent(I)V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->resetByDidconnect()V

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvDistance:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvDistance:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_distance_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 176
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvHight:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_hight_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvVs:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHs:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->tvConnectState:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_fly_status_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->setPercent(I)V

    .line 181
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_state_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainReturnTimeTextView:Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->setStrTime(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHightUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvDistanceUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvSpeedUnit:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public onFcHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;Z)V
    .locals 2
    .param p1, "fcHeart"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;
    .param p2, "isLowPower"    # Z

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getCtrlType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_atti_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getCtrlType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_gps_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getCtrlType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvFlyState:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_vpu_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onPowerChange(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainPowerView:Lcom/fimi/app/x8s/widget/X8MainPowerView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8MainPowerView;->setPercent(I)V

    .line 231
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->listener:Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;

    .line 212
    return-void
.end method

.method public setTvConnectState(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->tvConnectState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    return-void
.end method

.method public setX8sMainActivity(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->vLandingReturnView:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->setX8sMainActivity(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    .line 122
    return-void
.end method

.method public showCamState(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 0
    .param p1, "cameraStateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    .line 264
    return-void
.end method

.method public showRelayHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;)V
    .locals 1
    .param p1, "autoRelayHeart"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->setRelayHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;)V

    .line 317
    return-void
.end method

.method public showSingal(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;)V
    .locals 1
    .param p1, "signalState"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mX8MainTopCenterView:Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->setFcSingal(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;)V

    .line 275
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;)V
    .locals 4
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvDistance:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_distance:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mIvHight:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fly_hight:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHight:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getHeight()F

    move-result v1

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvDistance:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getHomeDistance()F

    move-result v1

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHightUnit:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getPrexDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvDistanceUnit:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getPrexDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvHs:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getDownVelocity()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvVs:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getGroupSpeed()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->mTvSpeedUnit:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getPrexSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->lastState:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    .line 302
    return-void
.end method

.method public switchUnity()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->lastState:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->lastState:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->showSportState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;)V

    .line 311
    :cond_0
    return-void
.end method
