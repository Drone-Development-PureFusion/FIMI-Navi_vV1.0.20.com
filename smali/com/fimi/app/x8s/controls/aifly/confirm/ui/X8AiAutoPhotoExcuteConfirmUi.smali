.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;
.super Ljava/lang/Object;
.source "X8AiAutoPhotoExcuteConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/widget/SwitchButton$OnSwitchListener;


# instance fields
.field private DISTANCE_DEFALOUT:F

.field private DISTANCE_MAX:F

.field private DISTANCE_MAX_PROGRESS:I

.field private DISTANCE_MIN:F

.field private DISTANCE_VERTIIVAL_MAX:F

.field private DISTANCE_VERTIIVAL_MAX_PROGRESS:I

.field private SPEED_DEFALOUT:F

.field private SPEED_MAX:F

.field private SPEED_MAX_PROGRESS:I

.field private SPEED_MIN:F

.field private angle:I

.field private btnOk:Landroid/view/View;

.field private contentView:Landroid/view/View;

.field private currentDroneHeight:F

.field private distanceListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

.field private distanceMax:I

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private imgReturn:Landroid/view/View;

.field private item:I

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mActivity:Landroid/app/Activity;

.field private mType:I

.field private mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

.field private sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

.field private speedListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

.field private swbAutoReturn:Lcom/fimi/widget/SwitchButton;

.field private tvContent:Landroid/widget/TextView;

.field private tvDistance:Landroid/widget/TextView;

.field private tvSpeed:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private vDistanceMinus:Landroid/view/View;

.field private vDistancePlus:Landroid/view/View;

.field private vSpeedMinus:Landroid/view/View;

.field private vSpeedPlus:Landroid/view/View;

.field private verticalMax:I

