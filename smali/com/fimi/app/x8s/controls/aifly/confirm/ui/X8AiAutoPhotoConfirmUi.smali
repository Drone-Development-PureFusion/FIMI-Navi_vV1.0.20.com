.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;
.super Ljava/lang/Object;
.source "X8AiAutoPhotoConfirmUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnOk:Landroid/view/View;

.field private cbTip:Landroid/widget/CheckBox;

.field private contentView:Landroid/view/View;

.field private imgFlag:Landroid/widget/ImageView;

.field private imgReturn:Landroid/view/View;

.field private listener:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field private menuIndex:I

.field private svTips:Landroid/widget/ScrollView;

.field private tvContentTip1:Landroid/widget/TextView;

.field private tvPhoto1:Landroid/view/View;

.field private tvPhoto2:Landroid/view/View;

.field private tvTitle:Landroid/widget/TextView;

.field private vConfirm:Landroid/view/View;

.field private vItem1:Landroid/view/View;

.field private vItem2:Landroid/view/View;

.field private vItemSelect:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_auto_photo_confirm_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->initViews(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->initActions()V

    .line 40
    return-void
.end method


# virtual methods
.method public initActions()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->imgReturn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->btnOk:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vItem1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vItem2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 47
    sget v0, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->imgReturn:Landroid/view/View;

    .line 48
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->btnOk:Landroid/view/View;

    .line 49
    sget v0, Lcom/fimi/app/x8s/R$id;->cb_ai_follow_confirm_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->cbTip:Landroid/widget/CheckBox;

    .line 50
    sget v0, Lcom/fimi/app/x8s/R$id;->sv_ai_items:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->svTips:Landroid/widget/ScrollView;

    .line 52
    sget v0, Lcom/fimi/app/x8s/R$id;->ll_ai_autophoto_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vItemSelect:Landroid/view/View;

    .line 53
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_autophoto_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vConfirm:Landroid/view/View;

    .line 54
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->tvTitle:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_follow_confirm_title1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->tvContentTip1:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_photo1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vItem1:Landroid/view/View;

    .line 57
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_ai_photo2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vItem2:Landroid/view/View;

    .line 59
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_photo1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->tvPhoto1:Landroid/view/View;

    .line 60
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_ai_photo2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->tvPhoto2:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vItemSelect:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vConfirm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_auto_photo:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v0, Lcom/fimi/app/x8s/R$id;->img_auto_photo_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->imgFlag:Landroid/widget/ImageView;

    .line 66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 79
    .local v1, "id":I
    sget v4, Lcom/fimi/app/x8s/R$id;->img_ai_follow_return:I

    if-ne v1, v4, :cond_2

    .line 80
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    if-nez v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iput v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    .line 84
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->svTips:Landroid/widget/ScrollView;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 85
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vItemSelect:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vConfirm:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->tvTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_auto_photo:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_2
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v1, v4, :cond_7

    .line 91
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    if-ne v4, v5, :cond_5

    .line 92
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->cbTip:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiAutoPhotoCustomCourse(Z)V

    .line 104
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onAutoPhotoConfirmOk(I)V

    goto :goto_0

    .line 95
    :cond_4
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiAutoPhotoCustomCourse(Z)V

    goto :goto_1

    .line 97
    :cond_5
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    if-ne v4, v7, :cond_3

    .line 98
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->cbTip:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiAutoPhotoVerticalCourse(Z)V

    goto :goto_1

    .line 101
    :cond_6
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/config/X8AiConfig;->setAiAutoPhotoVerticalCourse(Z)V

    goto :goto_1

    .line 105
    :cond_7
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_ai_photo1:I

    if-ne v1, v4, :cond_9

    .line 106
    iput v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    .line 107
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoCustomCourse()Z

    move-result v4

    if-nez v4, :cond_8

    .line 108
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onAutoPhotoConfirmOk(I)V

    goto/16 :goto_0

    .line 110
    :cond_8
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_tip1:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "content":Ljava/lang/String;
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_auto_photo_h_flag:I

    .line 113
    .local v2, "res":I
    invoke-virtual {p0, v3, v0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->onSelectItem(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "res":I
    .end local v3    # "title":Ljava/lang/String;
    :cond_9
    sget v4, Lcom/fimi/app/x8s/R$id;->rl_ai_photo2:I

    if-ne v1, v4, :cond_0

    .line 116
    iput v7, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    .line 117
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoVerticalCourse()Z

    move-result v4

    if-nez v4, :cond_a

    .line 118
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->menuIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onAutoPhotoConfirmOk(I)V

    goto/16 :goto_0

    .line 120
    :cond_a
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_vertical_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    .restart local v3    # "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_vertical_tip1:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0    # "content":Ljava/lang/String;
    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_auto_photo_vertical_flag:I

    .line 123
    .restart local v2    # "res":I
    invoke-virtual {p0, v3, v0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->onSelectItem(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onSelectItem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "res"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vItemSelect:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->vConfirm:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->tvContentTip1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->imgFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 138
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->btnOk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 0
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoConfirmUi;->mX8MainAiFlyController:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .line 44
    return-void
.end method
