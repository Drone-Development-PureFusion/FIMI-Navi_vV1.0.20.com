.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;
.super Ljava/lang/Object;
.source "X8AiScrewNextUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;
.implements Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;


# instance fields
.field private btnOk:Landroid/view/View;

.field private final contentView:Landroid/view/View;

.field private currentRadius:I

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private height:F

.field private mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private radius:I

.field private rorate:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

.field private swAutoReturn:Lcom/fimi/widget/SwitchButton;

.field private tvDistance:Landroid/widget/TextView;

.field private tvHeight:Landroid/widget/TextView;

.field private tvMaxDistance:Landroid/widget/TextView;

.field private tvTip:Landroid/widget/TextView;

.field private x8AiScrewExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_screw_next_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->initViews(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->initActions()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)Lcom/fimi/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->swAutoReturn:Lcom/fimi/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->setDistance()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    return-object v0
.end method

.method private setDistance()V
    .locals 6

    .prologue
    .line 184
    new-instance v1, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;

    invoke-direct {v1}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;-><init>()V

    .line 185
    .local v1, "sp":Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->setDistance(I)V

    .line 186
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->radius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 187
    .local v0, "period":I
    const/16 v2, 0x32

    if-ge v0, v2, :cond_1

    .line 188
    const/16 v0, 0x32

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->setCiclePeriod(I)V

    .line 193
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->swAutoReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v2}, Lcom/fimi/widget/SwitchButton;->getToggleOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->setRTHTostart(I)V

    .line 194
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->setVertSpeed(I)V

    .line 195
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$2;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V

    invoke-virtual {v2, v1, v3}, Lcom/fimi/x8sdk/controller/FcManager;->setScrewPrameter(Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 205
    return-void

    .line 189
    :cond_1
    const/16 v2, 0xb4

    if-le v0, v2, :cond_0

    .line 190
    const/16 v0, 0xb4

    goto :goto_0

    .line 193
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public initActions()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->swAutoReturn:Lcom/fimi/widget/SwitchButton;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 83
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 8
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_height_value:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvHeight:Landroid/widget/TextView;

    .line 58
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_distance_value:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvDistance:Landroid/widget/TextView;

    .line 59
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_tip:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvTip:Landroid/widget/TextView;

    .line 60
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_max_distance_value:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvMaxDistance:Landroid/widget/TextView;

    .line 61
    sget v4, Lcom/fimi/app/x8s/R$id;->sb_max_distance:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    .line 62
    sget v4, Lcom/fimi/app/x8s/R$id;->sb_ai_auto_return:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/widget/SwitchButton;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->swAutoReturn:Lcom/fimi/widget/SwitchButton;

    .line 63
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_ai_ok:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->btnOk:Landroid/view/View;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_screw_tip4:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "prex":Ljava/lang/String;
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4, v7, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "str1":Ljava/lang/String;
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4, v7, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "str2":Ljava/lang/String;
    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4, v7, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "str3":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvTip:Landroid/widget/TextView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_ai_screw_rorate:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->rorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 70
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    invoke-virtual {v4, p0}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->setListener(Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2$onSeekValueSetListener;)V

    .line 71
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->rorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v4, p0}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 89
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_ok:I

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->setSpeed()V

    .line 92
    :cond_0
    return-void
.end method

.method public onSeekValueSet(II)V
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "value"    # I

    .prologue
    .line 107
    sget v1, Lcom/fimi/app/x8s/R$id;->sb_max_distance:I

    if-ne p1, v1, :cond_0

    .line 108
    int-to-float v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "str1":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvMaxDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .end local v0    # "str1":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSelect(ILjava/lang/String;I)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "last"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->x8AiScrewExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->rorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->radius:I

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->getProgress()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->drawScrew(ZII)V

    .line 242
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # I

    .prologue
    .line 98
    return-void
.end method

.method public onStop(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "progress"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->x8AiScrewExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->rorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->radius:I

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->getProgress()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->drawScrew(ZII)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;FF)V
    .locals 7
    .param p1, "mIX8NextViewListener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "x8AiScrewExcuteController"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p4, "radius"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 154
    .local v0, "intD":I
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->x8AiScrewExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .line 155
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 156
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvMaxDistance:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-static {v3, v5, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvDistance:Landroid/widget/TextView;

    invoke-static {p5, v5, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    invoke-virtual {v2, v0, v6}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->initData(II)V

    .line 159
    iput p5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->height:F

    .line 160
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 161
    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->radius:I

    .line 162
    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->currentRadius:I

    .line 163
    add-int/lit8 v1, v0, 0xa

    .line 164
    .local v1, "v":I
    if-lt v1, v6, :cond_0

    .line 165
    const/16 v1, 0xc8

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->setProgress(I)V

    .line 169
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, p5, v2

    if-gez v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvHeight:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_ai_line_runing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    :goto_0
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->currentRadius:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 175
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvDistance:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_ai_line_runing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :goto_1
    return-void

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvHeight:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvDistance:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setSpeed()V
    .locals 3

    .prologue
    .line 208
    const/16 v0, 0x1e

    .line 209
    .local v0, "s":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->rorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$3;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/x8sdk/controller/FcManager;->setAiSurroundSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 224
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->rorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 212
    neg-int v0, v0

    goto :goto_0
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 7
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    const/4 v6, 0x5

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 122
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHeight()F

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->height:F

    .line 123
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvHeight:Landroid/widget/TextView;

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->height:F

    invoke-static {v5, v0, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->x8AiScrewExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->x8AiScrewExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getCurrentDistance()F

    move-result v1

    .line 127
    .local v1, "r":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 128
    .local v2, "tempR":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvDistance:Landroid/widget/TextView;

    invoke-static {v1, v0, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->height:F

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    if-ge v6, v2, :cond_1

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->radius:I

    if-gt v4, v2, :cond_1

    const/16 v4, 0xc8

    if-ge v2, v4, :cond_1

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->radius:I

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8PlusMinusSeekBar2;->getProgress()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 136
    .local v0, "b":Z
    :goto_0
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->height:F

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvHeight:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->x8_ai_line_runing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    :goto_1
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->currentRadius:I

    if-ge v3, v6, :cond_3

    .line 142
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvDistance:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->x8_ai_line_runing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .end local v0    # "b":Z
    .end local v1    # "r":F
    .end local v2    # "tempR":I
    :cond_0
    :goto_2
    return-void

    .restart local v1    # "r":F
    .restart local v2    # "tempR":I
    :cond_1
    move v0, v3

    .line 129
    goto :goto_0

    .line 139
    .restart local v0    # "b":Z
    :cond_2
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvHeight:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 144
    :cond_3
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->tvDistance:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public startExcute()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setScrewStart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 237
    return-void
.end method
