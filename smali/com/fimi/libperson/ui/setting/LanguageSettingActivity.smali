.class public Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;
.super Lcom/fimi/libperson/BasePersonActivity;
.source "LanguageSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private adapter:Lcom/fimi/libperson/adapter/LanguageAdapter;

.field currPosition:I

.field private languageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/language/LanguageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

.field private mTitleView:Lcom/fimi/libperson/widget/TitleView;

.field private selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fimi/libperson/BasePersonActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity$1;-><init>(Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->restart()V

    return-void
.end method

.method private initListener()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 61
    sget v1, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/libperson/widget/TitleView;

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 62
    sget v1, Lcom/fimi/libperson/R$id;->lv_l_setting_setting:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mListView:Landroid/widget/ListView;

    .line 63
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1}, Lcom/fimi/libperson/widget/TitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;

    .line 64
    .local v0, "params":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    iget v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->statusBarHeight:I

    iget v2, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->marginStatus:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v5, v1, v5, v5}, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1, v0}, Lcom/fimi/libperson/widget/TitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    sget v2, Lcom/fimi/libperson/R$string;->language_setting_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/fimi/widget/NetworkDialog;

    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/sdk/R$style;->network_load_progress_dialog:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/fimi/widget/NetworkDialog;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    .line 68
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v1, v5}, Lcom/fimi/widget/NetworkDialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v1, v5}, Lcom/fimi/widget/NetworkDialog;->setCancelable(Z)V

    .line 70
    return-void
.end method

.method private restart()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->finish()V

    .line 133
    return-void
.end method


# virtual methods
.method public doTrans()V
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    const-string v4, "select_languagetype"

    const-class v5, Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v3, v4, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/kernel/language/LanguageModel;

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    .line 85
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    if-nez v3, :cond_0

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/fimi/kernel/utils/LanguageUtil;->getLanguageModel(Ljava/util/Locale;)Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    .line 88
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->languageItems:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/fimi/kernel/language/LanguageItem;->languageModels:[Lcom/fimi/kernel/language/LanguageModel;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 90
    new-instance v1, Lcom/fimi/kernel/language/LanguageItem;

    invoke-direct {v1}, Lcom/fimi/kernel/language/LanguageItem;-><init>()V

    .line 91
    .local v1, "item":Lcom/fimi/kernel/language/LanguageItem;
    sget-object v3, Lcom/fimi/kernel/language/LanguageItem;->languageModels:[Lcom/fimi/kernel/language/LanguageModel;

    aget-object v2, v3, v0

    .line 92
    .local v2, "model":Lcom/fimi/kernel/language/LanguageModel;
    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageName()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/language/LanguageItem;->setInfo(I)V

    .line 93
    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/language/LanguageItem;->setCode(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v4}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v4}, Lcom/fimi/kernel/language/LanguageModel;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/language/LanguageItem;->setSelect(Z)V

    .line 97
    iput v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->currPosition:I

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->languageItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "item":Lcom/fimi/kernel/language/LanguageItem;
    .end local v2    # "model":Lcom/fimi/kernel/language/LanguageModel;
    :cond_2
    new-instance v3, Lcom/fimi/libperson/adapter/LanguageAdapter;

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->languageItems:Ljava/util/List;

    invoke-direct {v3, v4, p0}, Lcom/fimi/libperson/adapter/LanguageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->adapter:Lcom/fimi/libperson/adapter/LanguageAdapter;

    .line 102
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->adapter:Lcom/fimi/libperson/adapter/LanguageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/fimi/libperson/R$layout;->activity_user_language_setting:I

    return v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->initView()V

    .line 79
    invoke-direct {p0}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->initListener()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/fimi/libperson/BasePersonActivity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/NetworkDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/NetworkDialog;->dismiss()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->onSelectLanguage(I)V

    .line 140
    return-void
.end method

.method public onSelectLanguage(I)V
    .locals 4
    .param p1, "choseType"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->currPosition:I

    if-ne p1, v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 118
    :cond_0
    iput p1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->currPosition:I

    .line 119
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/NetworkDialog;->show()V

    .line 120
    sget-object v0, Lcom/fimi/kernel/language/LanguageItem;->languageModels:[Lcom/fimi/kernel/language/LanguageModel;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    .line 121
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v1}, Lcom/fimi/kernel/language/LanguageModel;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LanguageUtil;->changeAppLanguage(Landroid/content/Context;Ljava/util/Locale;)V

    .line 122
    invoke-static {}, Lcom/fimi/kernel/GlobalConfig;->getInstance()Lcom/fimi/kernel/GlobalConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/GlobalConfig;->setLanguageModel(Lcom/fimi/kernel/language/LanguageModel;)V

    .line 123
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "select_languagetype"

    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->selectedLanguageModel:Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LanguageSettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 58
    return-void
.end method
