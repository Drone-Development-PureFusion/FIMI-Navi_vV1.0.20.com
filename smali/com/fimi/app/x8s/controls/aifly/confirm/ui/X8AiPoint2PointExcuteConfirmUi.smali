.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;
.super Ljava/lang/Object;
.source "X8AiPoint2PointExcuteConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private DEFAULE_SPEED:F

.field private MAX:F

.field private MAX_PROGRESS:I

.field private MIN:F

.field private alt:F

.field private btnGo:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private distance:I

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private height:F

.field private imgBack:Landroid/widget/ImageView;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mapPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

.field private sbSeekBar:Landroid/widget/SeekBar;

.field private tvDistance:Landroid/widget/TextView;

.field private tvSpeed:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private vMinus:Landroid/view/View;

.field private vPlus:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MIN:F

    .line 33
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MAX:F

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->DEFAULE_SPEED:F

    .line 35
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MAX:F

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MIN:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MAX_PROGRESS:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->distance:I

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_point_to_point__excute_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->contentView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->initView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->initAction()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    return-object v0
.end method

.method private setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 115
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 116
    .local v0, "progress":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 117
    return-void
.end method


# virtual methods
.method public initAction()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->vMinus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->vPlus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 56
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->imgBack:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_distance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->vMinus:Landroid/view/View;

    .line 62
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    .line 63
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->vPlus:Landroid/view/View;

    .line 64
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MAX_PROGRESS:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 82
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v0, v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MAX_PROGRESS:I

    if-eq v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 90
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v0, v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onBackClick()V

    goto :goto_0

    .line 92
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->onGoClick()V

    goto :goto_0
.end method

