.class public Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "X8FlightPlaybackActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/UpdateChangeMapTypeInterface;
.implements Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private isBatteryPress:Z

.field private isLandPress:Z

.field private isParseFileSucceed:Z

.field private isReturnPress:Z

.field ix8FlightLogTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;

.field private lowPowerValue:I

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mMode:I

.field private mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

.field private mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

.field private remainPercentage:I

.field private rockerKeyMessage:I

.field private rockerMode:Ljava/lang/String;

.field private showMoreBatteryStatus:Landroid/widget/ImageView;

.field private showMoreGpsStatus:Landroid/widget/ImageView;

.field private showMoreRemoteStatus:Landroid/widget/ImageView;

.field private x8BatteryElectricityDesValue:Landroid/widget/TextView;

.field private x8BatteryTemDesValue:Landroid/widget/TextView;

.field private x8BatteryVoltageOneValue:Landroid/widget/TextView;

.field private x8BatteryVoltageSencondValue:Landroid/widget/TextView;

.field private x8BatteryVoltageThreeValue:Landroid/widget/TextView;

.field private x8BtnPaly:Landroid/widget/ImageView;

.field private x8DrontBatteryRl:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

.field private x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

.field private x8FlightplaybackMain:Landroid/view/View;

.field private x8PlayBackProgressFact:Landroid/widget/TextView;

.field private x8PlayBackTotalTime:Landroid/widget/TextView;

.field private x8ProgressLoading:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

