.class public Lcom/fimi/libperson/ui/me/login/LoginActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/fimi/libperson/ivew/IThirdLoginView;
.implements Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field mBtnLogin:Landroid/widget/Button;

.field mBtnRegister:Landroid/widget/Button;

.field private mDialogManager:Lcom/fimi/widget/DialogManager;

.field mIvFacebook:Landroid/widget/ImageView;

.field mIvLogo:Landroid/widget/ImageView;

.field mIvMi:Landroid/widget/ImageView;

.field mIvTwitter:Landroid/widget/ImageView;

.field private mLargeView:Lcom/fimi/libperson/widget/LargeView;

.field private mLoginPresenter:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

.field private mRegionManage:Lcom/fimi/kernel/language/RegionManage;

.field mRlLogin:Landroid/widget/RelativeLayout;

.field mTvNoLogin:Landroid/widget/TextView;

.field mTvRegion:Landroid/widget/TextView;

.field rlFimiLogin:Landroid/widget/RelativeLayout;

.field rlThirdLogin:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/me/login/LoginActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Lcom/fimi/widget/DialogManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mDialogManager:Lcom/fimi/widget/DialogManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/me/login/LoginActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/me/login/LoginActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/libperson/ui/me/login/LoginActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Lcom/fimi/libperson/presenter/ThirdLoginPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLoginPresenter:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/libperson/ui/me/login/LoginActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->readyGoThenKillAllActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSpannableString()Landroid/text/SpannableString;
    .locals 9

    .prologue
    const/16 v8, 0x21

    .line 429
    new-instance v4, Lcom/fimi/kernel/language/RegionManage;

    invoke-direct {v4}, Lcom/fimi/kernel/language/RegionManage;-><init>()V

    iput-object v4, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mRegionManage:Lcom/fimi/kernel/language/RegionManage;

    .line 430
    invoke-static {}, Lcom/fimi/kernel/region/ServiceItem;->getServicename()[I

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mRegionManage:Lcom/fimi/kernel/language/RegionManage;

    invoke-virtual {v5}, Lcom/fimi/kernel/language/RegionManage;->getCountryType()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "string":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/libperson/R$string;->libperson_select:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "str1":Ljava/lang/String;
    move-object v2, v3

    .line 434
    .local v2, "str2":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 435
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/fimi/libperson/R$color;->libperson_region_label:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 437
    new-instance v4, Lcom/fimi/libperson/ui/me/login/LoginActivity$11;

    invoke-direct {v4, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$11;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    .line 449
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 437
    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 450
    return-object v0
.end method

.method private getSpannableStringSecurity()Landroid/text/SpannableString;
    .locals 11

    .prologue
    const/16 v10, 0x21

    .line 377
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service_login:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "str1":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service2_login:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "str2":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service3:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "str3":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service4_login:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "str4":Ljava/lang/String;
    iget-object v6, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    sget v7, Lcom/fimi/libperson/R$string;->register_select_service6:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "str6":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 383
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->libperson_ecurity_label:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 385
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->libperson_ecurity_label:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 386
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 385
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 387
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/fimi/libperson/R$color;->libperson_ecurity_label:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 387
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 389
    new-instance v6, Lcom/fimi/libperson/ui/me/login/LoginActivity$9;

    invoke-direct {v6, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$9;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 389
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 402
    new-instance v6, Lcom/fimi/libperson/ui/me/login/LoginActivity$10;

    invoke-direct {v6, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$10;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    .line 415
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 402
    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 417
    return-object v0
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$1;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mBtnRegister:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$2;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mIvFacebook:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$3;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mIvTwitter:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$4;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mIvMi:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$5;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvNoLogin:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$6;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvRegion:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$7;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$7;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 275
    sget v0, Lcom/fimi/libperson/R$layout;->activity_login:I

    return v0
.end method

.method public goWebActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "web_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string/jumbo v1, "web_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 425
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->overridePendingTransition(II)V

    .line 426
    return-void
.end method

.method public initData()V
    .locals 8

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 77
    sget v0, Lcom/fimi/libperson/R$id;->iv_logo:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mIvLogo:Landroid/widget/ImageView;

    .line 80
    sget v0, Lcom/fimi/libperson/R$id;->btn_login:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    .line 81
    sget v0, Lcom/fimi/libperson/R$id;->btn_register:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mBtnRegister:Landroid/widget/Button;

    .line 82
    sget v0, Lcom/fimi/libperson/R$id;->iv_twitter:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mIvTwitter:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/fimi/libperson/R$id;->iv_facebook:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mIvFacebook:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcom/fimi/libperson/R$id;->iv_mi:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mIvMi:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/fimi/libperson/R$id;->rl_login:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mRlLogin:Landroid/widget/RelativeLayout;

    .line 87
    sget v0, Lcom/fimi/libperson/R$id;->tv_no_login:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvNoLogin:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/fimi/libperson/R$id;->tv_region:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvRegion:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvRegion:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    sget v0, Lcom/fimi/libperson/R$id;->rl_third_login:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->rlThirdLogin:Landroid/widget/RelativeLayout;

    .line 91
    sget v0, Lcom/fimi/libperson/R$id;->rl_fimi_login:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->rlFimiLogin:Landroid/widget/RelativeLayout;

    .line 97
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mBtnRegister:Landroid/widget/Button;

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvRegion:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvNoLogin:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 99
    sget-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v1, Lcom/fimi/host/common/ProductEnum;->X8S:Lcom/fimi/host/common/ProductEnum;

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvNoLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    new-instance v0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;-><init>(Lcom/fimi/libperson/ivew/IThirdLoginView;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLoginPresenter:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    .line 109
    sget v0, Lcom/fimi/libperson/R$id;->large_view:I

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/widget/LargeView;

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLargeView:Lcom/fimi/libperson/widget/LargeView;

    .line 110
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLargeView:Lcom/fimi/libperson/widget/LargeView;

    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/LargeView;->setImage(Landroid/graphics/Bitmap;)V

    .line 111
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setOnLoadListener(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;)V

    .line 113
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v0

    const-string v1, "login_bg.jpg"

    invoke-static {v1}, Lcom/fimi/libperson/entity/ImageSource;->asset(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setImage(Lcom/fimi/libperson/entity/ImageSource;Landroid/content/Context;)V

    .line 117
    :cond_0
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_select_service_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getSpannableStringSecurity()Landroid/text/SpannableString;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$string;->ensure:I

    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$string;->cancel:I

    invoke-virtual {p0, v5}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mDialogManager:Lcom/fimi/widget/DialogManager;

    .line 118
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mDialogManager:Lcom/fimi/widget/DialogManager;

    invoke-virtual {v0, v7}, Lcom/fimi/widget/DialogManager;->setClickOutIsCancle(Z)V

    .line 119
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mDialogManager:Lcom/fimi/widget/DialogManager;

    invoke-virtual {v0, v7}, Lcom/fimi/widget/DialogManager;->setSpan(Z)V

    .line 121
    return-void

    .line 103
    :cond_1
    sput-boolean v7, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 104
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->rlFimiLogin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    .local v6, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {p0, v0}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 106
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvNoLogin:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public loginSuccess()V
    .locals 2

    .prologue
    .line 343
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 344
    const-string v1, "activity://app.main"

    invoke-static {p0, v1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 345
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->readyGoThenKillAllActivity(Landroid/content/Intent;)V

    .line 346
    return-void
.end method

.method public loginThirdListener(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {}, Lcom/fimi/widget/NetworkLoadManage;->dismiss()V

    .line 322
    if-eqz p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-eqz p2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 310
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/kernel/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 311
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mTvRegion:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLoginPresenter:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLargeView:Lcom/fimi/libperson/widget/LargeView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLargeView:Lcom/fimi/libperson/widget/LargeView;

    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/LargeView;->setImage(Landroid/graphics/Bitmap;)V

    .line 460
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 352
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLargeView:Lcom/fimi/libperson/widget/LargeView;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mLargeView:Lcom/fimi/libperson/widget/LargeView;

    invoke-virtual {v0}, Lcom/fimi/libperson/widget/LargeView;->setRecyle()V

    .line 355
    :cond_0
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setRecyle()V

    .line 356
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onPause()V

    .line 367
    invoke-static {}, Lcom/fimi/widget/NetworkLoadManage;->dismiss()V

    .line 368
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onResume()V

    .line 288
    sget-boolean v0, Lcom/fimi/kernel/Constants;->isShowUserProtocol:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string/jumbo v1, "user_protocol"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mDialogManager:Lcom/fimi/widget/DialogManager;

    new-instance v1, Lcom/fimi/libperson/ui/me/login/LoginActivity$8;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/me/login/LoginActivity$8;-><init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 301
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity;->mDialogManager:Lcom/fimi/widget/DialogManager;

    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    .line 302
    sput-boolean v2, Lcom/fimi/kernel/Constants;->isShowUserProtocol:Z

    .line 306
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 374
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 360
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onStop()V

    .line 361
    invoke-static {}, Lcom/fimi/widget/NetworkLoadManage;->dismiss()V

    .line 362
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public updateProgress(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-static {p0}, Lcom/fimi/widget/NetworkLoadManage;->show(Landroid/content/Context;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {}, Lcom/fimi/widget/NetworkLoadManage;->dismiss()V

    goto :goto_0
.end method
