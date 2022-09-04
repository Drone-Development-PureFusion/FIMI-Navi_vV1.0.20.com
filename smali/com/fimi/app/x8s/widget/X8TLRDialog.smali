.class public Lcom/fimi/app/x8s/widget/X8TLRDialog;
.super Lcom/fimi/app/x8s/widget/X8sBaseDialog;
.source "X8TLRDialog.java"


# instance fields
.field private imgFlag:Landroid/widget/ImageView;

.field private isNeedChange:Z

.field private prex:Ljava/lang/String;

.field res:I

.field temp:F

.field tmpRes:I

.field private tvMessage:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isNeedChange"    # Z
    .param p5, "drawId"    # I
    .param p6, "listener"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 34
    sget v3, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v3}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 76
    const/4 v3, 0x0

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->temp:F

    .line 77
    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->res:I

    .line 78
    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    .line 35
    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_return_dialog_custom:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->setContentView(I)V

    .line 36
    iput-boolean p4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->isNeedChange:Z

    .line 37
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->prex:Ljava/lang/String;

    .line 38
    sget v3, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tvMessage:Landroid/widget/TextView;

    .line 39
    sget v3, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tvTitle:Landroid/widget/TextView;

    .line 41
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_return_flag:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->imgFlag:Landroid/widget/ImageView;

    .line 43
    sget v3, Lcom/fimi/app/x8s/R$id;->btn_left:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    .local v1, "tvLeft":Landroid/widget/TextView;
    sget v3, Lcom/fimi/app/x8s/R$id;->btn_right:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "tvRight":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v3, Lcom/fimi/app/x8s/widget/X8TLRDialog$1;

    invoke-direct {v3, p0, p6}, Lcom/fimi/app/x8s/widget/X8TLRDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8TLRDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v3, Lcom/fimi/app/x8s/widget/X8TLRDialog$2;

    invoke-direct {v3, p0, p6}, Lcom/fimi/app/x8s/widget/X8TLRDialog$2;-><init>(Lcom/fimi/app/x8s/widget/X8TLRDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    if-eqz p4, :cond_1

    .line 65
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v0

    .line 66
    .local v0, "state":Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 74
    .end local v0    # "state":Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->imgFlag:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p5}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 9
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    const/4 v8, 0x1

    .line 81
    iget-boolean v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->isNeedChange:Z

    if-nez v4, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHeight()F

    move-result v1

    .line 85
    .local v1, "h":F
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHomeDistance()F

    move-result v0

    .line 87
    .local v0, "d":F
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_9

    .line 89
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOpenAccurateLanding()Z

    move-result v2

    .line 90
    .local v2, "isOpenAccurateLanding":Z
    cmpg-float v4, v1, v5

    if-gtz v4, :cond_5

    .line 91
    iput v5, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->temp:F

    .line 92
    if-eqz v2, :cond_3

    .line 93
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_5:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    .line 143
    .end local v2    # "isOpenAccurateLanding":Z
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->prex:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->temp:F

    invoke-static {v7, v8, v8}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->res:I

    if-eq v4, v5, :cond_0

    .line 147
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->res:I

    .line 148
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->imgFlag:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->res:I

    invoke-static {v5, v6}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 96
    .end local v3    # "s":Ljava/lang/String;
    .restart local v2    # "isOpenAccurateLanding":Z
    :cond_2
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_ft_5:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto :goto_1

    .line 99
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_1:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto :goto_1

    .line 102
    :cond_4
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_ft_1:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto :goto_1

    .line 106
    :cond_5
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->temp:F

    .line 107
    if-eqz v2, :cond_7

    .line 108
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_6:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto :goto_1

    .line 111
    :cond_6
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_ft_6:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto :goto_1

    .line 114
    :cond_7
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 115
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_2:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto :goto_1

    .line 117
    :cond_8
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_ft_2:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto :goto_1

    .line 122
    .end local v2    # "isOpenAccurateLanding":Z
    :cond_9
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_c

    .line 123
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isNewHand()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 124
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, 0x41f00000    # 30.0f

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->temp:F

    .line 129
    :goto_2
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 130
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_3:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto/16 :goto_1

    .line 126
    :cond_a
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->temp:F

    goto :goto_2

    .line 132
    :cond_b
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_ft_3:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto/16 :goto_1

    .line 135
    :cond_c
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->temp:F

    .line 136
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 137
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_4:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto/16 :goto_1

    .line 139
    :cond_d
    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_return_ft_4:I

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8TLRDialog;->tmpRes:I

    goto/16 :goto_1
.end method
