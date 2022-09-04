.class public Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8MainBottomParameterController.java"


# instance fields
.field public final VALUE_VIDEO_RESOLUTION_1080P:Ljava/lang/String;

.field public final VALUE_VIDEO_RESOLUTION_2K:Ljava/lang/String;

.field public final VALUE_VIDEO_RESOLUTION_4K:Ljava/lang/String;

.field public final VALUE_VIDEO_RESOLUTION_720P:Ljava/lang/String;

.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field cameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

.field changeShowStatus:I

.field private context:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mImgColor:Landroid/widget/ImageView;

.field private mIvCloud:Landroid/widget/ImageView;

.field private mIvEv:Landroid/widget/ImageView;

.field private mIvISO:Landroid/widget/ImageView;

.field private mIvRecord:Landroid/widget/ImageView;

.field private mIvSDK:Landroid/widget/ImageView;

.field private mIvShutter:Landroid/widget/ImageView;

.field private mTvCloud:Landroid/widget/TextView;

.field private mTvColor:Landroid/widget/TextView;

.field private mTvEv:Landroid/widget/TextView;

.field private mTvISO:Landroid/widget/TextView;

.field private mTvRecord:Landroid/widget/TextView;

.field private mTvSDK:Landroid/widget/TextView;

.field private mTvShutter:Landroid/widget/TextView;

.field private paramsValue:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

