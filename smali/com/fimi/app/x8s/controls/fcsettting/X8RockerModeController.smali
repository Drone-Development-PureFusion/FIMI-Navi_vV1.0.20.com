.class public Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8RockerModeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private curMode:I

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private imgReturn:Landroid/widget/ImageView;

.field private imgRockerLeft:Landroid/widget/ImageView;

.field private imgRockerRight:Landroid/widget/ImageView;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private mContext:Landroid/content/Context;

.field onRcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

.field private thSwitchRocker:Lcom/fimi/app/x8s/widget/X8TabItem;

.field private tvLeftSideDown:Landroid/widget/TextView;

.field private tvLeftSideLeft:Landroid/widget/TextView;

.field private tvLeftSideRight:Landroid/widget/TextView;

.field private tvLeftSideUp:Landroid/widget/TextView;

.field private tvRightSideDown:Landroid/widget/TextView;

.field private tvRightSideLeft:Landroid/widget/TextView;

.field private tvRightSideRight:Landroid/widget/TextView;

.field private tvRightSideUp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "onRcCtrlModelListener"    # Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->curMode:I

    .line 57
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->onRcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    .prologue
    .line 28
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->curMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->switchRocker(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method private requestDefaultValue()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 217
    :cond_0
    return-void
.end method

.method private switchRocker(I)V
    .locals 2
    .param p1, "rocker"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->curMode:I

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->thSwitchRocker:Lcom/fimi/app/x8s/widget/X8TabItem;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setSelect(I)V

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->imgRockerLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->imgRockerRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 253
    packed-switch p1, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideLeft:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_left:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideRight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_right:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideUp:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_forward:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideDown:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_back_off:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideLeft:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_left_turn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideRight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_right_turn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideUp:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_up:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideDown:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_down:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideLeft:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_left_turn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideRight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_right_turn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideUp:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_up:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideDown:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_down:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideLeft:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_left:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideRight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_right:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideUp:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_forward:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideDown:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_back_off:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideLeft:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_left_turn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideRight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_right_turn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideUp:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_forward:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideDown:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_back_off:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideLeft:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_left:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideRight:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_right:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideUp:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_up:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideDown:Landroid/widget/TextView;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_rc_rocker_to_down:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->isShow:Z

    .line 231
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->defaultVal()V

    .line 233
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->thSwitchRocker:Lcom/fimi/app/x8s/widget/X8TabItem;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 134
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_main_rc_item_rocker_mode:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->imgReturn:Landroid/widget/ImageView;

    .line 137
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->th_switch_rockers:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8TabItem;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->thSwitchRocker:Lcom/fimi/app/x8s/widget/X8TabItem;

    .line 139
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_rocker_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->imgRockerLeft:Landroid/widget/ImageView;

    .line 140
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_rocker_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->imgRockerRight:Landroid/widget/ImageView;

    .line 142
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_left_side_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideLeft:Landroid/widget/TextView;

    .line 143
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_left_side_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideRight:Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_left_side_up:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideUp:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_left_side_down:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvLeftSideDown:Landroid/widget/TextView;

    .line 147
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_right_side_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideLeft:Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_right_side_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideRight:Landroid/widget/TextView;

    .line 149
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_right_side_up:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideUp:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_right_side_down:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->tvRightSideDown:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->initActions()V

    .line 154
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 184
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->closeItem()V

    .line 186
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 190
    :cond_0
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public onRcConnected(Z)V
    .locals 2
    .param p1, "isConnect"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->thSwitchRocker:Lcom/fimi/app/x8s/widget/X8TabItem;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->isShow:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->thSwitchRocker:Lcom/fimi/app/x8s/widget/X8TabItem;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->thSwitchRocker:Lcom/fimi/app/x8s/widget/X8TabItem;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8TabItem;->setAlpha(F)V

    .line 66
    :cond_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_2
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method public setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 241
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 237
    return-void
.end method

.method public showApDialog(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_model_dialog_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_model_dialog_content:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    invoke-direct {v4, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 128
    .local v0, "modelDialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 129
    return-void
.end method

.method public showItem()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->isShow:Z

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->requestDefaultValue()V

    .line 224
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->getDroneState()V

    .line 225
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->isRcConnect:Z

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->onRcConnected(Z)V

    .line 227
    return-void
.end method