.field private x8AiAutoPhototExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;II)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "type"    # I
    .param p4, "angle"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MIN:F

    .line 50
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MAX:F

    .line 51
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MAX:F

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MIN:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MAX_PROGRESS:I

    .line 52
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_DEFALOUT:F

    .line 54
    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    .line 55
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MAX:F

    .line 56
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MAX:F

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MAX_PROGRESS:I

    .line 58
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_DEFALOUT:F

    .line 60
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_VERTIIVAL_MAX:F

    .line 61
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_VERTIIVAL_MAX:F

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_VERTIIVAL_MAX_PROGRESS:I

    .line 148
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->speedListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    .line 169
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->distanceListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    .line 72
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->mActivity:Landroid/app/Activity;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_auto_photo_excute_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->contentView:Landroid/view/View;

    .line 74
    iput p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->mType:I

    .line 75
    if-nez p3, :cond_0

    .line 77
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->angle:I

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->initViews(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->initActions()V

    .line 84
    return-void

    .line 80
    :cond_0
    const/16 v0, 0x2328

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->angle:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    .prologue
    .line 28
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MIN:F

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    .prologue
    .line 28
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->mType:I

    return v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    .prologue
    .line 28
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    return v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public initActions()V
    .locals 4

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 129
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->imgReturn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->swbAutoReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1, p0}, Lcom/fimi/widget/SwitchButton;->setOnSwitchListener(Lcom/fimi/widget/SwitchButton$OnSwitchListener;)V

    .line 132
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->vSpeedMinus:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->vSpeedPlus:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->speedListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V

    .line 136
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->vDistanceMinus:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->vDistancePlus:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->distanceListener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V

    .line 140
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_DEFALOUT:F

    mul-float/2addr v1, v3

    float-to-int v0, v1

    .line 141
    .local v0, "progress":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 143
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_DEFALOUT:F

    mul-float/2addr v1, v3

    float-to-int v0, v1

    .line 144
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    .line 145
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 11
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    .line 88
    sget v4, Lcom/fimi/app/x8s/R$id;->img_ai_return:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->imgReturn:Landroid/view/View;

    .line 89
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_ai_confirm_ok:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->btnOk:Landroid/view/View;

    .line 90
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_ai_title:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvTitle:Landroid/widget/TextView;

    .line 91
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_ai_next_content1:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvContent:Landroid/widget/TextView;

    .line 93
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_ai_time:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    .line 94
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_ai_speed:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvSpeed:Landroid/widget/TextView;

    .line 95
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_ai_distance:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvDistance:Landroid/widget/TextView;

    .line 97
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_speed_minus:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->vSpeedMinus:Landroid/view/View;

    .line 98
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_speed_plus:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->vSpeedPlus:Landroid/view/View;

    .line 99
    sget v4, Lcom/fimi/app/x8s/R$id;->sb_speed:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    .line 100
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MAX_PROGRESS:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMaxProgress(I)V

    .line 102
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_distance_minus:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->vDistanceMinus:Landroid/view/View;

    .line 103
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_distance_plus:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->vDistancePlus:Landroid/view/View;

    .line 104
    sget v4, Lcom/fimi/app/x8s/R$id;->sb_distance:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    .line 105
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHeight()F

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->currentDroneHeight:F

    .line 106
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->mType:I

    if-ne v4, v10, :cond_0

    .line 107
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_VERTIIVAL_MAX:F

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->currentDroneHeight:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->verticalMax:I

    .line 108
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->verticalMax:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMaxProgress(I)V

    .line 123
    :goto_0
    sget v4, Lcom/fimi/app/x8s/R$id;->swb_ai_auto_return:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fimi/widget/SwitchButton;

    iput-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->swbAutoReturn:Lcom/fimi/widget/SwitchButton;

    .line 124
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->swbAutoReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v4, v10}, Lcom/fimi/widget/SwitchButton;->setEnabled(Z)V

    .line 126
    return-void

    .line 110
    :cond_0
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->angle:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v2, v4, v6

    .line 111
    .local v2, "pitchAngle":D
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->angle:I

    if-nez v4, :cond_1

    .line 112
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MAX_PROGRESS:I

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->distanceMax:I

    .line 121
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->distanceMax:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMaxProgress(I)V

    goto :goto_0

    .line 114
    :cond_1
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_VERTIIVAL_MAX:F

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->currentDroneHeight:F

    sub-float v0, v4, v5

    .line 115
    .local v0, "diffDistance":F
    float-to-double v4, v0

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v6, v2, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 116
    .local v1, "hypotenuseDistanst":F
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MAX:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 117
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MAX:F

    .line 119
    :cond_2
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    sub-float v4, v1, v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->distanceMax:I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 200
    .local v0, "id":I
    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_return:I

    if-ne v0, v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_ai_confirm_ok:I

    if-ne v0, v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onExcuteClick()V

    goto :goto_0

    .line 205
    :cond_2
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_speed_minus:I

    if-ne v0, v2, :cond_4

    .line 206
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, -0xa

    .line 208
    .local v1, "s":I
    if-gez v1, :cond_3

    .line 209
    const/4 v1, 0x0

    .line 211
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto :goto_0

    .line 213
    .end local v1    # "s":I
    :cond_4
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_speed_plus:I

    if-ne v0, v2, :cond_6

    .line 214
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MAX_PROGRESS:I

    if-eq v2, v3, :cond_0

    .line 215
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, 0xa

    .line 216
    .restart local v1    # "s":I
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MAX_PROGRESS:I

    if-le v1, v2, :cond_5

    .line 217
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MAX_PROGRESS:I

    .line 219
    :cond_5
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto :goto_0

    .line 221
    .end local v1    # "s":I
    :cond_6
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_distance_minus:I

    if-ne v0, v2, :cond_8

    .line 222
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, -0xa

    .line 224
    .restart local v1    # "s":I
    if-gez v1, :cond_7

    .line 225
    const/4 v1, 0x0

    .line 227
    :cond_7
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto :goto_0

    .line 229
    .end local v1    # "s":I
    :cond_8
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_distance_plus:I

    if-ne v0, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, 0xa

    .line 231
    .restart local v1    # "s":I
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 232
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->verticalMax:I

    if-le v1, v2, :cond_9

    .line 233
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->verticalMax:I

    .line 235
    :cond_9
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->verticalMax:I

    if-eq v2, v3, :cond_0

    .line 236
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto/16 :goto_0

    .line 239
    :cond_a
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->distanceMax:I

    if-le v1, v2, :cond_b

    .line 240
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->distanceMax:I

    .line 242
    :cond_b
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->distanceMax:I

    if-eq v2, v3, :cond_0

    .line 243
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setProgress(I)V

    goto/16 :goto_0
