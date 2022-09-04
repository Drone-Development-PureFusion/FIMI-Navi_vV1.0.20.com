.class public Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8CameraOtherSettingController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private capacity_tv:Landroid/widget/TextView;

.field private clickAble:Z

.field private context:Landroid/content/Context;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private formatView:Landroid/widget/RelativeLayout;

.field private layoutReturn:Landroid/widget/RelativeLayout;

.field private linesSelectIdx:I

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

.field private resetView:Landroid/widget/RelativeLayout;

.field sdcardFree:D

.field private sdcard_free_tv:Landroid/widget/TextView;

.field private tvCurrLinesSetting:Landroid/widget/TextView;

.field private tvLinesSettingCenterPoint:Landroid/widget/TextView;

.field private tvLinesSettingDiagonalAndNine:Landroid/widget/TextView;

.field private tvLinesSettingNineLines:Landroid/widget/TextView;

.field private tvLinesSettingNone:Landroid/widget/TextView;

.field private x8CameraOtherImgReturn:Landroid/widget/ImageView;

.field private x8LinesSettingDetailView:Lcom/fimi/kernel/percent/PercentLinearLayout;

.field private x8LinesSettingLayout:Landroid/widget/RelativeLayout;

.field private x8LinesSettingStub:Landroid/view/ViewStub;

.field private x8OtherSettingMainLayout:Landroid/widget/RelativeLayout;

.field private x8PieView:Lcom/fimi/app/x8s/widget/X8PieView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->clickAble:Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Lcom/fimi/x8sdk/controller/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    return-object v0
.end method

.method private getCurrLinesSettingStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    packed-switch v1, :pswitch_data_0

    .line 251
    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_grid_line_nothing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_center_point:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_grid_nine:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_grid_nine_and_diagonal:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setLinesSelect()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingNone:Landroid/widget/TextView;

    iget v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_fc_all_setting_blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingCenterPoint:Landroid/widget/TextView;

    iget v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_fc_all_setting_blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingNineLines:Landroid/widget/TextView;

    iget v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_fc_all_setting_blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingDiagonalAndNine:Landroid/widget/TextView;

    iget v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_fc_all_setting_blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    iget v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->onGridLineSelect(I)V

    .line 224
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->setGridLine(I)V

    .line 226
    :cond_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3
.end method

