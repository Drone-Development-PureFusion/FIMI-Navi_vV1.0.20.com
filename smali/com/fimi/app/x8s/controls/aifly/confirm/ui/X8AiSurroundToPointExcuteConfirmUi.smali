.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;
.super Ljava/lang/Object;
.source "X8AiSurroundToPointExcuteConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private DEFAULE_SPEED:F

.field private MAX:F

.field private MAX_PROGRESS:I

.field private MIN:F

.field private btnGo:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private imgBack:Landroid/widget/ImageView;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private perimeter:D

.field private r:I

.field private sbSeekBar:Landroid/widget/SeekBar;

.field private tvOrientation1:Landroid/widget/TextView;

.field private tvOrientation2:Landroid/widget/TextView;

.field private tvRotation1:Landroid/widget/TextView;

.field private tvRotation2:Landroid/widget/TextView;

.field private tvSpeed:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private vMinus:Landroid/view/View;

.field private vPlus:Landroid/view/View;

.field private x8AiSurroundExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;F)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "radius"    # F

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MIN:F

    .line 34
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX:F

    .line 36
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX:F

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MIN:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX_PROGRESS:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->perimeter:D

    .line 52
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->DEFAULE_SPEED:F

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_surround_to_point__excute_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->contentView:Landroid/view/View;

    .line 56
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->r:I

    .line 57
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->r:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX:F

    .line 58
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 59
    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX:F

    .line 61
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX:F

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MIN:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX_PROGRESS:I

    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->initView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->initAction()V

    .line 64
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->r:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->setRadius(I)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX:F

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->x8AiSurroundExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MIN:F

    return v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation2:Landroid/widget/TextView;

    return-object v0
.end method

.method private setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 147
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 148
    .local v0, "progress":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    return-void
.end method


# virtual methods
.method public initAction()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->vMinus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->vPlus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 68
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->imgBack:Landroid/widget/ImageView;

    .line 69
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_rotation1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation1:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_rotation2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation2:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_orientation1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation1:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_orientation2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation2:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 80
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->vMinus:Landroid/view/View;

    .line 81
    sget v0, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    .line 82
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->vPlus:Landroid/view/View;

    .line 83
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX_PROGRESS:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 104
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v0, v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MAX_PROGRESS:I

    if-eq v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 112
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v0, v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onBackClick()V

    goto :goto_0

    .line 114
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->onGoClick()V

    goto :goto_0

    .line 117
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_rotation1:I

    if-ne v0, v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 121
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_rotation2:I

    if-ne v0, v1, :cond_6

    .line 122
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 123
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 124
    :cond_6
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_orientation1:I

    if-ne v0, v1, :cond_7

    .line 125
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 127
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_ai_orientation2:I

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 129
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method public onGoClick()V
    .locals 4

    .prologue
    .line 179
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v0

    .line 180
    .local v0, "alt":F
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->setSpeed()V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->height_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v6, 0x1

    .line 161
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MIN:F

    int-to-float v4, p2

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    add-float v0, v3, v4

    .line 162
    .local v0, "speed":F
    invoke-static {v0, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "strSpeed":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->perimeter:D

    float-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 165
    .local v2, "time":I
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 171
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 176
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 263
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->btnGo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "x8AiSurroundExcuteController"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 48
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 49
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->x8AiSurroundExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .line 50
    return-void
.end method

.method public setOrientation()V
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "type":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const/4 v0, 0x0

    .line 234
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$3;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/x8sdk/controller/FcManager;->setAiSurroundOrientation(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 243
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvOrientation2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPerimeter(D)V
    .locals 1
    .param p1, "perimeter"    # D

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->perimeter:D

    .line 144
    return-void
.end method

.method public setRadius(I)V
    .locals 6
    .param p1, "radius"    # I

    .prologue
    .line 134
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, p1

    mul-double v0, v2, v4

    .line 136
    .local v0, "perimeter":D
    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->setPerimeter(D)V

    .line 137
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->DEFAULE_SPEED:F

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->setSpeed(F)V

    .line 138
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->setViewValue()V

    .line 139
    return-void
.end method

.method public setSpeed()V
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 209
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MIN:F

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 210
    .local v1, "speed":F
    mul-float v2, v1, v4

    float-to-int v0, v2

    .line 211
    .local v0, "s":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$2;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)V

    invoke-virtual {v2, v0, v3}, Lcom/fimi/x8sdk/controller/FcManager;->setAiSurroundSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 224
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvRotation2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method public setViewValue()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 152
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->MIN:F

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->sbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    add-float v0, v3, v4

    .line 153
    .local v0, "speed":F
    invoke-static {v0, v6, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "strSpeed":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-wide v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->perimeter:D

    float-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 156
    .local v2, "time":I
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public startExcute()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiSurroundExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 206
    return-void
.end method
