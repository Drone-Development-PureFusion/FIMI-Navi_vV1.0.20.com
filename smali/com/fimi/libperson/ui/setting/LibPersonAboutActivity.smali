.class public Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;
.super Lcom/fimi/libperson/BasePersonActivity;
.source "LibPersonAboutActivity.java"

# interfaces
.implements Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;


# instance fields
.field isLogin:Z

.field private libpersonBtnRepeal:Landroid/widget/Button;

.field private libpersonTvVersions:Landroid/widget/TextView;

.field mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

.field private mLvMainSetting:Landroid/widget/ListView;

.field private mPersettingThirdAdapt:Lcom/fimi/libperson/adapter/PersettingThirdAdapt;

.field private mThirdListerner:Landroid/widget/AdapterView$OnItemClickListener;

.field private mThirdPersonSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/libperson/entity/PersonSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleView:Lcom/fimi/libperson/widget/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/fimi/libperson/BasePersonActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->isLogin:Z

    .line 167
    new-instance v0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;-><init>(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mThirdListerner:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mThirdPersonSettings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method private initListView()V
    .locals 8

    .prologue
    .line 105
    invoke-static {}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->values()[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v3, v5, v4

    .line 106
    .local v3, "state":Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;
    const/4 v0, 0x1

    .line 108
    .local v0, "isAdd":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v7, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mMainState:[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 109
    sget-object v7, Lcom/fimi/libperson/adapter/PersonSettingAdapt;->mMainState:[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aget-object v7, v7, v1

    if-ne v3, v7, :cond_2

    .line 110
    const/4 v0, 0x0

    .line 115
    :cond_0
    if-eqz v0, :cond_1

    .line 116
    new-instance v2, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-direct {v2}, Lcom/fimi/libperson/entity/PersonSetting;-><init>()V

    .line 117
    .local v2, "setting":Lcom/fimi/libperson/entity/PersonSetting;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/fimi/libperson/entity/PersonSetting;->setIsOPen(Ljava/lang/Boolean;)V

    .line 118
    invoke-virtual {v2, v3}, Lcom/fimi/libperson/entity/PersonSetting;->setSettingAdaptState(Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;)V

    .line 105
    .end local v2    # "setting":Lcom/fimi/libperson/entity/PersonSetting;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "isAdd":Z
    .end local v1    # "j":I
    .end local v3    # "state":Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "fimiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->isLogin:Z

    .line 92
    sget v1, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/libperson/widget/TitleView;

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 93
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$string;->libperson_about:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 94
    sget v1, Lcom/fimi/libperson/R$id;->lv_main_setting:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mLvMainSetting:Landroid/widget/ListView;

    .line 95
    sget v1, Lcom/fimi/libperson/R$id;->libperson_tv_versions:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->libpersonTvVersions:Landroid/widget/TextView;

    .line 96
    sget v1, Lcom/fimi/libperson/R$id;->libperson_btn_repeal:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->libpersonBtnRepeal:Landroid/widget/Button;

    .line 97
    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->libpersonBtnRepeal:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->isLogin:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->libpersonTvVersions:Landroid/widget/TextView;

    aput-object v5, v4, v3

    sget v3, Lcom/fimi/libperson/R$id;->libperson_tv_rights_reserved:I

    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->libpersonBtnRepeal:Landroid/widget/Button;

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 99
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->libpersonTvVersions:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$string;->app_product_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$string;->app_version:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void

    :cond_0
    move v1, v3

    .line 91
    goto/16 :goto_0

    .line 97
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->libpersonBtnRepeal:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;-><init>(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/fimi/libperson/R$layout;->libperson_activity_about:I

    return v0
.end method

.method public goWebActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "web_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "web_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->overridePendingTransition(II)V

    .line 191
    return-void
.end method

.method public initData()V
    .locals 6

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->initView()V

    .line 70
    invoke-direct {p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->initListView()V

    .line 71
    new-instance v2, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;

    invoke-direct {v2, p0}, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mPersettingThirdAdapt:Lcom/fimi/libperson/adapter/PersettingThirdAdapt;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mThirdPersonSettings:Ljava/util/List;

    .line 73
    invoke-static {}, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->values()[Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 75
    .local v1, "state":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;
    iget-boolean v5, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->isLogin:Z

    if-nez v5, :cond_0

    sget-object v5, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->USER_RIGHT:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    invoke-virtual {v1, v5}, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-direct {v0}, Lcom/fimi/libperson/entity/PersonSetting;-><init>()V

    .line 79
    .local v0, "setting":Lcom/fimi/libperson/entity/PersonSetting;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fimi/libperson/entity/PersonSetting;->setIsOPen(Ljava/lang/Boolean;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/fimi/libperson/entity/PersonSetting;->setThirdAdapt(Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;)V

    .line 81
    iget-object v5, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mThirdPersonSettings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v0    # "setting":Lcom/fimi/libperson/entity/PersonSetting;
    .end local v1    # "state":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;
    :cond_1
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mPersettingThirdAdapt:Lcom/fimi/libperson/adapter/PersettingThirdAdapt;

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mThirdPersonSettings:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/fimi/libperson/adapter/PersettingThirdAdapt;->setData(Ljava/util/List;)V

    .line 84
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mLvMainSetting:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mPersettingThirdAdapt:Lcom/fimi/libperson/adapter/PersettingThirdAdapt;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mLvMainSetting:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mThirdListerner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    .line 87
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/libperson/BasePersonActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    const/16 v0, 0x271a

    if-ne p1, v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->recreate()V

    .line 199
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_user_detail"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->removeKey(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string/jumbo v1, "user_protocol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 214
    const-class v0, Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->readyGoThenKillAllActivity(Ljava/lang/Class;)V

    .line 215
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/fimi/libperson/BasePersonActivity;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setOnLoadListener(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 60
    return-void
.end method
