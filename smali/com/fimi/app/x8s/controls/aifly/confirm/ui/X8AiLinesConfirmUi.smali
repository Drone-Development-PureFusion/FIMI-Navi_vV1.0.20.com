.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;
.super Lcom/fimi/app/x8s/interfaces/AbsX8BaseConnectView;
.source "X8AiLinesConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private btnOk:Landroid/view/View;

.field private cbTip:Landroid/widget/CheckBox;

.field private contentView:Landroid/view/View;

.field private imgFlag:Landroid/widget/ImageView;

.field private imgReturn:Landroid/view/View;

.field private listener:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private mCurveSettingPonit:Landroid/widget/ImageView;

.field private mFlyPoint:Landroid/widget/ImageView;

.field private mHistory:Landroid/widget/ImageView;

.field private mLlSecondItemSelect:Landroid/widget/LinearLayout;

.field private mStraightSettingPonit:Landroid/widget/ImageView;

.field private mTvCurveSettingPoint:Landroid/widget/TextView;

.field private mTvFlyPoint:Landroid/widget/TextView;

.field private mTvHistory:Landroid/widget/TextView;

.field private mTvStraightSettingPonit:Landroid/widget/TextView;

.field private mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private menuIndex:I

.field private svTips:Landroid/widget/ScrollView;

.field private tvContentTip1:Landroid/widget/TextView;

.field private tvTip1:Landroid/widget/TextView;

.field private tvTip2:Landroid/widget/TextView;

.field private tvTip3:Landroid/widget/TextView;

.field private tvTip4:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private vConfirm:Landroid/view/View;

