.class public Lcom/fimi/app/ui/SplashActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "SplashActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashActivity"


# instance fields
.field private final Skip_Time:J

.field private final Skip_What:I

.field private mApkVersionManager:Lcom/fimi/network/ApkVersionManager;

.field private mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

.field mTvBottom:Landroid/widget/TextView;

.field mTvTitle:Lcom/fimi/widget/LetterSpacingTextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/ui/SplashActivity;->Skip_What:I

    .line 63
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/fimi/app/ui/SplashActivity;->Skip_Time:J

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/ui/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/ui/SplashActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fimi/app/ui/SplashActivity;->getFwDetail()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/ui/SplashActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/SplashActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/ui/SplashActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/SplashActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/ui/SplashActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/SplashActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/ui/SplashActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/SplashActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/ui/SplashActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/ui/SplashActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/fimi/app/ui/SplashActivity;->readyGoThenKill(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$600(Lcom/fimi/app/ui/SplashActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/ui/SplashActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/fimi/app/ui/SplashActivity;->readyGoThenKill(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$700(Lcom/fimi/app/ui/SplashActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/ui/SplashActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/fimi/app/ui/SplashActivity;->readyGoThenKill(Ljava/lang/Class;)V

    return-void
.end method

.method private getFwDetail()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Lcom/fimi/network/FwManager;

    invoke-direct {v0}, Lcom/fimi/network/FwManager;-><init>()V

    .line 220
    .local v0, "x9FwManager":Lcom/fimi/network/FwManager;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/app/ui/SplashActivity$3;

    invoke-direct {v2, p0}, Lcom/fimi/app/ui/SplashActivity$3;-><init>(Lcom/fimi/app/ui/SplashActivity;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, v1}, Lcom/fimi/network/FwManager;->getX9FwNetDetail(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 243
    return-void
.end method

.method private getSpannableString()Landroid/text/SpannableString;
    .locals 7

    .prologue
    const v6, 0x7f0f0097

    const/16 v5, 0x21

    .line 251
    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f080503

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 253
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 255
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0098

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x9

    const/16 v4, 0x15

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 257
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x16

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 257
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 259
    return-object v0
.end method


# virtual methods
.method public doTrans()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/fimi/app/ui/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/fimi/app/ui/SplashActivity;->finish()V

    .line 213
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/ui/SplashActivity;->isTaskRoot()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/fimi/app/ui/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 116
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/fimi/app/ui/SplashActivity;->finish()V

    goto :goto_0

    .line 123
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "fimiId":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    :goto_1
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    const-string/jumbo v4, "x9_grahpic_hint"

    invoke-virtual {v3, v4, v6}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 133
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    const-string v4, "sp_key_update_check"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 134
    new-instance v3, Lcom/fimi/app/ui/SplashActivity$1;

    invoke-direct {v3, p0}, Lcom/fimi/app/ui/SplashActivity$1;-><init>(Lcom/fimi/app/ui/SplashActivity;)V

    invoke-static {v3}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 140
    new-instance v3, Lcom/fimi/app/ui/SplashActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/fimi/app/ui/SplashActivity$2;-><init>(Lcom/fimi/app/ui/SplashActivity;Ljava/lang/String;)V

    const-wide/16 v4, 0x5dc

    .line 208
    invoke-virtual {v3, v6, v4, v5}, Lcom/fimi/app/ui/SplashActivity$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/ui/SplashActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    .line 130
    iget-object v3, p0, Lcom/fimi/app/ui/SplashActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    const-string v4, "login_bg.jpg"

    invoke-static {v4}, Lcom/fimi/libperson/entity/ImageSource;->asset(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setImage(Lcom/fimi/libperson/entity/ImageSource;Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 247
    const v0, 0x7f040026

    return v0
.end method

.method public getMetaDataInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 97
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 102
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public initData()V
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/16 v1, 0x400

    .line 77
    invoke-virtual {p0}, Lcom/fimi/app/ui/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 79
    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/fimi/app/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/widget/LetterSpacingTextView;

    iput-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mTvTitle:Lcom/fimi/widget/LetterSpacingTextView;

    .line 80
    sget-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v1, Lcom/fimi/host/common/ProductEnum;->X8S:Lcom/fimi/host/common/ProductEnum;

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mTvTitle:Lcom/fimi/widget/LetterSpacingTextView;

    invoke-virtual {p0}, Lcom/fimi/app/ui/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08040a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/widget/LetterSpacingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lcom/fimi/app/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mTvBottom:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mTvBottom:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fimi/app/ui/SplashActivity;->getSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/fimi/app/ui/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/app/ui/SplashActivity;->mTvTitle:Lcom/fimi/widget/LetterSpacingTextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fimi/app/ui/SplashActivity;->mTvBottom:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 87
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    .line 88
    iget-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    const-string v1, "login_bg.jpg"

    invoke-static {v1}, Lcom/fimi/libperson/entity/ImageSource;->asset(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setImage(Lcom/fimi/libperson/entity/ImageSource;Landroid/content/Context;)V

    .line 89
    const v0, 0x7f1000ff

    invoke-virtual {p0, v0}, Lcom/fimi/app/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080504

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v1}, Lcom/fimi/app/ui/SplashActivity;->getMetaDataInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 90
    new-instance v0, Lcom/fimi/network/ApkVersionManager;

    invoke-direct {v0}, Lcom/fimi/network/ApkVersionManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/ui/SplashActivity;->mApkVersionManager:Lcom/fimi/network/ApkVersionManager;

    .line 91
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
