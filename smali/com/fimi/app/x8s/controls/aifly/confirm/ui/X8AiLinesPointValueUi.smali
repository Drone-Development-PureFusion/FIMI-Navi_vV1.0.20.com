.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;
.super Ljava/lang/Object;
.source "X8AiLinesPointValueUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private MAX:I

.field private MIN:I

.field private SB_MAX:I

.field private adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

.field private arraysView:[Landroid/view/View;

.field private btnAll:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private controller:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

.field count:I

.field private img4xSlow:Landroid/widget/ImageView;

.field private img5sPhoto:Landroid/widget/ImageView;

.field private imgHover:Landroid/widget/ImageView;

.field private imgNa:Landroid/widget/ImageView;

.field private imgOnePhoto:Landroid/widget/ImageView;

.field private imgRecord:Landroid/widget/ImageView;

.field private imgThreePhoto:Landroid/widget/ImageView;

.field private index:I

.field private isShowMetric:Z

.field private mEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

.field private mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

.field private minus:Landroid/view/View;

.field private mode:I

.field private plus:Landroid/view/View;

.field private pos:Landroid/widget/TextView;

.field private sbValue:Landroid/widget/SeekBar;

.field private suffix:Ljava/lang/String;

.field private tabRorate:Lcom/fimi/app/x8s/widget/X8TabHost;

.field private tvBindPoint:Landroid/widget/TextView;

.field private tvDvOrientation:Landroid/widget/TextView;

.field private tvGbOrientation:Landroid/widget/TextView;

.field private tvHeight:Landroid/widget/TextView;

.field private v4xSlow:Landroid/view/View;

.field private v5sPhoto:Landroid/view/View;

.field private vHover:Landroid/view/View;

.field private vNa:Landroid/view/View;

.field private vOnePhoto:Landroid/view/View;

.field private vRecord:Landroid/view/View;

.field private vThreePhoto:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ILcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mode"    # I
    .param p4, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p5, "mapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .param p6, "controller"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    .line 60
    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 61
    const/16 v0, 0x78

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->MAX:I

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->MIN:I

    .line 64
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->MAX:I

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->MIN:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->SB_MAX:I

    .line 379
    iput v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->count:I

    .line 78
    iput p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mode:I

    .line 79
    iput-object p5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .line 80
    iput-object p4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 81
    iput-object p6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->controller:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .line 82
    if-nez p3, :cond_1

    .line 84
    iget-boolean v0, p4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_point_interest_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "rootView":Landroid/view/View;
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    .line 104
    :goto_0
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->isShowMetric:Z

    .line 105
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->isShowMetric:Z

    if-eqz v0, :cond_4

    const-string v0, "M"

    :goto_1
    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->suffix:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    iget-boolean v1, p4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->initView(Landroid/view/View;Z)V

    .line 107
    iget-boolean v0, p4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->initAction(Z)V

    .line 108
    invoke-virtual {p0, p4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setMapPointLatLng(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 109
    return-void

    .line 89
    .restart local p2    # "rootView":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_point_value_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "rootView":Landroid/view/View;
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    goto :goto_0

    .line 91
    .restart local p2    # "rootView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 93
    iget-boolean v0, p4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_point_interest_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "rootView":Landroid/view/View;
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    goto :goto_0

    .line 98
    .restart local p2    # "rootView":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_curve_value_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "rootView":Landroid/view/View;
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    goto :goto_0

    .line 102
    .restart local p2    # "rootView":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_point_value_2fpv_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "rootView":Landroid/view/View;
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "FT"

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnAll:Landroid/widget/Button;

    return-object v0
.end method

.method private initAction(Z)V
    .locals 1
    .param p1, "isIntertestPoint"    # Z

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vNa:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vHover:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vRecord:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->v4xSlow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vOnePhoto:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->v5sPhoto:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vThreePhoto:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->minus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->plus:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private initView(Landroid/view/View;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isIntertestPoint"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 128
    sget v3, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnOk:Landroid/widget/Button;

    .line 129
    sget v3, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_pos:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->pos:Landroid/widget/TextView;

    .line 130
    sget v3, Lcom/fimi/app/x8s/R$id;->tv_height:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvHeight:Landroid/widget/TextView;

    .line 131
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->minus:Landroid/view/View;

    .line 132
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->plus:Landroid/view/View;

    .line 133
    sget v3, Lcom/fimi/app/x8s/R$id;->sb_value:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    .line 134
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->SB_MAX:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 135
    if-nez p2, :cond_3

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "i":I
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_ai_item1:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vNa:Landroid/view/View;

    .line 139
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_line_action_na:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgNa:Landroid/widget/ImageView;

    .line 140
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgNa:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    .line 141
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_ai_item2:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vHover:Landroid/view/View;

    .line 142
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_line_action_hover:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgHover:Landroid/widget/ImageView;

    .line 143
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgHover:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    .line 144
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_ai_item3:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vRecord:Landroid/view/View;

    .line 145
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_line_action_record:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgRecord:Landroid/widget/ImageView;

    .line 146
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgRecord:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    .line 147
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_ai_item4:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->v4xSlow:Landroid/view/View;

    .line 148
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_lind_action_4xslow:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->img4xSlow:Landroid/widget/ImageView;

    .line 149
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->img4xSlow:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    .line 150
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_ai_item5:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vOnePhoto:Landroid/view/View;

    .line 151
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_lind_action_one_photo:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgOnePhoto:Landroid/widget/ImageView;

    .line 152
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgOnePhoto:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    .line 153
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_ai_item6:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->v5sPhoto:Landroid/view/View;

    .line 154
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_lind_action_5s_photo:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->img5sPhoto:Landroid/widget/ImageView;

    .line 155
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->img5sPhoto:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    .line 156
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_ai_item7:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->vThreePhoto:Landroid/view/View;

    .line 157
    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_lind_three_photo:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgThreePhoto:Landroid/widget/ImageView;

    .line 158
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->imgThreePhoto:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    .line 160
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mode:I

    if-ne v3, v7, :cond_1

    .line 162
    sget v3, Lcom/fimi/app/x8s/R$id;->tv_ai_line_dv_orientation_value:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvDvOrientation:Landroid/widget/TextView;

    .line 163
    sget v3, Lcom/fimi/app/x8s/R$id;->tv_ai_line_gb_orientation_value:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvGbOrientation:Landroid/widget/TextView;

    .line 164
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_ai_line_rorate:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tabRorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 165
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tabRorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v4, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 166
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tabRorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v4, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$1;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)V

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 177
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->controller:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getOration()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 179
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_rorate:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .end local v1    # "i":I
    :goto_0
    return-void

    .line 182
    .restart local v1    # "i":I
    :cond_0
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_rorate:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 186
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_ai_line_bind_point:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvBindPoint:Landroid/widget/TextView;

    .line 187
    sget v3, Lcom/fimi/app/x8s/R$id;->ryv_ai_line_point:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 188
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 189
    .local v2, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 190
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 191
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->lablesPointEvent()V

    goto :goto_0

    .line 195
    .end local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_2
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_ai_line_bind_point:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvBindPoint:Landroid/widget/TextView;

    .line 196
    sget v3, Lcom/fimi/app/x8s/R$id;->ryv_ai_line_point:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 197
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 198
    .restart local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 199
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 200
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 201
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_ai_line_rorate:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tabRorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 202
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tabRorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v4, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 203
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tabRorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    new-instance v4, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$2;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)V

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/widget/X8TabHost;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;)V

    .line 210
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->lablesPointEvent()V

    goto/16 :goto_0

    .line 214
    .end local v1    # "i":I
    .end local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_3
    sget v3, Lcom/fimi/app/x8s/R$id;->btn_x8_ai_line_bind_point:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnAll:Landroid/widget/Button;

    .line 215
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnAll:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_ai_line_bind_point:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvBindPoint:Landroid/widget/TextView;

    .line 218
    sget v3, Lcom/fimi/app/x8s/R$id;->ryv_ai_line_point:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 219
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 220
    .restart local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 221
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 222
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 224
    sget v3, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_interest_point_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v5, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->lablesInterestEvent()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getProgressString(I)Ljava/lang/String;
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 345
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-double v2, p1

    :goto_0
    const/4 v1, 0x1

    .line 344
    invoke-static {v2, v3, v1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "v":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 345
    .end local v0    # "v":Ljava/lang/String;
    :cond_0
    int-to-float v1, p1

    invoke-static {v1}, Lcom/fimi/x8sdk/util/UnityUtil;->meterToFoot(F)F

    move-result v1

    float-to-double v2, v1

    goto :goto_0
.end method

.method public lablesInterestEvent()V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 382
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getMapPointList()Ljava/util/List;

    move-result-object v2

    .line 383
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 384
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvBindPoint:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnAll:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 450
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    .line 389
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->count:I

    .line 390
    const/4 v3, 0x0

    .line 391
    .local v3, "selectCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 392
    new-instance v0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-direct {v0}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;-><init>()V

    .line 393
    .local v0, "entity":Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 394
    .local v4, "temp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v5, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v5, :cond_2

    .line 396
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v5, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v5, v6, :cond_1

    .line 398
    invoke-virtual {v0, v8}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    .line 399
    add-int/lit8 v3, v3, 0x1

    .line 408
    :goto_2
    iget v5, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setnPos(I)V

    .line 409
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    .line 403
    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->count:I

    goto :goto_2

    .line 406
    :cond_2
    invoke-virtual {v0, v9}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    goto :goto_2

    .line 413
    .end local v0    # "entity":Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
    .end local v4    # "temp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    new-instance v5, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-direct {v5, v6, v7, v8}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    .line 414
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    new-instance v6, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)V

    invoke-virtual {v5, v6}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setOnItemClickListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;)V

    .line 442
    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->count:I

    if-ne v5, v3, :cond_4

    .line 443
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnAll:Landroid/widget/Button;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_bind_interest_unselect:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v5, v8}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setAll(Z)V

    .line 449
    :goto_3
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 446
    :cond_4
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnAll:Landroid/widget/Button;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_bind_interest_select:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v5, v9}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setAll(Z)V

    goto :goto_3
