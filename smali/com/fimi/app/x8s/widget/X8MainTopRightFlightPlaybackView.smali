.class public Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;
.super Landroid/widget/LinearLayout;
.source "X8MainTopRightFlightPlaybackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final IMAGE_TRANMISSION_LOW:I = 0x14

.field private static final IMAGE_TRANMISSION_MID:I = 0x2d


# instance fields
.field private hightElectric:I

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

.field private lowElectric:I

.field private mHandleSignalState:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

.field private mIvBattery:Landroid/widget/ImageView;

.field private mIvFpvSignal:Landroid/widget/ImageView;

.field private mIvGps:Landroid/widget/ImageView;

.field private mIvHandleSignal:Landroid/widget/ImageView;

.field private mIvMode:Landroid/widget/TextView;

.field private mX8FpvSignalState:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

.field private mX8GpsNumState:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

.field private middleElectric:I

.field tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

.field tvVoltage:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->IDEL:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mHandleSignalState:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    .line 31
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->IDEL:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8GpsNumState:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    .line 32
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->IDEL:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8FpvSignalState:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 42
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->lowElectric:I

    .line 43
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->middleElectric:I

    .line 44
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->hightElectric:I

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_main_top_right:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_iv_top_mode:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvMode:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_iv_top_gps:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvGps:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_iv_top_fpv_signal:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvFpvSignal:Landroid/widget/ImageView;

    .line 51
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_iv_top_handle_signal:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvHandleSignal:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_iv_top_battery:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_tv_top_battery:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvVoltage:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    .line 55
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_tv_top_battery_percent:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvGps:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvFpvSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvHandleSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvMode:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_battery_state_serious:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->lowElectric:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_battery_state_abnormal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->middleElectric:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->x8_battery_state_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->hightElectric:I

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->hightElectric:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setTextColor(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public defaultVal()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->IDEL:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mHandleSignalState:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    .line 72
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->IDEL:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8GpsNumState:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    .line 73
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->IDEL:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8FpvSignalState:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvMode:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvVoltage:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->hightElectric:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvHandleSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_handle_signal_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvFpvSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fpv_signal_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_battery_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvGps:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_gps_single_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 224
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_iv_top_gps:I

    if-ne v0, v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onGpsClick()V

    goto :goto_0

    .line 226
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_iv_top_fpv_signal:I

    if-ne v0, v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onFpvClick()V

    goto :goto_0

    .line 228
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_iv_top_handle_signal:I

    if-ne v0, v1, :cond_4

    .line 229
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onRcClick()V

    goto :goto_0

    .line 230
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_iv_top_battery:I

    if-ne v0, v1, :cond_5

    .line 231
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onBatteryClick()V

    goto :goto_0

    .line 232
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_iv_top_mode:I

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onModelClick()V

    goto :goto_0
.end method

.method public onDisconnectDroneVal()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvMode:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvVoltage:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->hightElectric:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvHandleSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_handle_signal_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_battery_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvGps:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_gps_single_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    return-void
.end method

.method public setFcBattey(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V
    .locals 12
    .param p1, "battey"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;

    .prologue
    const/16 v11, 0x42

    const/16 v10, 0x21

    const/16 v9, 0xf

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 172
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getRemainPercentage()I

    move-result v1

    .line 174
    .local v1, "percent":I
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLowPowerValue()I

    move-result v3

    .line 175
    .local v3, "v":I
    const/4 v0, 0x0

    .line 176
    .local v0, "imgColor":I
    if-ge v1, v9, :cond_1

    .line 177
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->lowElectric:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setTextColor(I)V

    .line 186
    :goto_0
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvVoltage:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getVoltage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "type":I
    if-lt v1, v11, :cond_3

    .line 190
    const/4 v2, 0x3

    .line 199
    :goto_1
    if-nez v2, :cond_6

    .line 200
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_main_battery_low:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    :cond_0
    :goto_2
    return-void

    .line 178
    .end local v2    # "type":I
    :cond_1
    if-lt v1, v9, :cond_2

    if-ge v1, v3, :cond_2

    .line 179
    const/4 v0, 0x1

    .line 180
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->middleElectric:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setTextColor(I)V

    goto :goto_0

    .line 182
    :cond_2
    const/4 v0, 0x2

    .line 183
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->tvPercentCapacty:Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->hightElectric:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8MiLantingStrokeTextView;->setTextColor(I)V

    goto :goto_0

    .line 191
    .restart local v2    # "type":I
    :cond_3
    if-lt v1, v10, :cond_4

    if-ge v1, v11, :cond_4

    .line 192
    const/4 v2, 0x2

    goto :goto_1

    .line 193
    :cond_4
    if-lt v1, v9, :cond_5

    if-ge v1, v10, :cond_5

    .line 194
    const/4 v2, 0x1

    goto :goto_1

    .line 196
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 201
    :cond_6
    if-ne v2, v7, :cond_8

    .line 202
    if-ne v0, v8, :cond_7

    .line 203
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_main_battery1:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 204
    :cond_7
    if-ne v0, v7, :cond_0

    .line 205
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_main_battery_yellow1:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 207
    :cond_8
    if-ne v2, v8, :cond_a

    .line 208
    if-ne v0, v8, :cond_9

    .line 209
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_main_battery2:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 210
    :cond_9
    if-ne v0, v7, :cond_0

    .line 211
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_main_battery_yellow2:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 213
    :cond_a
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvBattery:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_main_battery_ful:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public setFcSingal(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;)V
    .locals 3
    .param p1, "signalState"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mHandleSignalState:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;->getX8HandleSignalState()Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;->getX8HandleSignalState()Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mHandleSignalState:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    .line 112
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8HandleSignalState:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mHandleSignalState:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvHandleSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_handle_signal_active:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvMode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;->getSatelliteNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8GpsNumState:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;->getSatelliteState()Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;->getSatelliteState()Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8GpsNumState:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    .line 130
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8GpsNumState:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8GpsNumState:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 143
    :cond_1
    :goto_1
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvHandleSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_handle_signal_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvHandleSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_handlesignal_middle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvHandleSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_handlesignal_low:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvGps:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_gps_single_nomal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 135
    :pswitch_4
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvGps:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_gps_single_middle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 138
    :pswitch_5
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvGps:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_gps_single_weakness:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .line 239
    return-void
.end method

.method public setRelayHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;)V
    .locals 2
    .param p1, "autoRelayHeart"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->getX8FpvSignalState()Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8FpvSignalState:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    if-eq v0, v1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->getX8FpvSignalState()Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8FpvSignalState:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 157
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8FpvSignalState:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mX8FpvSignalState:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvFpvSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fpv_signal_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvFpvSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fpv_signal_middle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MainTopRightFlightPlaybackView;->mIvFpvSignal:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_fpv_signal_low:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
