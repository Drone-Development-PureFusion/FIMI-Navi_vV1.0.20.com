.class public Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8FcSettingMenuController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private imgBattery:Landroid/widget/ImageView;

.field private imgFc:Landroid/widget/ImageView;

.field private imgGenneal:Landroid/widget/ImageView;

.field private imgGimbal:Landroid/widget/ImageView;

.field private imgRc:Landroid/widget/ImageView;

.field private itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

.field private mX8BatteryItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

.field private mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field private mX8GeneralItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

.field private mX8GimbalItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

.field private mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

.field mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

.field private menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

.field private parentView:Landroid/view/View;

.field private rlBattery:Landroid/widget/RelativeLayout;

.field private rlFc:Landroid/widget/RelativeLayout;

.field private rlGenneal:Landroid/widget/RelativeLayout;

.field private rlGimbal:Landroid/widget/RelativeLayout;

.field private rlRc:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    .line 53
    sget-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 58
    return-void
.end method

.method private switchMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 200
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController$1;->$SwitchMap$com$fimi$app$x8s$enums$X8FcAllSettingMenuEnum:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 202
    :pswitch_0
    new-array v0, v2, [Z

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->setItemsSelected([Z)V

    .line 203
    new-array v0, v2, [Z

    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchItemShow([Z)V

    goto :goto_0

    .line 207
    :pswitch_1
    new-array v0, v2, [Z

    fill-array-data v0, :array_2

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->setItemsSelected([Z)V

    .line 208
    new-array v0, v2, [Z

    fill-array-data v0, :array_3

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchItemShow([Z)V

    goto :goto_0

    .line 212
    :pswitch_2
    new-array v0, v2, [Z

    fill-array-data v0, :array_4

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->setItemsSelected([Z)V

    .line 213
    new-array v0, v2, [Z

    fill-array-data v0, :array_5

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchItemShow([Z)V

    goto :goto_0

    .line 217
    :pswitch_3
    new-array v0, v2, [Z

    fill-array-data v0, :array_6

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->setItemsSelected([Z)V

    .line 218
    new-array v0, v2, [Z

    fill-array-data v0, :array_7

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchItemShow([Z)V

    goto :goto_0

    .line 222
    :pswitch_4
    new-array v0, v2, [Z

    fill-array-data v0, :array_8

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->setItemsSelected([Z)V

    .line 223
    new-array v0, v2, [Z

    fill-array-data v0, :array_9

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchItemShow([Z)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 202
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 203
    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 207
    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 208
    nop

    :array_3
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 212
    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 213
    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 217
    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 218
    nop

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 222
    nop

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 223
    nop

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public closeItem()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeItem()V

    .line 97
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->closeItem()V

    .line 100
    :cond_0
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public getMenu()Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    return-object v0
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlFc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlRc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlGimbal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlBattery:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlGenneal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public initItemsControler(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 160
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .line 161
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-direct {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .line 162
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-direct {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GimbalItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .line 163
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-direct {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8BatteryItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .line 164
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-direct {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GeneralItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .line 165
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_main_fc_setting_items:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_fc:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgFc:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_rc:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgRc:Landroid/widget/ImageView;

    .line 66
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_gimbal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgGimbal:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_battery:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgBattery:Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_general:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgGenneal:Landroid/widget/ImageView;

    .line 70
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_fc:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlFc:Landroid/widget/RelativeLayout;

    .line 71
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_rc:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlRc:Landroid/widget/RelativeLayout;

    .line 72
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_gimbal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlGimbal:Landroid/widget/RelativeLayout;

    .line 73
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_battery:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlBattery:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_general:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->rlGenneal:Landroid/widget/RelativeLayout;

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->parentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->initItemsControler(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public onBatteryReceive(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V
    .locals 1
    .param p1, "autoFcBattery"    # Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8BatteryItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8BatteryItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->onBatteryReceive(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 105
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_fc:I

    if-ne v0, v1, :cond_1

    .line 106
    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 107
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchMenu()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_rc:I

    if-ne v0, v1, :cond_2

    .line 109
    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->RC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 110
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchMenu()V

    goto :goto_0

    .line 111
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_gimbal:I

    if-ne v0, v1, :cond_3

    .line 112
    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GIMBAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 113
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchMenu()V

    goto :goto_0

    .line 114
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_battery:I

    if-ne v0, v1, :cond_4

    .line 115
    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->BATTERY_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 116
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchMenu()V

    goto :goto_0

    .line 117
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_general:I

    if-ne v0, v1, :cond_0

    .line 118
    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GENERAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 119
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchMenu()V

    goto :goto_0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->onDroneConnected(Z)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->onDroneConnected(Z)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8BatteryItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8BatteryItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->onDroneConnected(Z)V

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GimbalItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GimbalItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->onDroneConnected(Z)V

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GeneralItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GeneralItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->onDroneConnected(Z)V

    .line 255
    :cond_4
    return-void
.end method

.method public onRcConnected(Z)V
    .locals 1
    .param p1, "isConnect"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->onRcConnected(Z)V

    .line 237
    :cond_0
    return-void
.end method

.method public setFiveKeyValue(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "position"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->setFiveKeyValue(II)V

    .line 231
    return-void
.end method

.method public varargs setItemsSelected([Z)V
    .locals 2
    .param p1, "all"    # [Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgFc:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgRc:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgGimbal:Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgBattery:Landroid/widget/ImageView;

    const/4 v1, 0x3

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->imgGenneal:Landroid/widget/ImageView;

    const/4 v1, 0x4

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 173
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/x8sdk/controller/X8GimbalManager;Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;)V
    .locals 3
    .param p1, "mapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .param p4, "gimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;
    .param p5, "mX8FcItemListener"    # Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;
    .param p6, "mX8RcItemControllerListener"    # Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;
    .param p7, "mIX8GeneralItemControllerListerner"    # Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;
    .param p8, "gimbalSettingListener"    # Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;
    .param p9, "coverListener"    # Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-virtual {v0, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GimbalItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-virtual {v0, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GimbalItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-virtual {v0, p4}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->setGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8BatteryItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-virtual {v0, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GeneralItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-virtual {v0, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GeneralItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-virtual {v0, p4}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->setGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setMapVideoController(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0, p5}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8FcItemListener;)V

    .line 138
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0, p9}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setCoverListener(Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;)V

    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-virtual {v0, p6}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;)V

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GeneralItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-virtual {v0, p7}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->setListerner(Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;)V

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GimbalItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-virtual {v0, p8}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;)V

    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8FcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    aput-object v2, v0, v1

    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8RcItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    aput-object v2, v0, v1

    .line 148
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GimbalItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    aput-object v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8BatteryItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    aput-object v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->mX8GeneralItemController:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    aput-object v2, v0, v1

    .line 151
    return-void
.end method

.method public varargs switchItemShow([Z)V
    .locals 2
    .param p1, "all"    # [Z

    .prologue
    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 177
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->showItem()V

    .line 176
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->itemControllers:[Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->closeItem()V

    goto :goto_1

    .line 183
    :cond_1
    return-void
.end method

.method public switchMenu(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V
    .locals 0
    .param p1, "menu"    # Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->menu:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 156
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->switchMenu()V

    .line 157
    return-void
.end method
