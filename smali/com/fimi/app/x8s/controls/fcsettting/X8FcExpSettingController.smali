.class public Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8FcExpSettingController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;
.implements Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;


# instance fields
.field private final DEFAULT_VALUE:I

.field private btnReset:Landroid/widget/ImageButton;

.field private content_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

.field private cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

.field private cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

.field private cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

.field private edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

.field private edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

.field private edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private imgReturn:Landroid/widget/ImageView;

.field private isRequested:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

.field private mContext:Landroid/content/Context;

.field private resetDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 32
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->DEFAULT_VALUE:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->isRequested:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8FixedEditText;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8FixedEditText;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8CustomChartView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/app/x8s/widget/X8FixedEditText;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method private requestDefaultValue()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->isShow:Z

    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->defaultVal()V

    .line 211
    return-void
.end method

.method public defaultVal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->content_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 191
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_0
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_main_fc_exp_setting:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->exp_content_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/percent/PercentRelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->content_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    .line 66
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->imgReturn:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_reset:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    .line 68
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->edt_to_up_down:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8FixedEditText;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    .line 71
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->edt_to_left_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8FixedEditText;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    .line 72
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->edt_to_go_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8FixedEditText;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    .line 74
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v5}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setGravity(I)V

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setTextAlignment(I)V

    .line 76
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setFixedText(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v5}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setGravity(I)V

    .line 78
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setTextAlignment(I)V

    .line 79
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setFixedText(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v5}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setGravity(I)V

    .line 81
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setTextAlignment(I)V

    .line 82
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setFixedText(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setOnInputChangedListener(Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;)V

    .line 85
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setOnInputChangedListener(Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;)V

    .line 86
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setOnInputChangedListener(Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;)V

    .line 88
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->cv_to_up_down:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8CustomChartView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .line 93
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->cv_to_left_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8CustomChartView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .line 94
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->cv_to_go_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8CustomChartView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    .line 96
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setOnSeekChangeListener(Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;)V

    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setOnSeekChangeListener(Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;)V

    .line 98
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setOnSeekChangeListener(Lcom/fimi/app/x8s/widget/X8CustomChartView$OnSeekChangedListener;)V

    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->initActions()V

    .line 103
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 224
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->closeItem()V

    .line 226
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_reset:I

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->resetDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v1, :cond_2

    .line 232
    new-instance v1, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_fc_sensitivity_reset_title:I

    .line 233
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_fc_sensitivity_reset_content:I

    .line 234
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->resetDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->resetDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto :goto_0
.end method

.method public onDroneConnected(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->isShow:Z

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->isShow:Z

    if-eqz v0, :cond_0

    .line 117
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->isRequested:Z

    if-nez v0, :cond_2

    .line 118
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->isRequested:Z

    .line 119
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->requestDefaultValue()V

    .line 122
    :cond_2
    if-nez p1, :cond_5

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 129
    :goto_1
    new-array v0, v2, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->content_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    if-eqz v0, :cond_3

    .line 131
    if-nez p1, :cond_6

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setAlpha(F)V

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setEnable(Z)V

    .line 139
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    if-eqz v0, :cond_4

    .line 140
    if-nez p1, :cond_7

    .line 141
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setAlpha(F)V

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setEnable(Z)V

    .line 148
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    if-eqz v0, :cond_0

    .line 149
    if-nez p1, :cond_8

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setAlpha(F)V

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setEnable(Z)V

    goto :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_1

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setAlpha(F)V

    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setEnable(Z)V

    goto :goto_2

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setEnable(Z)V

    goto :goto_3

    .line 153
    :cond_8
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setAlpha(F)V

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setEnable(Z)V

    goto/16 :goto_0
.end method

.method public onError(Landroid/widget/EditText;ILjava/lang/String;)V
    .locals 6
    .param p1, "v"    # Landroid/widget/EditText;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_fc_exp_error_tip:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 382
    const-wide/16 v0, 0x0

    .line 383
    .local v0, "curValue":D
    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result v2

    .line 384
    .local v2, "i":I
    sget v3, Lcom/fimi/app/x8s/R$id;->edt_to_up_down:I

    if-ne v2, v3, :cond_1

    .line 385
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getCurValue()D

    move-result-wide v0

    .line 394
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 397
    return-void

    .line 387
    :cond_1
    sget v3, Lcom/fimi/app/x8s/R$id;->edt_to_left_right:I

    if-ne v2, v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getCurValue()D

    move-result-wide v0

    goto :goto_0

    .line 390
    :cond_2
    sget v3, Lcom/fimi/app/x8s/R$id;->edt_to_go_back:I

    if-ne v2, v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->getCurValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public onFingerUp(ID)V
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "value"    # D

    .prologue
    .line 302
    sget v0, Lcom/fimi/app/x8s/R$id;->cv_to_up_down:I

    if-ne p1, v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;D)V

    double-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setUpDownRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    sget v0, Lcom/fimi/app/x8s/R$id;->cv_to_left_right:I

    if-ne p1, v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;D)V

    double-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setLeftRightRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    goto :goto_0

    .line 324
    :cond_2
    sget v0, Lcom/fimi/app/x8s/R$id;->cv_to_go_back:I

    if-ne p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;D)V

    double-to-int v2, p2

    double-to-int v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setGoBackRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    goto :goto_0
