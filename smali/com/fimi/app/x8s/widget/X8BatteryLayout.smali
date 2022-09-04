.class public Lcom/fimi/app/x8s/widget/X8BatteryLayout;
.super Landroid/widget/RelativeLayout;
.source "X8BatteryLayout.java"


# instance fields
.field private batteryCoreView:Lcom/fimi/app/x8s/widget/X8BatteryView;

.field private batteryName:Ljava/lang/String;

.field private defaultValue:Ljava/lang/String;

.field private tvBatteryCoreState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_view_battery_layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "myView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->addView(Landroid/view/View;)V

    .line 33
    sget-object v3, Lcom/fimi/app/x8s/R$styleable;->batteryLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 34
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    sget v3, Lcom/fimi/app/x8s/R$styleable;->batteryLayout_coreName:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->batteryName:Ljava/lang/String;

    .line 35
    sget v3, Lcom/fimi/app/x8s/R$styleable;->batteryLayout_defaultValue:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->defaultValue:Ljava/lang/String;

    .line 36
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    sget v3, Lcom/fimi/app/x8s/R$id;->img_battery_core_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/widget/X8BatteryView;

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->batteryCoreView:Lcom/fimi/app/x8s/widget/X8BatteryView;

    .line 39
    sget v3, Lcom/fimi/app/x8s/R$id;->img_battery_core_state:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->tvBatteryCoreState:Landroid/widget/TextView;

    .line 41
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->tvBatteryCoreState:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->batteryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->defaultValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method


