.class public Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SubParamsViewHolder.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

.field private awbController:Lcom/fimi/app/x8s/controls/camera/X8CameraAwbItemController;

.field private contentLayout:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field private contrast:Ljava/lang/String;

.field private final delaySend:I

.field private fromUser:Z

.field private handler:Landroid/os/Handler;

.field listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

.field private normalTv:Landroid/widget/TextView;

.field private optionValue:Landroid/widget/TextView;

.field private paramKey:Ljava/lang/String;

.field resetBtn:Landroid/widget/ImageView;

.field private saturation:Ljava/lang/String;

.field private seekBar:Landroid/widget/SeekBar;

.field private sharpTv:Landroid/widget/TextView;

.field private sharpView:Landroid/view/View;

.field private sharpViewStub:Landroid/view/ViewStub;

.field private styleView:Landroid/view/View;

.field private subParamItemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

.field private sub_options:Landroid/widget/TextView;

.field private viewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "itemListener"    # Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 430
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->delaySend:I

    .line 432
    new-instance v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;-><init>(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->handler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    .line 60
    sget v0, Lcom/fimi/app/x8s/R$id;->sub_option_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/fimi/app/x8s/R$id;->sub_option_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/fimi/app/x8s/R$id;->sub_content_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    .line 63
    sget v0, Lcom/fimi/app/x8s/R$id;->camera_style_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->viewStub:Landroid/view/ViewStub;

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->viewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->style_seekBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isCameraConnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    const-string v1, "64"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->x8_btn_reset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->resetBtn:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/fimi/app/x8s/R$id;->camera_sharp_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpViewStub:Landroid/view/ViewStub;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    return-object v0
.end method

.method private isMultilevelMenuView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "paramKey"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "isRemove":Z
    const-string v1, "capture_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "record_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "video_resolution"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 161
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMultilevelMenuViewTwo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "paramKey"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x1

    .line 168
    .local v0, "isRemove":Z
    const-string v1, "capture_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "record_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 171
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSubOptionsSetTextColor(Ljava/lang/String;)Z
    .locals 3
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_style:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 423
    .local v0, "isSetTextColor":Z
    :goto_0
    return v0

    .line 421
    .end local v0    # "isSetTextColor":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isSetTextColor":Z
    goto :goto_0
.end method

.method private paramKey2Title(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "paramKey"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_timelapse_capture_0:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_photo_signal_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "string":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 180
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_timelapse_capture_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_photo_delay_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_timelapse_capture_8:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_photo_panorama_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "string":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_timelapse_record_0:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_record_normal:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0    # "string":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_timelapse_record_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_record_cut_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v0    # "string":Ljava/lang/String;
    :cond_4
    move-object v0, p1

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateEnable(Z)V
    .locals 14
    .param p1, "enable"    # Z

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 324
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->subParamItemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->subParamItemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v7}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "keyString":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_a

    .line 326
    invoke-direct {p0, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->isSubOptionsSetTextColor(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 327
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$color;->x8_value_select:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$color;->x8_value_unselected:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    :goto_1
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    if-eqz v7, :cond_0

    .line 379
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-virtual {v7, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->onDroneConnected(Z)V

    .line 381
    :cond_0
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v7, :cond_1

    .line 382
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 384
    :cond_1
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->resetBtn:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 385
    if-nez p1, :cond_c

    .line 386
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->resetBtn:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 387
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v12}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 392
    :goto_2
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->resetBtn:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 395
    :cond_2
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_3

    if-nez p1, :cond_3

    .line 396
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 398
    :cond_3
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpTv:Landroid/widget/TextView;

    if-eqz v7, :cond_4

    .line 399
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpTv:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 400
    if-eqz p1, :cond_d

    .line 401
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpTv:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 406
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->normalTv:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 407
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->normalTv:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 408
    if-eqz p1, :cond_e

    .line 409
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->normalTv:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 414
    :cond_5
    :goto_4
    return-void

    .line 324
    .end local v4    # "keyString":Ljava/lang/String;
    :cond_6
    const-string v4, ""

    goto :goto_0

    .line 330
    .restart local v4    # "keyString":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->isRecordingUnclickableItem(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->isDelayedPhotographyUnclickableItem(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 332
    :cond_8
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 333
    new-array v6, v11, [[I

    new-array v7, v10, [I

    const v8, 0x10100a1

    aput v8, v7, v9

    aput-object v7, v6, v9

    new-array v7, v10, [I

    const v8, -0x101009e

    aput v8, v7, v9

    aput-object v7, v6, v10

    .line 336
    .local v6, "statesRecording":[[I
    new-array v3, v11, [I

    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 337
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$color;->x8_value_disable_select:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v3, v9

    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 338
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$color;->x8_value_disable:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v3, v10

    .line 340
    .local v3, "colorsRecording":[I
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v6, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 341
    .local v1, "colorStateListRecording":Landroid/content/res/ColorStateList;
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 343
    .end local v1    # "colorStateListRecording":Landroid/content/res/ColorStateList;
    .end local v3    # "colorsRecording":[I
    .end local v6    # "statesRecording":[[I
    :cond_9
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 344
    new-array v5, v11, [[I

    new-array v7, v10, [I

    const v8, 0x10100a1

    aput v8, v7, v9

    aput-object v7, v5, v9

    new-array v7, v10, [I

    const v8, 0x101009e

    aput v8, v7, v9

    aput-object v7, v5, v10

    .line 348
    .local v5, "states":[[I
    new-array v2, v11, [I

    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 350
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$color;->x8_value_select:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v2, v9

    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 351
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$color;->x8_value_unselected:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v2, v10

    .line 353
    .local v2, "colors":[I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 354
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 360
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v2    # "colors":[I
    .end local v5    # "states":[[I
    :cond_a
    invoke-direct {p0, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->isSubOptionsSetTextColor(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 361
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$color;->x8_value_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$color;->x8_value_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 364
    :cond_b
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 365
    new-array v5, v11, [[I

    new-array v7, v10, [I

    const v8, 0x10100a1

    aput v8, v7, v9

    aput-object v7, v5, v9

    new-array v7, v10, [I

    const v8, -0x101009e

    aput v8, v7, v9

    aput-object v7, v5, v10

    .line 369
    .restart local v5    # "states":[[I
    new-array v2, v11, [I

    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 371
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$color;->x8_value_disable_select:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v2, v9

    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 372
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$color;->x8_value_disable:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v2, v10

    .line 374
    .restart local v2    # "colors":[I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 375
    .restart local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 389
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v2    # "colors":[I
    .end local v5    # "states":[[I
    :cond_c
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->resetBtn:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 390
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v13}, Landroid/widget/SeekBar;->setAlpha(F)V

    goto/16 :goto_2

    .line 403
    :cond_d
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpTv:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_3

    .line 411
    :cond_e
    iget-object v7, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->normalTv:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_4
.end method


# virtual methods
.method public varargs addParamContent(Landroid/content/Context;Lcom/fimi/x8sdk/controller/CameraManager;I[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;
    .param p3, "layout_id"    # I
    .param p4, "optionName"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 202
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p3, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "paramView":Landroid/view/View;
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 204
    aget-object v2, p4, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_awb:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8CameraAwbItemController;

    invoke-direct {v2, v1, p2}, Lcom/fimi/app/x8s/controls/camera/X8CameraAwbItemController;-><init>(Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->awbController:Lcom/fimi/app/x8s/controls/camera/X8CameraAwbItemController;

    .line 206
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    aget-object v2, p4, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_style:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    aget-object v2, p4, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_video_resolution:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    const-string/jumbo v3, "video_resolution"

    iget-object v4, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    invoke-direct {v2, v1, p2, v3, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;-><init>(Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;Ljava/lang/String;Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    .line 211
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->subParamItemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 212
    .local v0, "optionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    aget-object v3, p4, v6

    aget-object v4, p4, v7

    invoke-virtual {v2, v0, v3, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->updateParamList(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v0    # "optionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    aget-object v2, p4, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    const-string v3, "capture_mode"

    iget-object v4, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    invoke-direct {v2, v1, p2, v3, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;-><init>(Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;Ljava/lang/String;Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    .line 215
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->subParamItemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 216
    .restart local v0    # "optionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    aget-object v3, p4, v6

    aget-object v4, p4, v7

    invoke-virtual {v2, v0, v3, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->updateParamList(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    .end local v0    # "optionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    aget-object v2, p4, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    const-string v3, "record_mode"

    iget-object v4, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    invoke-direct {v2, v1, p2, v3, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;-><init>(Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;Ljava/lang/String;Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    .line 219
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->subParamItemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 220
    .restart local v0    # "optionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->arrayController:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    aget-object v3, p4, v6

    aget-object v4, p4, v7

    invoke-virtual {v2, v0, v3, v4}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->updateParamList(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getContentLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public initItemData(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;IZI)V
    .locals 7
    .param p1, "itemEntity"    # Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;
    .param p2, "index"    # I
    .param p3, "enable"    # Z
    .param p4, "select_index"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 76
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/CameraState;->isDelayedPhotography()Z

    .line 77
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/CameraState;->isDelayedPhotography()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 p3, 0x0

    .line 80
    :cond_0
    invoke-direct {p0, p3}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->updateEnable(Z)V

    .line 81
    iput-object p1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->subParamItemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    .line 82
    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 85
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->isMultilevelMenuView(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 86
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 104
    .local v0, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "nickValue":Ljava/lang/String;
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 106
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_saturation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 111
    const-string v2, "saturation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->saturation:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->fromUser:Z

    if-nez v2, :cond_4

    .line 136
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->saturation:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->saturation:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 138
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->saturation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contrast:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 141
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contrast:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 142
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contrast:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .end local v0    # "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "nickValue":Ljava/lang/String;
    :cond_4
    if-ne p4, p2, :cond_5

    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->isMultilevelMenuView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 147
    :cond_5
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 154
    :cond_6
    :goto_3
    return-void

    .line 89
    :cond_7
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 92
    :cond_8
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 93
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 95
    :cond_9
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 99
    :cond_a
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    const-string v3, "camera_style"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 108
    .restart local v0    # "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "nickValue":Ljava/lang/String;
    :cond_b
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sub_options:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey2Title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 116
    :cond_c
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 117
    const-string v2, "contrast"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contrast:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 122
    :cond_d
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_camera_sharpness:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 123
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 127
    :cond_e
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 129
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_f
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 149
    .end local v0    # "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "nickValue":Ljava/lang/String;
    :cond_10
    sget-boolean v2, Lcom/fimi/x8sdk/command/CameraJsonCollection;->isClearData:Z

    if-eqz v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 151
    sput-boolean v5, Lcom/fimi/x8sdk/command/CameraJsonCollection;->isClearData:Z

    goto/16 :goto_3
.end method

.method public initSharpViewStub()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->normal_v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->normalTv:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->sharp_v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->sharpTv:Landroid/widget/TextView;

    .line 278
    return-void
.end method

.method public initViewStub()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contrast:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contrast:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->contrast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->saturation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->saturation:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->saturation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->resetBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;-><init>(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void
.end method

.method public isDelayedPhotographyUnclickableItem(Ljava/lang/String;)Z
    .locals 3
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "isUnclickable":Z
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->isDelayedPhotography()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_photo_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 474
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_photo_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_awb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 475
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_digita:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_style:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    :cond_0
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    .line 478
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 481
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingUnclickableItem(Ljava/lang/String;)Z
    .locals 3
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "isUnclickable":Z
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v1, v2, :cond_2

    .line 458
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_video_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    .line 459
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_video_resolution:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_record_quality:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    .line 462
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 0
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 284
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v4, 0x1

    .line 288
    iput-boolean p3, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->fromUser:Z

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->styleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->optionValue:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->fromUser:Z

    .line 306
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->fromUser:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->setRecyclerScroller(Z)V

    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_saturation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const-string v1, "saturation"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->styleParam(Ljava/lang/String;I)V

    .line 319
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->fromUser:Z

    .line 321
    :cond_1
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->paramKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const-string v1, "contrast"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->styleParam(Ljava/lang/String;I)V

    goto :goto_0
.end method
