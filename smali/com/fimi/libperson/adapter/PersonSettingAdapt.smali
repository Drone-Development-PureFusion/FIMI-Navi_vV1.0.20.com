.class public Lcom/fimi/libperson/adapter/PersonSettingAdapt;
.super Landroid/widget/BaseAdapter;
.source "PersonSettingAdapt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;,
        Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;
    }
.end annotation


# static fields
.field public static mMainState:[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;


# instance fields
.field private isSub:Z

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/libperson/entity/PersonSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->UAV_INSURANCE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->MESSAGE_NOTICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->VERSION_UPDATE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->CLEAN_CACHE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->GO_TO_APP_STORE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->BLACK1:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->SERVICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->LANGUAGE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->BLACK2:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mMainState:[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->isSub:Z

    .line 33
    iput-object p1, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/libperson/adapter/PersonSettingAdapt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/adapter/PersonSettingAdapt;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private resetDefaultView(Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mViewDivide:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$dimen;->person_setting_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSettingPosition(Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;)I
    .locals 3
    .param p1, "settingAdaptState"    # Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v2}, Lcom/fimi/libperson/entity/PersonSetting;->getSettingAdaptState()Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 169
    move v1, v0

    .line 173
    :cond_0
    return v1

    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "holder":Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;
    if-nez p2, :cond_1

    .line 76
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;
    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;-><init>(Lcom/fimi/libperson/adapter/PersonSettingAdapt;Lcom/fimi/libperson/adapter/PersonSettingAdapt$1;)V

    .line 77
    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;
    invoke-virtual {v0, p3}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->initView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    if-nez v3, :cond_2

    .line 132
    :cond_0
    :goto_1
    return-object p2

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;
    check-cast v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;

    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->resetDefaultView(Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v3, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v3}, Lcom/fimi/libperson/entity/PersonSetting;->getSettingAdaptState()Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    move-result-object v2

    .line 87
    .local v2, "positionIndex":Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->UAV_INSURANCE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_3

    .line 88
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_uav_insurance:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 89
    :cond_3
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->MESSAGE_NOTICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_4

    .line 90
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_message_notice:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v3, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    sget-object v4, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->MESSAGE_NOTICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->getSettingPosition(Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v3}, Lcom/fimi/libperson/entity/PersonSetting;->getContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v4, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    sget-object v5, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->MESSAGE_NOTICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    invoke-virtual {p0, v5}, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->getSettingPosition(Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v3}, Lcom/fimi/libperson/entity/PersonSetting;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 96
    :cond_4
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->VERSION_UPDATE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_7

    .line 97
    iget-object v3, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    sget-object v4, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->VERSION_UPDATE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->getSettingPosition(Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v3}, Lcom/fimi/libperson/entity/PersonSetting;->getIsOPen()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 98
    iget-object v3, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    sget-object v4, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->VERSION_UPDATE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->getSettingPosition(Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v3}, Lcom/fimi/libperson/entity/PersonSetting;->isDisplayTv()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_version_update:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 102
    :cond_6
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 106
    :cond_7
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->CLEAN_CACHE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_8

    .line 107
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_clean_cache:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v4, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    sget-object v5, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->CLEAN_CACHE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    invoke-virtual {p0, v5}, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->getSettingPosition(Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v3}, Lcom/fimi/libperson/entity/PersonSetting;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 110
    :cond_8
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->GO_TO_APP_STORE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_9

    .line 111
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_go_to_app_store:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 112
    :cond_9
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->USER_AGREEMENT:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_a

    .line 113
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mViewDivide:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_user_agreement:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 115
    :cond_a
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->USER_PRIVACY:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_b

    .line 116
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_user_privacy:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 117
    :cond_b
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->SERVICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_c

    .line 118
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mViewDivide:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_service:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 120
    :cond_c
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->LANGUAGE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_d

    .line 121
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_language:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 123
    :cond_d
    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->BLACK1:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-eq v2, v3, :cond_e

    sget-object v3, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->BLACK2:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    if-ne v2, v3, :cond_0

    .line 124
    :cond_e
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mViewDivide:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 127
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$dimen;->person_setting_height1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v3, v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    sget v4, Lcom/fimi/libperson/R$color;->person_setting_bg:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/libperson/entity/PersonSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/libperson/entity/PersonSetting;>;"
    iput-object p1, p0, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mList:Ljava/util/List;

    .line 69
    invoke-virtual {p0}, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->notifyDataSetChanged()V

    .line 70
    return-void
.end method