.method private upCapacityDes()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 283
    iget-wide v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->sdcardFree:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v0, ""

    .line 285
    .local v0, "free_sum":Ljava/lang/String;
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v1, v2, :cond_2

    .line 286
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_sdcard_photo_free:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->sdcard_free_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :cond_2
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v1, v2, :cond_1

    .line 288
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_sdcard_record_free:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private varargs updateViewEnable(Z[Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "parent"    # [Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 330
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lez v4, :cond_2

    .line 331
    array-length v6, p2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, p2, v4

    .line 332
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 333
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 334
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 336
    .local v3, "subView":Landroid/view/View;
    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 337
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "subView":Landroid/view/View;
    aput-object v3, v7, v5

    invoke-direct {p0, p1, v7}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 334
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    .restart local v3    # "subView":Landroid/view/View;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 331
    .end local v3    # "subView":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "j":I
    .end local v2    # "len":I
    :cond_2
    return-void
.end method


# virtual methods
.method public closeUi()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->closeUi()V

    .line 111
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    .line 73
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_main_camera_otherSetting_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->handleView:Landroid/view/View;

    .line 74
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_pieView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8PieView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8PieView:Lcom/fimi/app/x8s/widget/X8PieView;

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$array;->x8_sdcard_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "pieArray":[Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8PieView:Lcom/fimi/app/x8s/widget/X8PieView;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v0}, Lcom/fimi/app/x8s/widget/X8PieView;->setData([I[Ljava/lang/String;)V

    .line 77
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_lines_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8LinesSettingLayout:Landroid/widget/RelativeLayout;

    .line 78
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_lines_setting_stub:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8LinesSettingStub:Landroid/view/ViewStub;

    .line 79
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_other_setting_main_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8OtherSettingMainLayout:Landroid/widget/RelativeLayout;

    .line 81
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_current_lines_setting:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvCurrLinesSetting:Landroid/widget/TextView;

    .line 82
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->getGridLine()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvCurrLinesSetting:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->getCurrLinesSettingStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8LinesSettingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_sdcard_format_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->formatView:Landroid/widget/RelativeLayout;

    .line 87
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_camera_reset_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->resetView:Landroid/widget/RelativeLayout;

    .line 88
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->formatView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->resetView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget v1, Lcom/fimi/app/x8s/R$id;->sdcard_free_tv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->sdcard_free_tv:Landroid/widget/TextView;

    .line 91
    sget v1, Lcom/fimi/app/x8s/R$id;->sdcard_capacity_tv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->capacity_tv:Landroid/widget/TextView;

    .line 92
    return-void

    .line 76
    :array_0
    .array-data 4
        0x2d
        0x41
        0x4e
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 116
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_lines_layout:I

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8LinesSettingDetailView:Lcom/fimi/kernel/percent/PercentLinearLayout;

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8LinesSettingStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_main_camera_otherSetting_layout_grid:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/percent/PercentLinearLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8LinesSettingDetailView:Lcom/fimi/kernel/percent/PercentLinearLayout;

    .line 121
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_top:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->layoutReturn:Landroid/widget/RelativeLayout;

    .line 122
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8CameraOtherImgReturn:Landroid/widget/ImageView;

    .line 123
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_none:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingNone:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_center_point:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingCenterPoint:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_nine_lines:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingNineLines:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_diagonal_and_nine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingDiagonalAndNine:Landroid/widget/TextView;

    .line 128
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8CameraOtherImgReturn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingNone:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingCenterPoint:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingNineLines:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvLinesSettingDiagonalAndNine:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8LinesSettingDetailView:Lcom/fimi/kernel/percent/PercentLinearLayout;

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/percent/PercentLinearLayout;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8OtherSettingMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->setLinesSelect()V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8LinesSettingDetailView:Lcom/fimi/kernel/percent/PercentLinearLayout;

    invoke-virtual {v1, v4}, Lcom/fimi/kernel/percent/PercentLinearLayout;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->x8OtherSettingMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->tvCurrLinesSetting:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->getCurrLinesSettingStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    sget-object v2, Lcom/fimi/x8sdk/common/Constants;->X8_GLINE_LINE_OPTION:Ljava/lang/String;

    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 144
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->setGridLine(I)V

    goto :goto_0

    .line 146
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_none:I

    if-ne v0, v1, :cond_4

    .line 147
    iput v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    .line 148
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->setLinesSelect()V

    goto :goto_0

    .line 150
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_center_point:I

    if-ne v0, v1, :cond_5

    .line 151
    const/4 v1, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    .line 152
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->setLinesSelect()V

    goto :goto_0

    .line 154
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_nine_lines:I

    if-ne v0, v1, :cond_6

    .line 155
    const/4 v1, 0x2

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    .line 156
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->setLinesSelect()V

    goto :goto_0

    .line 158
    :cond_6
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_lines_layout_diagonal_and_nine:I

    if-ne v0, v1, :cond_7

    .line 159
    const/4 v1, 0x3

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->linesSelectIdx:I

    .line 160
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->setLinesSelect()V

    goto :goto_0

    .line 162
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_sdcard_format_layout:I

    if-ne v0, v1, :cond_8

    .line 163
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v1, v2, :cond_1

    .line 165
    new-instance v1, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_sdcard_format_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_sdcard_format_tip:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto/16 :goto_0

    .line 186
    :cond_8
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_camera_reset_layout:I

    if-ne v0, v1, :cond_1

    .line 187
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v1, v2, :cond_1

    .line 189
    new-instance v1, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_reset_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->context:Landroid/content/Context;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_reset_tip:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 209
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto/16 :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 299
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->clickAble:Z

    if-eq v1, p1, :cond_0

    .line 300
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->clickAble:Z

    .line 301
    :cond_0
    if-eqz p1, :cond_5

    .line 302
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->isDelayedPhotography()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    :cond_1
    new-array v1, v5, [Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->resetView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->formatView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 321
    :goto_0
    return-void

    .line 305
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getAutoCameraStateADV()Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    move-result-object v0

    .line 306
    .local v0, "stateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isCardInfo()Z

    move-result v1

    if-nez v1, :cond_3

    .line 307
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isNoTFCard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    new-array v1, v4, [Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->formatView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v3

    invoke-direct {p0, v3, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 314
    :cond_3
    :goto_1
    new-array v1, v4, [Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->resetView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v3

    invoke-direct {p0, v4, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 310
    :cond_4
    new-array v1, v4, [Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->formatView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v3

    invoke-direct {p0, v4, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 317
    .end local v0    # "stateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    :cond_5
    new-array v1, v5, [Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->resetView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->formatView:Landroid/widget/RelativeLayout;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 318
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->capacity_tv:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->sdcardFree:D

    goto :goto_0
.end method

.method public openUi()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 106
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 60
    return-void
.end method

.method public setCurModle()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->upCapacityDes()V

    .line 64
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .line 256
    return-void
.end method

.method public upSdcardStatus(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 9
    .param p1, "stateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    const/4 v8, 0x1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 260
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getInfo()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 261
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->capacity_tv:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isCardInfo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getFreeSpace()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5, v8}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "freeSpace":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v2, :cond_3

    .line 267
    :cond_2
    const-string v2, "0"

    .line 269
    :cond_3
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/fimi/kernel/utils/NumberUtil;->convertToDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 270
    .local v0, "freeCapacity":D
    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->sdcardFree:D

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_0

    .line 271
    iput-wide v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->sdcardFree:D

    .line 272
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getTotalSpace()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5, v8}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "totalSpace":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->capacity_tv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "G/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "G"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->upCapacityDes()V

    goto :goto_0
.end method