.field root_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field tfCardCapt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->changeShowStatus:I

    .line 69
    new-instance v0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController$1;-><init>(Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mHandler:Landroid/os/Handler;

    .line 376
    const-string v0, "3840x2160"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->VALUE_VIDEO_RESOLUTION_4K:Ljava/lang/String;

    .line 377
    const-string v0, "2560x1440"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->VALUE_VIDEO_RESOLUTION_2K:Ljava/lang/String;

    .line 378
    const-string v0, "1920x1080"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->VALUE_VIDEO_RESOLUTION_1080P:Ljava/lang/String;

    .line 379
    const-string v0, "1280x720"

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->VALUE_VIDEO_RESOLUTION_720P:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->paramsValue:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    .line 161
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->showTFCardStatus(I)V

    return-void
.end method

.method private replaceEv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ev"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "EV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "EV"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 340
    :cond_0
    return-object p1
.end method

.method private setColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string v0, "General"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_colours_general:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mImgColor:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_bottom_camera_color:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 286
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvColor:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v0, "Vivid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_colours_vivid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 303
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mImgColor:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_bottom_camera_color_not_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvColor:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_2
    const-string v0, "art"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_colours_art:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 292
    :cond_3
    const-string v0, "black/white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_colours_black_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 294
    :cond_4
    const-string v0, "film"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_colours_film:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 296
    :cond_5
    const-string v0, "sepia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_colours_sepia:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 298
    :cond_6
    const-string v0, "F-LOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_colours_flog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 300
    :cond_7
    const-string v0, "punk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_colours_punk:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method private setTFCardStatus(IILjava/lang/String;)V
    .locals 1
    .param p1, "imgRes"    # I
    .param p2, "textColor"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvSDK:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvSDK:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvSDK:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method private showTFCardStatus(I)V
    .locals 5
    .param p1, "changeShowStatus"    # I

    .prologue
    .line 85
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->cameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 86
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/CameraState;->isConnect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    .local v0, "imgRes":I
    const/4 v2, 0x0

    .line 92
    .local v2, "textColor":I
    const-string v1, ""

    .line 93
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->cameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getInfo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 143
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_tf_card_nomal:I

    .line 144
    const/4 v2, -0x1

    .line 145
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 148
    :goto_1
    invoke-direct {p0, v0, v2, v1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->setTFCardStatus(IILjava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_0
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_tf_card_no:I

    .line 96
    const/high16 v2, -0x10000

    .line 97
    sget v3, Lcom/fimi/app/x8s/R$string;->x8_tf_no_exit:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    goto :goto_1

    .line 100
    :pswitch_1
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_tf_card_exception:I

    .line 101
    const/high16 v2, -0x10000

    .line 102
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    :cond_2
    sget v3, Lcom/fimi/app/x8s/R$string;->x8_tf_exception:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 108
    goto :goto_1

    .line 110
    :pswitch_2
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_tf_card_exception:I

    .line 111
    const/high16 v2, -0x10000

    .line 112
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    :cond_4
    sget v3, Lcom/fimi/app/x8s/R$string;->x8_tf_exception:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 115
    :cond_5
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 117
    goto :goto_1

    .line 119
    :pswitch_3
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_tf_fulled:I

    .line 120
    const/high16 v2, -0x10000

    .line 121
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 122
    goto :goto_1

    .line 124
    :pswitch_4
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_tf_card_low_fulling:I

    .line 125
    const/high16 v2, -0x10000

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 127
    goto :goto_1

    .line 129
    :pswitch_5
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_tf_card_low_fulling:I

    .line 130
    const/4 v2, -0x1

    .line 131
    if-nez p1, :cond_6

    .line 132
    sget v3, Lcom/fimi/app/x8s/R$string;->x8_tf_low:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 136
    goto :goto_1

    .line 138
    :pswitch_6
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_tf_card_nomal:I

    .line 139
    const/4 v2, -0x1

    .line 140
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 141
    goto :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateTFCardStorage(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 7
    .param p1, "cameraStateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 238
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getFreeSpace()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3, v6}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "freespace":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getTotalSpace()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3, v6}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "totalSpace":Ljava/lang/String;
    const-string v2, "0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->tfCardCapt:Ljava/lang/String;

    goto :goto_0
.end method

.method private varargs updateViewEnable(Z[Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "parent"    # [Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 424
    if-eqz p2, :cond_4

    array-length v4, p2

    if-lez v4, :cond_4

    .line 425
    array-length v7, p2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v0, p2, v5

    .line 426
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 427
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 428
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 429
    .local v3, "subView":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 430
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "subView":Landroid/view/View;
    aput-object v3, v4, v6

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 427
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    .restart local v3    # "subView":Landroid/view/View;
    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 435
    if-eqz p1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_2
    const v4, 0x3f666666    # 0.9f

    goto :goto_3

    .line 425
    .end local v3    # "subView":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 439
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "j":I
    .end local v2    # "len":I
    :cond_4
    return-void
.end method


# virtual methods
.method public defaultVal()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvCloud:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_cloud_angle_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvEv:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_ev_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvISO:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_iso_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvShutter:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_shutter_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvSDK:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_sdk_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mImgColor:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_bottom_camera_color_unconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvRecord:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvCloud:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvEv:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvISO:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvShutter:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvColor:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvSDK:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvSDK:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvRecord:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    return-void
.end method

.method public getEvText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvEv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISOText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvISO:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public initCameraParam(Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;)V
    .locals 6
    .param p1, "paramsJson"    # Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;

    .prologue
    .line 248
    if-eqz p1, :cond_7

    .line 249
    invoke-virtual {p1}, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;->getParam()Ljava/util/List;

    move-result-object v2

    .line 250
    .local v2, "plist":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/jsonResult/CurParamsJson;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 251
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    .line 252
    .local v1, "curParams":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 253
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateEvTextValue(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getShutter_time()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 257
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getShutter_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateShutter(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getIso()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 261
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateISOTextValue(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getDigital_effect()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 265
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getDigital_effect()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "color":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->setColor(Ljava/lang/String;)V

    .line 269
    .end local v0    # "color":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_resolution()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 270
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->paramsValue:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_resolution()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setVideo_resolution(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_resolution()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/modulestate/StateManager;->setIs4KResolution(Ljava/lang/String;)V

    .line 273
    :cond_5
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_size()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->paramsValue:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_size()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setPhoto_size(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    .end local v1    # "curParams":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    :cond_6
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateCameraModelValue()V

    .line 280
    .end local v2    # "plist":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/jsonResult/CurParamsJson;>;"
    :cond_7
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->context:Landroid/content/Context;

    .line 204
    sget v0, Lcom/fimi/app/x8s/R$id;->main_bottom_parameter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->handleView:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->handleView:Landroid/view/View;

    check-cast v0, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->root_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 206
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_bottom_cloud:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvCloud:Landroid/widget/ImageView;

    .line 207
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_cloud:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvCloud:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_bottom_ev:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvEv:Landroid/widget/ImageView;

    .line 209
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_ev:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvEv:Landroid/widget/TextView;

    .line 210
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_bottom_iso:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvISO:Landroid/widget/ImageView;

    .line 211
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_iso:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvISO:Landroid/widget/TextView;

    .line 212
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_bottom_shutter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvShutter:Landroid/widget/ImageView;

    .line 213
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_shutter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvShutter:Landroid/widget/TextView;

    .line 214
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_bottom_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mImgColor:Landroid/widget/ImageView;

    .line 215
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvColor:Landroid/widget/TextView;

    .line 216
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_bottom_sdk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvSDK:Landroid/widget/ImageView;

    .line 217
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_sdk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvSDK:Landroid/widget/TextView;

    .line 218
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_bottom_record:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvRecord:Landroid/widget/ImageView;

    .line 219
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_record:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvRecord:Landroid/widget/TextView;

    .line 220
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 414
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->root_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 415
    return-void
.end method

.method public openUi()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 451
    :cond_0
    return-void
.end method

.method public openUiByMapChange()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getTaskManger()Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->isTaskCanChangeBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 457
    :cond_0
    return-void
.end method

.method public showCameraStatus(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 4
    .param p1, "cameraStateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    const/4 v1, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isCardInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateTFCardStorage(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    .line 231
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 229
    :cond_2
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->cameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    goto :goto_1
.end method

.method public showSportState(Lcom/fimi/x8sdk/modulestate/GimbalState;)V
    .locals 8
    .param p1, "state"    # Lcom/fimi/x8sdk/modulestate/GimbalState;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/fimi/x8sdk/modulestate/GimbalState;->getPitchAngle()I

    move-result v3

    .line 171
    .local v3, "pitchAngle":I
    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v0, v4, v6

    .line 173
    .local v0, "angle":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u00b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "angleStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvCloud:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvCloud:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_main_cloud_angle:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 176
    return-void
.end method

.method public updateCameraModelValue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 382
    const-string v0, ""

    .line 383
    .local v0, "modelValue":Ljava/lang/String;
    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v3, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v2, v3, :cond_7

    .line 384
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_resolution()Ljava/lang/String;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 386
    :cond_2
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "values":[Ljava/lang/String;
    aget-object v2, v1, v5

    const-string v3, "P"

    const-string v4, "FPS"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 388
    aget-object v2, v1, v6

    const-string v3, "3840x2160"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4K/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvRecord:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_bottom_record_btn_select:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 406
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvRecord:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 407
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvRecord:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    :cond_4
    aget-object v2, v1, v6

    const-string v3, "2560x1440"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2.5K/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 392
    :cond_5
    aget-object v2, v1, v6

    const-string v3, "1920x1080"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1080P/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 394
    :cond_6
    aget-object v2, v1, v6

    const-string v3, "1280x720"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "720P/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 400
    .end local v1    # "values":[Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_size()Ljava/lang/String;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 403
    .restart local v1    # "values":[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v1, v2

    const-string v3, "\\u0029"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v6

    .line 404
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvRecord:Landroid/widget/ImageView;

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_bottom_photo_btn_select:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method public updateColoreTextValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->setColor(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public updateEvTextValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "ev"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvEv:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->replaceEv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->replaceEv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 329
    .local v0, "evValue":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvEv:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_main_ev_connect:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvEv:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_main_ev_connect_not_default:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateISOTextValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 344
    if-nez p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvISO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvISO:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_iso_connect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvISO:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_iso_connect_not_defualt:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateShutter(Ljava/lang/String;)V
    .locals 3
    .param p1, "shutter"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvShutter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvShutter:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_shutter_connect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mTvShutter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->mIvShutter:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_main_shutter_connect_not_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
