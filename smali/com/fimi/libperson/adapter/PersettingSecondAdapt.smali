.class public Lcom/fimi/libperson/adapter/PersettingSecondAdapt;
.super Landroid/widget/BaseAdapter;
.source "PersettingSecondAdapt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;,
        Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;
    }
.end annotation


# instance fields
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/libperson/adapter/PersettingSecondAdapt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/adapter/PersettingSecondAdapt;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private resetDefaultView(Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 120
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mIvArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$dimen;->person_setting_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p1, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mRlBg:Landroid/widget/RelativeLayout;

    sget v1, Lcom/fimi/libperson/R$drawable;->person_listview_item_shape_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 125
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "holder":Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;
    if-nez p2, :cond_1

    .line 66
    new-instance v0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;
    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;-><init>(Lcom/fimi/libperson/adapter/PersettingSecondAdapt;Lcom/fimi/libperson/adapter/PersettingSecondAdapt$1;)V

    .line 67
    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;
    invoke-virtual {v0, p3}, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->initView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v6, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mList:Ljava/util/List;

    if-nez v6, :cond_2

    .line 116
    :cond_0
    :goto_1
    return-object p2

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;
    check-cast v0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;

    .restart local v0    # "holder":Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->resetDefaultView(Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v6, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v6}, Lcom/fimi/libperson/entity/PersonSetting;->getSecondAdapt()Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;

    move-result-object v4

    .line 77
    .local v4, "positionIndex":Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;
    sget-object v6, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;->SERVICE:Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;

    if-ne v4, v6, :cond_6

    .line 78
    iget-object v6, v0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v7, Lcom/fimi/libperson/R$string;->libperson_service_setting_title:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 79
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v6

    const-string v7, "service_item_key"

    const-class v8, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v6, v7, v8}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/kernel/region/ServiceItem;

    .line 81
    .local v5, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    const/4 v2, 0x0

    .line 82
    .local v2, "isInfo":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Lcom/fimi/kernel/region/ServiceItem;->getServicename()[I

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 83
    invoke-static {}, Lcom/fimi/kernel/region/ServiceItem;->getServicename()[I

    move-result-object v6

    aget v6, v6, v1

    invoke-virtual {v5}, Lcom/fimi/kernel/region/ServiceItem;->getInfo()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 84
    const/4 v2, 0x1

    .line 89
    :cond_3
    if-eqz v2, :cond_5

    .line 90
    iget-object v6, v0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/fimi/kernel/region/ServiceItem;->getInfo()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    :cond_5
    iget-object v6, v0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mContext:Landroid/content/Context;

    sget v8, Lcom/fimi/kernel/R$string;->region_Mainland_China:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 94
    .end local v1    # "i":I
    .end local v2    # "isInfo":Z
    .end local v5    # "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    :cond_6
    sget-object v6, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;->LANGUAGE:Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;

    if-ne v4, v6, :cond_0

    .line 95
    iget-object v6, v0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mTvItemTitle:Landroid/widget/TextView;

    sget v7, Lcom/fimi/libperson/R$string;->person_setting_language:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 96
    invoke-static {}, Lcom/fimi/kernel/utils/LanguageUtil;->getCurrentLanguage()Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v3

    .line 97
    .local v3, "languageModel":Lcom/fimi/kernel/language/LanguageModel;
    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageName()I

    move-result v6

    sget v7, Lcom/fimi/libperson/R$string;->kernal_simplified_chinese:I

    if-eq v6, v7, :cond_7

    .line 98
    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageName()I

    move-result v6

    sget v7, Lcom/fimi/libperson/R$string;->kernal_english:I

    if-eq v6, v7, :cond_7

    .line 99
    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageName()I

    move-result v6

    sget v7, Lcom/fimi/libperson/R$string;->kernal_korean:I

    if-eq v6, v7, :cond_7

    .line 100
    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageName()I

    move-result v6

    sget v7, Lcom/fimi/libperson/R$string;->kernal_spanish:I

    if-eq v6, v7, :cond_7

    .line 101
    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "zh_CN"

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 102
    sget v6, Lcom/fimi/libperson/R$string;->kernal_simplified_chinese:I

    invoke-virtual {v3, v6}, Lcom/fimi/kernel/language/LanguageModel;->setLanguageName(I)V

    .line 114
    :cond_7
    :goto_3
    iget-object v6, v0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$ViewHolder;->mTvContent:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageName()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 103
    :cond_8
    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "en_US"

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 104
    sget v6, Lcom/fimi/libperson/R$string;->kernal_english:I

    invoke-virtual {v3, v6}, Lcom/fimi/kernel/language/LanguageModel;->setLanguageName(I)V

    goto :goto_3

    .line 105
    :cond_9
    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "ko-KR"

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 106
    sget v6, Lcom/fimi/libperson/R$string;->kernal_korean:I

    invoke-virtual {v3, v6}, Lcom/fimi/kernel/language/LanguageModel;->setLanguageName(I)V

    goto :goto_3

    .line 107
    :cond_a
    invoke-virtual {v3}, Lcom/fimi/kernel/language/LanguageModel;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "es-ES"

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 108
    sget v6, Lcom/fimi/libperson/R$string;->kernal_spanish:I

    invoke-virtual {v3, v6}, Lcom/fimi/kernel/language/LanguageModel;->setLanguageName(I)V

    goto :goto_3

    .line 110
    :cond_b
    sget v6, Lcom/fimi/libperson/R$string;->kernal_simplified_chinese:I

    invoke-virtual {v3, v6}, Lcom/fimi/kernel/language/LanguageModel;->setLanguageName(I)V

    goto :goto_3
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
    .line 58
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/libperson/entity/PersonSetting;>;"
    iput-object p1, p0, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->mList:Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->notifyDataSetChanged()V

    .line 60
    return-void
.end method