.end method

.method public lablesPointEvent()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 475
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getInterestPointList()Ljava/util/List;

    move-result-object v2

    .line 476
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    .line 478
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 479
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvBindPoint:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    :goto_0
    return-void

    .line 482
    :cond_0
    const/4 v3, -0x1

    .line 483
    .local v3, "selectIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 484
    new-instance v0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-direct {v0}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;-><init>()V

    .line 485
    .local v0, "entity":Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 486
    .local v4, "temp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v5, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-nez v5, :cond_1

    .line 487
    invoke-virtual {v0, v8}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    .line 496
    :goto_2
    iget v5, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setnPos(I)V

    .line 497
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 489
    :cond_1
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v5, v5, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-ne v5, v4, :cond_2

    .line 490
    move v3, v1

    .line 491
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    goto :goto_2

    .line 493
    :cond_2
    invoke-virtual {v0, v8}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    goto :goto_2

    .line 499
    .end local v0    # "entity":Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
    .end local v4    # "temp":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    :cond_3
    new-instance v5, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-direct {v5, v6, v7, v8}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    .line 500
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 501
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v5, v3}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setSelectIndex(I)V

    .line 503
    :cond_4
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    new-instance v6, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)V

    invoke-virtual {v5, v6}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setOnItemClickListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;)V

    .line 521
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 233
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_ai_item1:I

    if-ne v0, v1, :cond_1

    .line 234
    iput v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 235
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setSelect(I)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_ai_item2:I

    if-ne v0, v1, :cond_2

    .line 237
    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 238
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setSelect(I)V

    goto :goto_0

    .line 239
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_ai_item3:I

    if-ne v0, v1, :cond_3

    .line 240
    const/4 v1, 0x2

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 241
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setSelect(I)V

    goto :goto_0

    .line 242
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_ai_item4:I

    if-ne v0, v1, :cond_4

    .line 243
    iput v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 244
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setSelect(I)V

    goto :goto_0

    .line 245
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_ai_item5:I

    if-ne v0, v1, :cond_5

    .line 246
    const/4 v1, 0x4

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 247
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setSelect(I)V

    goto :goto_0

    .line 248
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_ai_item6:I

    if-ne v0, v1, :cond_6

    .line 249
    const/4 v1, 0x5

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 250
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setSelect(I)V

    goto :goto_0

    .line 251
    :cond_6
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_ai_item7:I

    if-ne v0, v1, :cond_7

    .line 252
    const/4 v1, 0x6

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 253
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setSelect(I)V

    goto :goto_0

    .line 254
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_minus:I

    if-ne v0, v1, :cond_8

    .line 255
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 258
    :cond_8
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_plus:I

    if-ne v0, v1, :cond_9

    .line 259
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->SB_MAX:I

    if-eq v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 262
    :cond_9
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_e

    .line 265
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-boolean v1, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-eqz v1, :cond_a

    .line 267
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->saveInterestBindPoint()V

    .line 280
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->MIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 281
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mode:I

    if-ne v1, v5, :cond_d

    .line 282
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    const/4 v2, -0x1

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    .line 286
    :goto_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iput-boolean v4, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isActionSave:Z

    .line 287
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->controller:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v2, v2, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->onChangeMarkerAltitude(F)V

    .line 288
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->controller:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeNextUi(Z)V

    goto/16 :goto_0

    .line 269
    :cond_a
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mode:I

    if-nez v1, :cond_b

    .line 271
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->savePointBindInterest()V

    .line 273
    :cond_b
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mode:I

    if-ne v1, v5, :cond_c

    .line 274
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    goto :goto_1

    .line 276
    :cond_c
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tabRorate:Lcom/fimi/app/x8s/widget/X8TabHost;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v2

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->roration:I

    goto :goto_1

    .line 284
    :cond_d
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    goto :goto_2

    .line 289
    :cond_e
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_x8_ai_line_bind_point:I

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->isAll()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 291
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->onSelectAll(Z)V

    goto/16 :goto_0

    .line 293
    :cond_f
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->onSelectAll(Z)V

    goto/16 :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvHeight:Landroid/widget/TextView;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->MIN:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->getProgressString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method public onSelectAll(Z)V
    .locals 6
    .param p1, "isAll"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 300
    if-eqz p1, :cond_1

    move v1, v3

    .line 301
    .local v1, "state":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getState()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    .line 303
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    .line 301
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "state":I
    :cond_1
    move v1, v4

    .line 300
    goto :goto_0

    .line 307
    .restart local v0    # "i":I
    .restart local v1    # "state":I
    :cond_2
    if-eqz p1, :cond_3

    .line 308
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnAll:Landroid/widget/Button;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_bind_interest_unselect:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setAll(Z)V

    .line 314
    :goto_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->notifyDataSetChanged()V

    .line 315
    return-void

    .line 311
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnAll:Landroid/widget/Button;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_bind_interest_select:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-virtual {v2, v4}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setAll(Z)V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 336
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 341
    return-void