# virtual methods
.method public setData(DDDI)V
    .locals 17
    .param p1, "curVoltage"    # D
    .param p3, "otherVoltage1"    # D
    .param p5, "otherVoltage2"    # D
    .param p7, "disChargeCnt"    # I

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 50
    .local v3, "state":I
    sub-double v4, p1, p3

    .line 51
    .local v4, "press1":D
    sub-double v6, p1, p5

    .line 52
    .local v6, "press2":D
    sub-double v8, p3, p5

    .line 53
    .local v8, "press3":D
    const-wide v12, 0x3fc999999999999aL    # 0.2

    cmpl-double v12, v4, v12

    if-gtz v12, :cond_0

    const-wide v12, -0x4036666666666666L    # -0.2

    cmpg-double v12, v4, v12

    if-ltz v12, :cond_0

    const-wide v12, 0x3fc999999999999aL    # 0.2

    cmpl-double v12, v6, v12

    if-gtz v12, :cond_0

    const-wide v12, -0x4036666666666666L    # -0.2

    cmpg-double v12, v6, v12

    if-ltz v12, :cond_0

    const-wide v12, 0x3fc999999999999aL    # 0.2

    cmpl-double v12, v8, v12

    if-gtz v12, :cond_0

    const-wide v12, -0x4036666666666666L    # -0.2

    cmpg-double v12, v8, v12

    if-gez v12, :cond_1

    .line 54
    :cond_0
    const/4 v3, 0x1

    .line 57
    :cond_1
    const-wide v12, 0x400999999999999aL    # 3.2

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_2

    .line 58
    const/4 v3, 0x3

    .line 62
    :cond_2
    const-wide v12, 0x4006666666666666L    # 2.8

    cmpg-double v12, v12, p1

    if-gtz v12, :cond_3

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpg-double v12, p1, v12

    if-gez v12, :cond_3

    const/4 v12, 0x5

    move/from16 v0, p7

    if-ge v0, v12, :cond_5

    :cond_3
    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    cmpg-double v12, v12, p1

    if-gtz v12, :cond_4

    const-wide v12, 0x4006666666666666L    # 2.8

    cmpg-double v12, p1, v12

    if-gez v12, :cond_4

    const/4 v12, 0x3

    move/from16 v0, p7

    if-ge v0, v12, :cond_5

    :cond_4
    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    cmpg-double v12, p1, v12

    if-gez v12, :cond_6

    const/4 v12, 0x1

    move/from16 v0, p7

    if-lt v0, v12, :cond_6

    .line 65
    :cond_5
    const/4 v3, 0x4

    .line 69
    :cond_6
    const-wide v12, 0x3fd999999999999aL    # 0.4

    cmpl-double v12, v4, v12

    if-gtz v12, :cond_7

    const-wide v12, -0x4026666666666666L    # -0.4

    cmpg-double v12, v4, v12

    if-ltz v12, :cond_7

    const-wide v12, 0x3fd999999999999aL    # 0.4

    cmpl-double v12, v6, v12

    if-gtz v12, :cond_7

    const-wide v12, -0x4026666666666666L    # -0.4

    cmpg-double v12, v6, v12

    if-ltz v12, :cond_7

    const-wide v12, 0x3fd999999999999aL    # 0.4

    cmpl-double v12, v8, v12

    if-gtz v12, :cond_7

    const-wide v12, -0x4026666666666666L    # -0.4

    cmpg-double v12, v8, v12

    if-gez v12, :cond_8

    .line 70
    :cond_7
    const/4 v3, 0x2

    .line 72
    :cond_8
    const-string v11, ""

    .line 73
    .local v11, "tip":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 100
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->batteryName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<br/>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "V"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->tvBatteryCoreState:Landroid/widget/TextView;

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->batteryCoreView:Lcom/fimi/app/x8s/widget/X8BatteryView;

    invoke-virtual {v12, v3}, Lcom/fimi/app/x8s/widget/X8BatteryView;->setState(I)V

    .line 106
    const-wide v12, 0x4011666666666666L    # 4.35

    cmpl-double v12, p1, v12

    if-lez v12, :cond_9

    .line 107
    const/16 v2, 0x64

    .line 131
    .local v2, "power":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->batteryCoreView:Lcom/fimi/app/x8s/widget/X8BatteryView;

    invoke-virtual {v12, v2}, Lcom/fimi/app/x8s/widget/X8BatteryView;->setPower(I)V

    .line 132
    return-void

    .line 75
    .end local v2    # "power":I
    .end local v10    # "text":Ljava/lang/String;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_format:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget v15, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_ABNORMAL_YELLOW:I

    .line 76
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_over_pressure:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 75
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 79
    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_format:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget v15, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_ABNORMAL_YELLOW:I

    .line 82
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_over_release:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 81
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 85
    goto/16 :goto_0

    .line 87
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_format:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget v15, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_SERIOUS_RED:I

    .line 88
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_over_release_serious:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 87
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 91
    goto/16 :goto_0

    .line 93
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_format:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget v15, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_SERIOUS_RED:I

    .line 94
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8BatteryLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/fimi/app/x8s/R$string;->x8_battery_setting_corrupted:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 93
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 108
    .restart local v10    # "text":Ljava/lang/String;
    :cond_9
    const-wide v12, 0x4010f0a3d70a3d71L    # 4.235

    cmpg-double v12, v12, p1

    if-gez v12, :cond_a

    const-wide v12, 0x4011666666666666L    # 4.35

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_a

    .line 109
    const/16 v2, 0x5a

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 110
    .end local v2    # "power":I
    :cond_a
    const-wide v12, 0x40107ae147ae147bL    # 4.12

    cmpg-double v12, v12, p1

    if-gez v12, :cond_b

    const-wide v12, 0x4010f0a3d70a3d71L    # 4.235

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_b

    .line 111
    const/16 v2, 0x50

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 112
    .end local v2    # "power":I
    :cond_b
    const-wide v12, 0x4010051eb851eb85L    # 4.005

    cmpg-double v12, v12, p1

    if-gez v12, :cond_c

    const-wide v12, 0x40107ae147ae147bL    # 4.12

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_c

    .line 113
    const/16 v2, 0x46

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 114
    .end local v2    # "power":I
    :cond_c
    const-wide v12, 0x400f1eb851eb851fL    # 3.89

    cmpg-double v12, v12, p1

    if-gez v12, :cond_d

    const-wide v12, 0x4010051eb851eb85L    # 4.005

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_d

    .line 115
    const/16 v2, 0x3c

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 116
    .end local v2    # "power":I
    :cond_d
    const-wide v12, 0x400e333333333333L    # 3.775

    cmpg-double v12, v12, p1

    if-gez v12, :cond_e

    const-wide v12, 0x400f1eb851eb851fL    # 3.89

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_e

    .line 117
    const/16 v2, 0x32

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 118
    .end local v2    # "power":I
    :cond_e
    const-wide v12, 0x400d47ae147ae148L    # 3.66

    cmpg-double v12, v12, p1

    if-gez v12, :cond_f

    const-wide v12, 0x400e333333333333L    # 3.775

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_f

    .line 119
    const/16 v2, 0x28

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 120
    .end local v2    # "power":I
    :cond_f
    const-wide v12, 0x400c5c28f5c28f5cL    # 3.545

    cmpg-double v12, v12, p1

    if-gez v12, :cond_10

    const-wide v12, 0x400d47ae147ae148L    # 3.66

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_10

    .line 121
    const/16 v2, 0x1e

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 122
    .end local v2    # "power":I
    :cond_10
    const-wide v12, 0x400b70a3d70a3d71L    # 3.43

    cmpg-double v12, v12, p1

    if-gez v12, :cond_11

    const-wide v12, 0x400c5c28f5c28f5cL    # 3.545

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_11

    .line 123
    const/16 v2, 0x14

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 124
    .end local v2    # "power":I
    :cond_11
    const-wide v12, 0x400a851eb851eb85L    # 3.315

    cmpg-double v12, v12, p1

    if-gez v12, :cond_12

    const-wide v12, 0x400b70a3d70a3d71L    # 3.43

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_12

    .line 125
    const/16 v2, 0xa

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 126
    .end local v2    # "power":I
    :cond_12
    const-wide v12, 0x400999999999999aL    # 3.2

    cmpg-double v12, v12, p1

    if-gez v12, :cond_13

    const-wide v12, 0x400a851eb851eb85L    # 3.315

    cmpg-double v12, p1, v12

    if-gtz v12, :cond_13

    .line 127
    const/4 v2, 0x5

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 129
    .end local v2    # "power":I
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "power":I
    goto/16 :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
