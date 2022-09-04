.class public Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;
.super Lcom/fimi/libperson/BasePersonActivity;
.source "PersonSettingNewActivity.java"

# interfaces
.implements Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;
.implements Lcom/fimi/apk/iview/IApkVerisonView;
.implements Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;


# instance fields
.field private isRequestNewVersion:Z

.field private mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

.field private mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

.field private mBtnBack:Landroid/widget/Button;

.field private mFourListerner:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFourPersonSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/libperson/entity/PersonSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mIvHead:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mLvFirstSetting:Landroid/widget/ListView;

.field private mLvFourSetting:Landroid/widget/ListView;

.field private mLvSecondSetting:Landroid/widget/ListView;

.field private mLvThirdSetting:Landroid/widget/ListView;

.field private mPersettingFourAdapt:Lcom/fimi/libperson/adapter/PersettingFourAdapt;

.field private mPersettingSecondAdapt:Lcom/fimi/libperson/adapter/PersettingSecondAdapt;

.field private mSecondListerner:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSecondPersonSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/libperson/entity/PersonSetting;",
            ">;"
        }
    .end annotation
.end field

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

.field private mTvId:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private rlLoginNow:Landroid/widget/RelativeLayout;

.field private rlPersonTitle:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/fimi/libperson/BasePersonActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->isRequestNewVersion:Z

    .line 229
    new-instance v0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$3;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$3;-><init>(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mSecondListerner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 256
    new-instance v0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$4;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$4;-><init>(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mFourListerner:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->go2LoginAboutBigImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mSecondPersonSettings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Ljava/lang/Class;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->readyGoForResult(Ljava/lang/Class;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$502(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->isRequestNewVersion:Z

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mFourPersonSettings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private go2LoginAboutBigImage()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    invoke-virtual {v0, p0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setOnLoadListener(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;)V

    .line 113
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    const-string v1, "login_bg.jpg"

    invoke-static {v1}, Lcom/fimi/libperson/entity/ImageSource;->asset(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setImage(Lcom/fimi/libperson/entity/ImageSource;Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method private handleUserType(Lcom/fimi/kernel/Constants$UserType;Ljava/lang/String;)V
    .locals 6
    .param p1, "userType"    # Lcom/fimi/kernel/Constants$UserType;
    .param p2, "fimiId"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 90
    sget-object v1, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$6;->$SwitchMap$com$fimi$kernel$Constants$UserType:[I

    invoke-virtual {p1}, Lcom/fimi/kernel/Constants$UserType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mIvHead:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "res"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget v3, Lcom/fimi/libperson/R$drawable;->icon_person_setting_head_unlogin:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 93
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->rlLoginNow:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/network/entity/UserDto;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTvName:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTvId:Landroid/widget/TextView;

    sget v2, Lcom/fimi/libperson/R$string;->person_setting_fimi_id:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mIvHead:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/network/entity/UserDto;->getUserImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/FrescoImageLoader;->display(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->rlLoginNow:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initListView()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 152
    sget v3, Lcom/fimi/libperson/R$id;->lv_second_setting:I

    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mLvSecondSetting:Landroid/widget/ListView;

    .line 153
    new-instance v3, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mPersettingSecondAdapt:Lcom/fimi/libperson/adapter/PersettingSecondAdapt;

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mSecondPersonSettings:Ljava/util/List;

    .line 155
    invoke-static {}, Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;->values()[Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v5, v3

    .line 156
    .local v2, "state":Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;
    const/4 v0, 0x1

    .line 157
    .local v0, "isAdd":Z
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-direct {v1}, Lcom/fimi/libperson/entity/PersonSetting;-><init>()V

    .line 159
    .local v1, "setting":Lcom/fimi/libperson/entity/PersonSetting;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fimi/libperson/entity/PersonSetting;->setIsOPen(Ljava/lang/Boolean;)V

    .line 160
    invoke-virtual {v1, v2}, Lcom/fimi/libperson/entity/PersonSetting;->setSecondAdapt(Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;)V

    .line 161
    iget-object v7, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mSecondPersonSettings:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v1    # "setting":Lcom/fimi/libperson/entity/PersonSetting;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "isAdd":Z
    .end local v2    # "state":Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;
    :cond_1
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mPersettingSecondAdapt:Lcom/fimi/libperson/adapter/PersettingSecondAdapt;

    iget-object v5, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mSecondPersonSettings:Ljava/util/List;

    invoke-virtual {v3, v5}, Lcom/fimi/libperson/adapter/PersettingSecondAdapt;->setData(Ljava/util/List;)V

    .line 165
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mLvSecondSetting:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mPersettingSecondAdapt:Lcom/fimi/libperson/adapter/PersettingSecondAdapt;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mLvSecondSetting:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mSecondListerner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    sget v3, Lcom/fimi/libperson/R$id;->lv_four_setting:I

    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mLvFourSetting:Landroid/widget/ListView;

    .line 186
    new-instance v3, Lcom/fimi/libperson/adapter/PersettingFourAdapt;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/adapter/PersettingFourAdapt;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mPersettingFourAdapt:Lcom/fimi/libperson/adapter/PersettingFourAdapt;

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mFourPersonSettings:Ljava/util/List;

    .line 188
    invoke-static {}, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;->values()[Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v2, v5, v3

    .line 189
    .local v2, "state":Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
    const/4 v0, 0x1

    .line 190
    .restart local v0    # "isAdd":Z
    if-eqz v0, :cond_2

    .line 191
    new-instance v1, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-direct {v1}, Lcom/fimi/libperson/entity/PersonSetting;-><init>()V

    .line 192
    .restart local v1    # "setting":Lcom/fimi/libperson/entity/PersonSetting;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fimi/libperson/entity/PersonSetting;->setIsOPen(Ljava/lang/Boolean;)V

    .line 193
    invoke-virtual {v1, v2}, Lcom/fimi/libperson/entity/PersonSetting;->setFourAdapt(Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;)V

    .line 194
    iget-object v7, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mFourPersonSettings:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v1    # "setting":Lcom/fimi/libperson/entity/PersonSetting;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "isAdd":Z
    .end local v2    # "state":Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
    :cond_3
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mPersettingFourAdapt:Lcom/fimi/libperson/adapter/PersettingFourAdapt;

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mFourPersonSettings:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->setData(Ljava/util/List;)V

    .line 198
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mLvFourSetting:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mPersettingFourAdapt:Lcom/fimi/libperson/adapter/PersettingFourAdapt;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mLvFourSetting:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mFourListerner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    return-void
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBtnBack:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;-><init>(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 289
    sget v0, Lcom/fimi/libperson/R$layout;->activity_person_new_setting:I

    return v0
.end method

.method public goWebActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "web_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v1, "web_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->overridePendingTransition(II)V

    .line 285
    return-void
.end method

.method public haveUpdate(Z)V
    .locals 4
    .param p1, "isUpdate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mFourPersonSettings:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/entity/PersonSetting;->setIsOPen(Ljava/lang/Boolean;)V

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mPersettingFourAdapt:Lcom/fimi/libperson/adapter/PersettingFourAdapt;

    invoke-virtual {v0}, Lcom/fimi/libperson/adapter/PersettingFourAdapt;->notifyDataSetChanged()V

    .line 348
    return-void

    .line 341
    :cond_0
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->isRequestNewVersion:Z

    if-eqz v0, :cond_1

    .line 342
    iput-boolean v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->isRequestNewVersion:Z

    .line 343
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/fimi/libperson/R$string;->person_setting_check_updated_content:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mFourPersonSettings:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/entity/PersonSetting;->setIsOPen(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public initData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 118
    sget v2, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/libperson/widget/TitleView;

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 119
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 120
    sget v2, Lcom/fimi/libperson/R$id;->iv_head:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mIvHead:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 121
    sget v2, Lcom/fimi/libperson/R$id;->btn_back:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBtnBack:Landroid/widget/Button;

    .line 122
    sget v2, Lcom/fimi/libperson/R$id;->tv_name:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTvName:Landroid/widget/TextView;

    .line 123
    sget v2, Lcom/fimi/libperson/R$id;->tv_id:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTvId:Landroid/widget/TextView;

    .line 124
    sget v2, Lcom/fimi/libperson/R$id;->rl_person_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->rlPersonTitle:Landroid/widget/RelativeLayout;

    .line 125
    sget v2, Lcom/fimi/libperson/R$id;->rl_login_now:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->rlLoginNow:Landroid/widget/RelativeLayout;

    .line 126
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTvName:Landroid/widget/TextView;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTvId:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 127
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "fimiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/fimi/kernel/Constants$UserType;->Guest:Lcom/fimi/kernel/Constants$UserType;

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->handleUserType(Lcom/fimi/kernel/Constants$UserType;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->rlPersonTitle:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$1;-><init>(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    .line 140
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    invoke-virtual {v2, p0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setOnLoadListener(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;)V

    .line 141
    invoke-direct {p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->initListView()V

    .line 142
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v2}, Lcom/fimi/libperson/widget/TitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;

    .line 144
    .local v1, "params":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    iget v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->statusBarHeight:I

    iget v3, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->marginStatus:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v6, v2, v6, v6}, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 145
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v2, v1}, Lcom/fimi/libperson/widget/TitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-direct {v2, p0, p0}, Lcom/fimi/apk/presenter/ApkVersionPrenster;-><init>(Landroid/content/Context;Lcom/fimi/apk/iview/IApkVerisonView;)V

    iput-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    .line 147
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-virtual {v2}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->getOnlineNewApkFileInfo()V

    .line 148
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-virtual {v2, p0}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->setOnApkUpdateListerner(Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;)V

    .line 149
    return-void

    .line 128
    .end local v1    # "params":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    :cond_0
    sget-object v2, Lcom/fimi/kernel/Constants$UserType;->Register:Lcom/fimi/kernel/Constants$UserType;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 308
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/libperson/BasePersonActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 309
    const/16 v0, 0x271a

    if-ne p1, v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->recreate()V

    .line 312
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_user_detail"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->removeKey(Ljava/lang/String;)V

    .line 295
    const-class v0, Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->readyGoThenKillAllActivity(Ljava/lang/Class;)V

    .line 296
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Lcom/fimi/libperson/BasePersonActivity;->onDestroy()V

    .line 301
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setOnLoadListener(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;)V

    .line 304
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 352
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->finish()V

    .line 355
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fimi/libperson/BasePersonActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 82
    return-void
.end method

.method public showNewApkVersionDialog(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V
    .locals 7
    .param p1, "dto"    # Lcom/fimi/network/entity/ApkVersionDto;
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Lcom/fimi/widget/DialogManager;

    sget v1, Lcom/fimi/sdk/R$string;->fimi_sdk_app_update_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {p1}, Lcom/fimi/network/entity/ApkVersionDto;->getUpdcontents()Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/fimi/sdk/R$string;->fimi_sdk_update_now:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/fimi/sdk/R$string;->fimi_sdk_update_ignore:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    .local v0, "dialogManagerUpdate":Lcom/fimi/widget/DialogManager;
    new-instance v1, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$5;-><init>(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setClickOutIsCancle(Z)V

    .line 333
    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    .line 334
    return-void
.end method