.end method

.method public onInputChanged(II)V
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 341
    const/16 v0, 0xa

    if-gt v0, p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    .line 342
    sget v0, Lcom/fimi/app/x8s/R$id;->edt_to_up_down:I

    if-ne p1, v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setCurValue(D)V

    .line 344
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToUpDown:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 345
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)V

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setUpDownRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget v0, Lcom/fimi/app/x8s/R$id;->edt_to_left_right:I

    if-ne p1, v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setCurValue(D)V

    .line 355
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToLeftRight:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 356
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)V

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setLeftRightRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    goto :goto_0

    .line 363
    :cond_2
    sget v0, Lcom/fimi/app/x8s/R$id;->edt_to_go_back:I

    if-ne p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->setCurValue(D)V

    .line 365
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->cvToGoBack:Lcom/fimi/app/x8s/widget/X8CustomChartView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomChartView;->refreshView(Z)V

    .line 366
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;)V

    invoke-virtual {v0, v1, p2, p2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setGoBackRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    goto :goto_0
.end method

.method public onSeekChanged(ID)V
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "value"    # D

    .prologue
    .line 288
    sget v0, Lcom/fimi/app/x8s/R$id;->cv_to_up_down:I

    if-ne p1, v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToUpDown:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    sget v0, Lcom/fimi/app/x8s/R$id;->cv_to_left_right:I

    if-ne p1, v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToLeftRight:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_2
    sget v0, Lcom/fimi/app/x8s/R$id;->cv_to_go_back:I

    if-ne p1, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->edtToGoBack:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 219
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 215
    return-void
.end method

.method public showItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 195
    iput-boolean v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->isShow:Z

    .line 196
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->contentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->getDroneState()V

    .line 198
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->isConect:Z

    if-eqz v0, :cond_0

    .line 199
    new-array v0, v2, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->content_layout:Lcom/fimi/kernel/percent/PercentRelativeLayout;

    aput-object v1, v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->btnReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->defaultVal()V

    goto :goto_0
.end method

.method public varargs updateViewEnable(Z[Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "parent"    # [Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 404
    if-eqz p2, :cond_4

    array-length v4, p2

    if-lez v4, :cond_4

    .line 405
    array-length v6, p2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, p2, v4

    .line 406
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 407
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 409
    .local v3, "subView":Landroid/view/View;
    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 410
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "subView":Landroid/view/View;
    aput-object v3, v7, v5

    invoke-virtual {p0, p1, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcExpSettingController;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 407
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    .restart local v3    # "subView":Landroid/view/View;
    :cond_0
    instance-of v7, v3, Lcom/fimi/app/x8s/widget/X8FixedEditText;

    if-eqz v7, :cond_1

    .line 414
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 418
    :goto_3
    if-eqz p1, :cond_2

    .line 419
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 416
    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 421
    :cond_2
    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 405
    .end local v3    # "subView":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "j":I
    .end local v2    # "len":I
    :cond_4
    return-void
.end method