.method public onGoClick()V
    .locals 9

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 204
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->mapPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v1, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    float-to-int v1, v1

    mul-int/lit8 v6, v1, 0xa

    .line 205
    .local v6, "altitude":I
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MIN:F

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float v0, v1, v2

    .line 206
    .local v0, "speed":F
    mul-float v1, v0, v3

    float-to-int v7, v1

    .line 207
    .local v7, "s":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->mapPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->mapPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-wide v4, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    new-instance v8, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi$1;

    invoke-direct {v8, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;)V

    invoke-virtual/range {v1 .. v8}, Lcom/fimi/x8sdk/controller/FcManager;->setAiFollowPoint2Point(DDIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 216
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 17
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MIN:F

    move/from16 v0, p2

    int-to-float v15, v0

    const/high16 v16, 0x41200000    # 10.0f

    div-float v15, v15, v16

    add-float v8, v14, v15

    .line 159
    .local v8, "speed":F
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static {v8, v14, v15}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "s":Ljava/lang/String;
    const/4 v10, 0x0

    .line 162
    .local v10, "temp":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->height:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->alt:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->height:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->alt:F

    sub-float v10, v14, v15

    .line 164
    const/4 v3, 0x1

    .line 169
    .local v3, "isUp":Z
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->distance:I

    int-to-float v14, v14

    div-float v14, v10, v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v2, v14

    .line 170
    .local v2, "degrees":F
    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 171
    .local v4, "radians":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v7, v14, v8

    .line 172
    .local v7, "sh":F
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v9, v14, v8

    .line 173
    .local v9, "sv":F
    if-eqz v3, :cond_3

    .line 174
    const/high16 v14, 0x40800000    # 4.0f

    cmpl-float v14, v9, v14

    if-lez v14, :cond_0

    .line 175
    const/high16 v9, 0x40800000    # 4.0f

    .line 183
    :cond_0
    :goto_1
    div-float v14, v10, v9

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 184
    .local v13, "tv":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->distance:I

    int-to-float v14, v14

    div-float/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 185
    .local v11, "th":I
    move v12, v11

    .line 186
    .local v12, "time":I
    if-le v13, v11, :cond_1

    .line 187
    move v12, v13

    .line 189
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "S"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-void

    .line 166
    .end local v2    # "degrees":F
    .end local v3    # "isUp":Z
    .end local v4    # "radians":D
    .end local v7    # "sh":F
    .end local v9    # "sv":F
    .end local v11    # "th":I
    .end local v12    # "time":I
    .end local v13    # "tv":I
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->alt:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->height:F

    sub-float v10, v14, v15

    .line 167
    const/4 v3, 0x0

    .restart local v3    # "isUp":Z
    goto :goto_0

    .line 178
    .restart local v2    # "degrees":F
    .restart local v4    # "radians":D
    .restart local v7    # "sh":F
    .restart local v9    # "sv":F
    :cond_3
    const/high16 v14, 0x40400000    # 3.0f

    cmpl-float v14, v9, v14

    if-lez v14, :cond_0

    .line 179
    const/high16 v9, 0x40400000    # 3.0f

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 196
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 201
    return-void
.end method

.method public setDistance(I)V
    .locals 4
    .param p1, "distance"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->distance:I

    .line 110
    int-to-float v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 231
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 232
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 45
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 46
    return-void
.end method

.method public setMapPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 1
    .param p1, "mapPoint"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->mapPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 101
    iget v0, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->distance:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->setDistance(I)V

    .line 102
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->alt:F

    .line 103
    iget v0, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->height:F

    .line 104
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->DEFAULE_SPEED:F

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->setSpeed(F)V

    .line 105
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->setViewValue()V

    .line 106
    return-void
.end method

.method public setViewValue()V
    .locals 15

    .prologue
    .line 120
    iget v12, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->MIN:F

    iget-object v13, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v13, v14

    add-float v6, v12, v13

    .line 121
    .local v6, "speed":F
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {v6, v12, v13}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "s":Ljava/lang/String;
    const/4 v8, 0x0

    .line 125
    .local v8, "temp":F
    iget v12, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->height:F

    iget v13, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->alt:F

    sub-float/2addr v12, v13

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_2

    .line 126
    iget v12, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->height:F

    iget v13, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->alt:F

    sub-float v8, v12, v13

    .line 127
    const/4 v1, 0x1

    .line 132
    .local v1, "isUp":Z
    :goto_0
    iget v12, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->distance:I

    int-to-float v12, v12

    div-float v12, v8, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v0, v12

    .line 133
    .local v0, "degrees":F
    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 134
    .local v2, "radians":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v5, v12, v6

    .line 135
    .local v5, "sh":F
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v7, v12, v6

    .line 136
    .local v7, "sv":F
    if-eqz v1, :cond_3

    .line 137
    const/high16 v12, 0x40800000    # 4.0f

    cmpl-float v12, v7, v12

    if-lez v12, :cond_0

    .line 138
    const/high16 v7, 0x40800000    # 4.0f

    .line 146
    :cond_0
    :goto_1
    div-float v12, v8, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 147
    .local v11, "tv":I
    iget v12, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->distance:I

    int-to-float v12, v12

    div-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 148
    .local v9, "th":I
    move v10, v9

    .line 149
    .local v10, "time":I
    if-le v11, v9, :cond_1

    .line 150
    move v10, v11

    .line 152
    :cond_1
    iget-object v12, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v12, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "S"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void

    .line 129
    .end local v0    # "degrees":F
    .end local v1    # "isUp":Z
    .end local v2    # "radians":D
    .end local v5    # "sh":F
    .end local v7    # "sv":F
    .end local v9    # "th":I
    .end local v10    # "time":I
    .end local v11    # "tv":I
    :cond_2
    iget v12, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->alt:F

    iget v13, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->height:F

    sub-float v8, v12, v13

    .line 130
    const/4 v1, 0x0

    .restart local v1    # "isUp":Z
    goto :goto_0

    .line 141
    .restart local v0    # "degrees":F
    .restart local v2    # "radians":D
    .restart local v5    # "sh":F
    .restart local v7    # "sv":F
    :cond_3
    const/high16 v12, 0x40400000    # 3.0f

    cmpl-float v12, v7, v12

    if-lez v12, :cond_0

    .line 142
    const/high16 v7, 0x40400000    # 3.0f

    goto :goto_1
.end method

.method public startExcute()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiFollowPoint2PointExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 228
    return-void
.end method