.field private vItemSelect:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8BaseConnectView;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 54
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->activity:Landroid/app/Activity;

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_lines_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->initViews(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->initActions()V

    .line 59
    return-void
.end method


# virtual methods
.method public initActions()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->imgReturn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mStraightSettingPonit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mCurveSettingPonit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mFlyPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 66
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->imgReturn:Landroid/view/View;

    .line 67
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->btnOk:Landroid/view/View;

    .line 68
    sget v0, Lcom/fimi/app/x8s/R$id;->cb_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->cbTip:Landroid/widget/CheckBox;

    .line 69
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->vConfirm:Landroid/view/View;

    .line 70
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTitle:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvContentTip1:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_straight_line_setting_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mStraightSettingPonit:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_curve_setting_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mCurveSettingPonit:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_fly_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mFlyPoint:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_line_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mHistory:Landroid/widget/ImageView;

    .line 79
    sget v0, Lcom/fimi/app/x8s/R$id;->ll_ai_line_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->vItemSelect:Landroid/view/View;

    .line 80
    sget v0, Lcom/fimi/app/x8s/R$id;->sv_ai_items:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->svTips:Landroid/widget/ScrollView;

    .line 81
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_line_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->imgFlag:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_straight_line_setting_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvStraightSettingPonit:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_curve_setting_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvCurveSettingPoint:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_fly_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvFlyPoint:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_line_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvHistory:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->vItemSelect:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->vConfirm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_route:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->isConect:Z

    if-eqz v0, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->isInSky:Z

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->isLowpower:Z

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->setFcHeart(ZZ)V

    .line 106
    :goto_0
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTip1:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTip2:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTip3:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTip4:Landroid/widget/TextView;

    .line 110
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mStraightSettingPonit:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mCurveSettingPonit:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mFlyPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvStraightSettingPonit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvCurveSettingPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvFlyPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvHistory:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 125
    .local v7, "id":I
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v7, v0, :cond_2

    .line 126
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->svTips:Landroid/widget/ScrollView;

    const/16 v10, 0x21

    invoke-virtual {v0, v10}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->vItemSelect:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->vConfirm:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_route:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_2
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v7, v0, :cond_a

    .line 138
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->cbTip:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiLineCourse(Z)V

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v10, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onLinesConfirmOkClick(I)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiLineCourse(Z)V

    goto :goto_1

    .line 145
    :cond_4
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->cbTip:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiLineCourseFpv(Z)V

    .line 151
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v10, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onLinesConfirmOkClick(I)V

    goto :goto_0

    .line 149
    :cond_5
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiLineCourseFpv(Z)V

    goto :goto_2

    .line 152
    :cond_6
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    const/4 v10, 0x3

    if-ne v0, v10, :cond_8

    .line 153
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->cbTip:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiLineCourseHistory(Z)V

    .line 158
    :goto_3
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->activity:Landroid/app/Activity;

    const-class v10, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->activity:Landroid/app/Activity;

    const v10, 0xf4241

    invoke-virtual {v0, v8, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 156
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiLineCourseHistory(Z)V

    goto :goto_3

    .line 160
    :cond_8
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    const/4 v10, 0x4

    if-ne v0, v10, :cond_0

    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->cbTip:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 162
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiLineCurve(Z)V

    .line 166
    :goto_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v10, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onLinesConfirmOkClick(I)V

    goto/16 :goto_0

    .line 164
    :cond_9
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiLineCurve(Z)V

    goto :goto_4

    .line 170
    :cond_a
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_straight_line_setting_point:I

    if-ne v7, v0, :cond_c

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    .line 172
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourse()Z

    move-result v0

    if-nez v0, :cond_b

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v10, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onLinesConfirmOkClick(I)V

    .line 185
    :goto_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->btnOk:Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 175
    :cond_b
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_setting_point_model:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip11:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "s":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "content1":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip12:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "content2":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip13:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "content3":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip14:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "content4":Ljava/lang/String;
    sget v6, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_map:I

    .local v6, "res":I
    move-object v0, p0

    .line 183
    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->onSelectItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 186
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "content1":Ljava/lang/String;
    .end local v3    # "content2":Ljava/lang/String;
    .end local v4    # "content3":Ljava/lang/String;
    .end local v5    # "content4":Ljava/lang/String;
    .end local v6    # "res":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_c
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_fly_point:I

    if-ne v7, v0, :cond_e

    .line 187
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    .line 188
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseFpv()Z

    move-result v0

    if-nez v0, :cond_d

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v10, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onLinesConfirmOkClick(I)V

    goto/16 :goto_0

    .line 191
    :cond_d
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_vedio_model:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .restart local v1    # "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip21:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "content1":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip12:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3    # "content2":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip13:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    .restart local v4    # "content3":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip14:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    .restart local v5    # "content4":Ljava/lang/String;
    sget v6, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_fpv:I

    .restart local v6    # "res":I
    move-object v0, p0

    .line 197
    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->onSelectItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "content1":Ljava/lang/String;
    .end local v3    # "content2":Ljava/lang/String;
    .end local v4    # "content3":Ljava/lang/String;
    .end local v5    # "content4":Ljava/lang/String;
    .end local v6    # "res":I
    :cond_e
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_line_history:I

    if-ne v7, v0, :cond_10

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    .line 201
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseHistory()Z

    move-result v0

    if-nez v0, :cond_f

    .line 202
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->activity:Landroid/app/Activity;

    const-class v10, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .restart local v8    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->activity:Landroid/app/Activity;

    const v10, 0xf4241

    invoke-virtual {v0, v8, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 205
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_f
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_history:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip31:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .restart local v2    # "content1":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip32:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    .restart local v3    # "content2":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip33:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    .restart local v4    # "content3":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_tip34:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    .restart local v5    # "content4":Ljava/lang/String;
    sget v6, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_history:I

    .restart local v6    # "res":I
    move-object v0, p0

    .line 211
    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->onSelectItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 214
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "content1":Ljava/lang/String;
    .end local v3    # "content2":Ljava/lang/String;
    .end local v4    # "content3":Ljava/lang/String;
    .end local v5    # "content4":Ljava/lang/String;
    .end local v6    # "res":I
    :cond_10
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_curve_setting_point:I

    if-ne v7, v0, :cond_0

    .line 215
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    .line 216
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCurve()Z

    move-result v0

    if-nez v0, :cond_11

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v10, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onLinesConfirmOkClick(I)V

    .line 227
    :goto_6
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->btnOk:Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 219
    :cond_11
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_setting_curve_model:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .restart local v1    # "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_setting_curve_tip1:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2    # "content1":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_setting_curve_tip2:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    .restart local v3    # "content2":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_setting_curve_tip3:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    .restart local v4    # "content3":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_setting_curve_tip4:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .restart local v5    # "content4":Ljava/lang/String;
    sget v6, Lcom/fimi/app/x8s/R$drawable;->x8_img_ai_line_curve_map:I

    .restart local v6    # "res":I
    move-object v0, p0

    .line 225
    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->onSelectItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public onSelectItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content1"    # Ljava/lang/String;
    .param p3, "content2"    # Ljava/lang/String;
    .param p4, "content3"    # Ljava/lang/String;
    .param p5, "content4"    # Ljava/lang/String;
    .param p6, "res"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->vItemSelect:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->vConfirm:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->imgFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p6}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTip1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTip2:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTip3:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->tvTip4:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 5
    .param p1, "inSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mStraightSettingPonit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mCurveSettingPonit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mFlyPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvStraightSettingPonit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvCurveSettingPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvHistory:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mTvFlyPoint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->menuIndex:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 255
    if-eqz p2, :cond_2

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 268
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 254
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 261
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 262
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 0
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .line 63
    return-void
.end method