.end method

.method public onSwitch(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    .line 290
    if-eqz p2, :cond_0

    .line 291
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->swbAutoReturn:Lcom/fimi/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->swbAutoReturn:Lcom/fimi/widget/SwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    goto :goto_0
.end method

.method public setAiAutoPhotoValueCmd(Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V
    .locals 6
    .param p1, "excuteListener"    # Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    .line 298
    new-instance v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;-><init>()V

    .line 299
    .local v0, "cmd":Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MIN:F

    mul-float/2addr v1, v5

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->speed:I

    .line 300
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->swbAutoReturn:Lcom/fimi/widget/SwitchButton;

    invoke-virtual {v1}, Lcom/fimi/widget/SwitchButton;->getToggleOn()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->config:I

    .line 301
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->angle:I

    iput v1, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->angle:I

    .line 302
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->item:I

    if-nez v1, :cond_1

    :goto_1
    iput v2, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->mode:I

    .line 303
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;->routeLength:I

    .line 307
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$3;

    invoke-direct {v2, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/x8sdk/controller/FcManager;->setAiAutoPhotoValue(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 317
    return-void

    :cond_0
    move v1, v3

    .line 300
    goto :goto_0

    :cond_1
    move v2, v3

    .line 302
    goto :goto_1
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 334
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 335
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "mX8AiAutoPhototExcuteController"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->listener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 255
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 256
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->x8AiAutoPhototExcuteController:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .line 258
    return-void
.end method

.method public setValue()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/high16 v12, 0x41200000    # 10.0f

    .line 262
    iget v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->mType:I

    if-nez v7, :cond_0

    .line 263
    iget v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->mType:I

    iput v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->item:I

    .line 264
    iget v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->angle:I

    int-to-double v8, v7

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double v2, v8, v10

    .line 265
    .local v2, "pitchAngle":D
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3, v13}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "angleStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_tip4:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "s":Ljava/lang/String;
    new-array v7, v13, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 268
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MIN:F

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    add-float v5, v7, v8

    .line 270
    .local v5, "speed":F
    iget v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    add-float v1, v7, v8

    .line 271
    .local v1, "distance":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%.2f"

    new-array v9, v13, [Ljava/lang/Object;

    div-float v10, v1, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "time":Ljava/lang/String;
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_title:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .end local v0    # "angleStr":Ljava/lang/String;
    .end local v2    # "pitchAngle":D
    :goto_0
    return-void

    .line 275
    .end local v1    # "distance":F
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "speed":F
    .end local v6    # "time":Ljava/lang/String;
    :cond_0
    iget v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->mType:I

    iput v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->item:I

    .line 276
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_vertical_next_tip1:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    .restart local v4    # "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->SPEED_MIN:F

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbSpeed:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    add-float v5, v7, v8

    .line 279
    .restart local v5    # "speed":F
    iget v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->DISTANCE_MIN:F

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->sbDistance:Lcom/fimi/app/x8s/widget/X8SeekBarView;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getProgress()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    add-float v1, v7, v8

    .line 280
    .restart local v1    # "distance":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%.2f"

    new-array v9, v13, [Ljava/lang/Object;

    div-float v10, v1, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    .restart local v6    # "time":Ljava/lang/String;
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->tvTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_vertical_title:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startAiAutoPhoto(Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V
    .locals 2
    .param p1, "excuteListener"    # Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$4;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiAutoPhotoExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 331
    return-void
.end method