.field private x8SeebarPaly:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    .line 232
    new-instance v0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$5;-><init>(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->ix8FlightLogTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8SeebarPaly:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->changePlayButton(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/app/x8s/widget/RemotesimulatorView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreRemoteStatus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->changeViewBg(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->changeMapType(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/kernel/percent/PercentRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8DrontBatteryRl:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreBatteryStatus:Landroid/widget/ImageView;

    return-object v0
.end method

.method private changeMapType(I)V
    .locals 2
    .param p1, "backType"    # I

    .prologue
    .line 240
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreGpsStatus:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_playback_satellite_map:I

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->changeViewBg(Landroid/widget/ImageView;I)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreGpsStatus:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_playback_satellite_map_end:I

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->changeViewBg(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method private changePlayButton(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BtnPaly:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    return-void
.end method

.method private changeViewBg(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "resID"    # I

    .prologue
    .line 253
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    return-void
.end method

.method private reFreshDroneLineList(Landroid/widget/SeekBar;)V
    .locals 14
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 402
    iget-object v8, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->getListDronePoint()Ljava/util/List;

    move-result-object v4

    .line 403
    .local v4, "listDronePoint":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 404
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v6, v8, v9

    .line 405
    .local v6, "precent":F
    iget-object v8, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v8, v8, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    if-nez v8, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v8, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v8, v8, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v1, v8

    .line 409
    .local v1, "count":I
    iget-object v8, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v8, v8, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 412
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-ge v7, v1, :cond_4

    .line 413
    iget-object v8, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v8, v8, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 414
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    .line 415
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 416
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 417
    instance-of v9, v5, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    if-eqz v9, :cond_2

    move-object v0, v5

    .line 418
    check-cast v0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    .line 419
    .local v0, "autoFcSportStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;->getLongitude()D

    move-result-wide v12

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 420
    .local v2, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 412
    .end local v0    # "autoFcSportStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;
    .end local v2    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 427
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 428
    iget-object v9, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v9, v8, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->moveDroneMarker(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)V

    goto :goto_0
.end method

.method private showBatteryInfo(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V
    .locals 5
    .param p1, "autoFcBatteryPlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;

    .prologue
    const/4 v4, 0x2

    .line 387
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryTemDesValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getTemperature()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryElectricityDesValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getCurrents()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageOneValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getCell1Voltage()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageSencondValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getCell2Voltage()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageThreeValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getCell3Voltage()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    return-void
.end method

.method private showRcMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 440
    packed-switch p1, :pswitch_data_0

    .line 451
    const-string v0, " "

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerMode:Ljava/lang/String;

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->showGetRcModeText(Ljava/lang/String;)V

    .line 455
    return-void

    .line 442
    :pswitch_0
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_america_rocker:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerMode:Ljava/lang/String;

    goto :goto_0

    .line 445
    :pswitch_1
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_japanese_rocker:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerMode:Ljava/lang/String;

    goto :goto_0

    .line 448
    :pswitch_2
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_chinese_rocker:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerMode:Ljava/lang/String;

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public doTrans()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BtnPaly:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;

    const/16 v2, 0x1f4

    invoke-direct {v1, p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;-><init>(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreRemoteStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$2;-><init>(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreGpsStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$3;-><init>(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreBatteryStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;-><init>(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 229
    sget v0, Lcom/fimi/app/x8s/R$layout;->activity_x8_flightplayback:I

    return v0
.end method

.method public initData()V
    .locals 5

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "x8_flightlog_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "filePath":Ljava/lang/String;
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_flightplayback_main:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightplaybackMain:Landroid/view/View;

    .line 129
    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightplaybackMain:Landroid/view/View;

    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v4

    iget-object v4, v4, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-direct {v2, v3, v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;-><init>(Landroid/view/View;ZLandroid/app/Activity;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    .line 131
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->ix8FlightLogTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;)V

    .line 132
    sget v2, Lcom/fimi/app/x8s/R$id;->show_more_remote_status:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreRemoteStatus:Landroid/widget/ImageView;

    .line 133
    sget v2, Lcom/fimi/app/x8s/R$id;->show_more_gps_status:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreGpsStatus:Landroid/widget/ImageView;

    .line 134
    sget v2, Lcom/fimi/app/x8s/R$id;->show_more_battery_status:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showMoreBatteryStatus:Landroid/widget/ImageView;

    .line 135
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_remote_simulator:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    .line 136
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_progress_loading:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8ProgressLoading:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 137
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_play_back_total_time:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8PlayBackTotalTime:Landroid/widget/TextView;

    .line 138
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_play_back_progress_fact:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8PlayBackProgressFact:Landroid/widget/TextView;

    .line 139
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_btn_paly:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BtnPaly:Landroid/widget/ImageView;

    .line 140
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_seebar_paly:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8SeebarPaly:Landroid/widget/SeekBar;

    .line 141
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8SeebarPaly:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 143
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_dront_battery_rl:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8DrontBatteryRl:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 144
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_battery_tem_des_value:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryTemDesValue:Landroid/widget/TextView;

    .line 145
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_battery_electricity_des_value:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryElectricityDesValue:Landroid/widget/TextView;

    .line 146
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_battery_voltage_one_value:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageOneValue:Landroid/widget/TextView;

    .line 147
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_battery_voltage_sencond_value:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageSencondValue:Landroid/widget/TextView;

    .line 148
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_battery_voltage_three_value:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageThreeValue:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 152
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v3, Lcom/fimi/app/x8s/R$id;->mapFragment:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    .line 153
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-direct {v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    .line 155
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$id;->mapFragment:I

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 158
    :cond_0
    new-instance v2, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightplaybackMain:Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    .line 159
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-static {v2}, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->setErrorCodeHolder(Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;)V

    .line 160
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->openUi()V

    .line 161
    new-instance v2, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-direct {v2}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .line 162
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8ProgressLoading:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->setX8ProgressLoading(Lcom/fimi/kernel/percent/PercentRelativeLayout;)V

    .line 163
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-virtual {v2, p0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->setOnFlightPlayBackAction(Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;)V

    .line 164
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-virtual {v2, v0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->parseFileDate(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 435
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->stopFlightPlayback()V

    .line 436
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "i"    # I
    .param p3, "b"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v1, v1, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->play2Second:I

    mul-int/2addr v1, p2

    iput v1, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onResume()V

    .line 105
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 106
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->stopFlightPlayback()V

    .line 90
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->mPlayStatus:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;->Stop:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->sendEmptyMessageDelayed()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8PlayBackProgressFact:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/kernel/utils/TimerUtil;->getInstance()Lcom/fimi/kernel/utils/TimerUtil;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/utils/TimerUtil;->stringForTime(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->reFreshDroneLineList(Landroid/widget/SeekBar;)V

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightPlayBackPresenter:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->playFlightPlayback()V

    .line 100
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseActivity;->onWindowFocusChanged(Z)V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 114
    :cond_0
    return-void
.end method

.method public parseFileDateEnd(IZ)V
    .locals 4
    .param p1, "totalTime"    # I
    .param p2, "isParseFileSucceed"    # Z

    .prologue
    .line 258
    iput-boolean p2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isParseFileSucceed:Z

    .line 259
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8ProgressLoading:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 260
    invoke-static {}, Lcom/fimi/kernel/utils/TimerUtil;->getInstance()Lcom/fimi/kernel/utils/TimerUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/fimi/kernel/utils/TimerUtil;->stringForTime(IZ)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "totalTimeStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8PlayBackTotalTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8SeebarPaly:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 264
    return-void
.end method

.method public setPlaybackProgress(IZ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "isPlayEnd"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8SeebarPaly:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8PlayBackProgressFact:Landroid/widget/TextView;

    invoke-static {}, Lcom/fimi/kernel/utils/TimerUtil;->getInstance()Lcom/fimi/kernel/utils/TimerUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/fimi/kernel/utils/TimerUtil;->stringForTime(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    if-eqz p2, :cond_0

    .line 292
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_selector_flightlog_btn_play:I

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->changePlayButton(I)V

    .line 293
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->getListDronePoint()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->closeUi()V

    .line 297
    :cond_0
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->requestWindowFeature(I)Z

    .line 119
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 120
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 122
    return-void
.end method

.method public showAutoFcBattery(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V
    .locals 1
    .param p1, "autoFcBatteryPlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->getRemainPercentage()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->remainPercentage:I

    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->onBatteryListener(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showBatteryInfo(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V

    .line 316
    return-void
.end method

.method public showAutoFcErrCode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "x8ErrorCodeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mX8MainErrorCodePowerPitchAngleController:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->onErrorCode(Ljava/util/List;)V

    .line 321
    return-void
.end method

.method public showAutoFcHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;)V
    .locals 4
    .param p1, "autoFcHeartPlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;
    .param p2, "droneStateFlightPlayback"    # Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;

    .prologue
    const/4 v0, 0x0

    .line 301
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    iget v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->lowPowerValue:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->onFcHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;Z)V

    .line 302
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-virtual {v0, p2, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->onConnectedState(Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;)V

    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getPowerConRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->onPowerChange(I)V

    .line 304
    return-void

    .line 301
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->lowPowerValue:I

    iget v3, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->remainPercentage:I

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showAutoFcSignalState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;)V
    .locals 1
    .param p1, "autoFcSignalStatePlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->showSingal(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;)V

    .line 309
    return-void
.end method

.method public showAutoFcSportState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;)V
    .locals 1
    .param p1, "autoFcSportStatePlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->showSportState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;)V

    .line 326
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->handlerDroneMarker(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;)V

    .line 327
    return-void
.end method

.method public showAutoHomeInfo(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;)V
    .locals 1
    .param p1, "autoHomeInfoPlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mPlayBackMapFragment:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->handlerHomePoint(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;)V

    .line 332
    return-void
.end method

.method public showAutoRelayHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;)V
    .locals 1
    .param p1, "autoRelayHeartPlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->showRelayHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;)V

    .line 371
    return-void
.end method

.method public showAutoRockerState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;)V
    .locals 8
    .param p1, "autoRockerStatePlayback"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRockerKeyMessage()S

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerKeyMessage:I

    .line 337
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerKeyMessage:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isBatteryPress:Z

    .line 338
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerKeyMessage:I

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isLandPress:Z

    .line 339
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->rockerKeyMessage:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isReturnPress:Z

    .line 340
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mMode:I

    if-ne v0, v1, :cond_3

    .line 341
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    .line 342
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc0()S

    move-result v1

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc2()S

    move-result v2

    .line 343
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc1()S

    move-result v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc3()S

    move-result v4

    iget-boolean v5, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isBatteryPress:Z

    iget-boolean v6, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isLandPress:Z

    iget-boolean v7, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isReturnPress:Z

    .line 341
    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->setCurrentRemote(IIIIZZZ)V

    .line 365
    :goto_2
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mMode:I

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showRcMode(I)V

    .line 366
    return-void

    :cond_1
    move v0, v2

    .line 337
    goto :goto_0

    :cond_2
    move v0, v2

    .line 338
    goto :goto_1

    .line 346
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 347
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    .line 348
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc0()S

    move-result v1

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc1()S

    move-result v2

    .line 349
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc2()S

    move-result v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc3()S

    move-result v4

    iget-boolean v5, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isBatteryPress:Z

    iget-boolean v6, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isLandPress:Z

    iget-boolean v7, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isReturnPress:Z

    .line 347
    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->setCurrentRemote(IIIIZZZ)V

    goto :goto_2

    .line 352
    :cond_4
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 353
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    .line 354
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc3()S

    move-result v1

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc1()S

    move-result v2

    .line 355
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc2()S

    move-result v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc0()S

    move-result v4

    iget-boolean v5, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isBatteryPress:Z

    iget-boolean v6, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isLandPress:Z

    iget-boolean v7, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isReturnPress:Z

    .line 353
    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->setCurrentRemote(IIIIZZZ)V

    goto :goto_2

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    .line 360
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc3()S

    move-result v1

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc1()S

    move-result v2

    .line 361
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc2()S

    move-result v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRc0()S

    move-result v4

    iget-boolean v5, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isBatteryPress:Z

    iget-boolean v6, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isLandPress:Z

    iget-boolean v7, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->isReturnPress:Z

    .line 359
    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->setCurrentRemote(IIIIZZZ)V

    goto :goto_2
.end method

.method public showDroneDisconnectState()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->onDisconnectDroneVal()V

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryTemDesValue:Landroid/widget/TextView;

    const-string v1, "0\u00b0C"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryElectricityDesValue:Landroid/widget/TextView;

    const-string v1, "0 A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageOneValue:Landroid/widget/TextView;

    const-string v1, "0 V"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageSencondValue:Landroid/widget/TextView;

    const-string v1, "0 V"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageThreeValue:Landroid/widget/TextView;

    const-string v1, "0 V"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method public showGetLowPowerOpt(Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;)V
    .locals 1
    .param p1, "ackGetLowPowerOpt"    # Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->getLowPowerValue()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->lowPowerValue:I

    .line 382
    return-void
.end method

.method public showGetRcMode(Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V
    .locals 1
    .param p1, "ackGetRcMode"    # Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;->getMode()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mMode:I

    .line 376
    iget v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->mMode:I

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->showRcMode(I)V

    .line 377
    return-void
.end method

.method public showRemoteControlDisconnectState()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8FlightlogTopBarController:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->defaultVal()V

    .line 269
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryTemDesValue:Landroid/widget/TextView;

    const-string v1, "0\u00b0C"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryElectricityDesValue:Landroid/widget/TextView;

    const-string v1, "0 A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageOneValue:Landroid/widget/TextView;

    const-string v1, "0 V"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageSencondValue:Landroid/widget/TextView;

    const-string v1, "0 V"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8BatteryVoltageThreeValue:Landroid/widget/TextView;

    const-string v1, "0 V"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->x8RemoteSimulator:Lcom/fimi/app/x8s/widget/RemotesimulatorView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->showDefaultView()V

    .line 275
    return-void
.end method

.method public update(I)V
    .locals 0
    .param p1, "currentType"    # I

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->changeMapType(I)V

    .line 250
    return-void
.end method