.end method

.method public saveInterestBindPoint()V
    .locals 5

    .prologue
    .line 453
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "i":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    .line 456
    .local v0, "entity":Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 458
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->updateInterestBindPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;I)V

    .line 464
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 465
    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 460
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-virtual {v3, v4, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->updateInterestBindPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;I)V

    goto :goto_1

    .line 466
    .end local v0    # "entity":Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->addSmallMarkerByInterest()V

    .line 467
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->updateInterestPoint()V

    .line 470
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public savePointBindInterest()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 526
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 527
    const/4 v2, -0x1

    .line 528
    .local v2, "nPos":I
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mEntityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    .line 529
    .local v0, "entity":Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getnPos()I

    move-result v2

    .line 535
    .end local v0    # "entity":Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 537
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v3, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v3, :cond_2

    .line 538
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-virtual {v3, v4, v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->notityChangeView(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 540
    :cond_2
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 554
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->notityChangeView(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 555
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->addSmallMarkerByInterest()V

    .line 559
    .end local v2    # "nPos":I
    :cond_3
    return-void

    .line 542
    .restart local v2    # "nPos":I
    :cond_4
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getInterestPointList()Ljava/util/List;

    move-result-object v1

    .line 543
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v3, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v3, v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 548
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-virtual {v3, v4, v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->notityChangeView(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V

    .line 550
    :cond_5
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iput-object v3, v4, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .line 552
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mapPointLatLng:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    iget-object v6, v6, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->mInrertestPoint:Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-virtual {v4, v5, v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->getPointAngle(Lcom/fimi/app/x8s/map/model/MapPointLatLng;Lcom/fimi/app/x8s/map/model/MapPointLatLng;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->setAngle(F)V

    goto :goto_0
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 563
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 564
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnOk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setMapPointLatLng(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 9
    .param p1, "mapPointLatLng"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    const/4 v8, 0x1

    .line 350
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvHeight:Landroid/widget/TextView;

    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    float-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->getProgressString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->sbValue:Landroid/widget/SeekBar;

    iget v5, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    float-to-int v5, v5

    iget v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->MIN:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 352
    iget-boolean v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isActionSave:Z

    if-nez v4, :cond_2

    .line 354
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 355
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnOk:Landroid/widget/Button;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_confirm:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_0
    iget-boolean v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->isIntertestPoint:Z

    if-nez v4, :cond_0

    .line 364
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->pos:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->nPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget v4, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->action:I

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    .line 367
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->index:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->setSelect(I)V

    .line 368
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->mode:I

    if-ne v4, v8, :cond_0

    .line 369
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvDvOrientation:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->angle:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u00b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getGimbalState()Lcom/fimi/x8sdk/modulestate/GimbalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/GimbalState;->getPitchAngle()I

    move-result v3

    .line 371
    .local v3, "pitchAngle":I
    iput v3, p1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->gimbalPitch:I

    .line 372
    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v0, v4, v6

    .line 373
    .local v0, "angle":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v8}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u00b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "angleStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->tvGbOrientation:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .end local v0    # "angle":D
    .end local v2    # "angleStr":Ljava/lang/String;
    .end local v3    # "pitchAngle":I
    :cond_0
    return-void

    .line 357
    :cond_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnOk:Landroid/widget/Button;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_point_action_add:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 360
    :cond_2
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->btnOk:Landroid/widget/Button;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_point_action_update:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setSelect(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 319
    if-ne p1, v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 318
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->arraysView:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 325
    :cond_1
    return-void
.end method
