.class public abstract Lcom/fimi/kernel/base/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/fimi/kernel/base/BaseApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initGlobalConfig()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/fimi/kernel/GlobalConfig$Builder;

    invoke-direct {v0}, Lcom/fimi/kernel/GlobalConfig$Builder;-><init>()V

    .line 40
    .local v0, "builder":Lcom/fimi/kernel/GlobalConfig$Builder;
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    const-string v3, "select_languagetype"

    const-class v4, Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/language/LanguageModel;

    .line 41
    .local v1, "model":Lcom/fimi/kernel/language/LanguageModel;
    if-nez v1, :cond_0

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/fimi/kernel/utils/LanguageUtil;->getLanguageModel(Ljava/util/Locale;)Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v1

    .line 47
    :cond_0
    invoke-virtual {v0, v1}, Lcom/fimi/kernel/GlobalConfig$Builder;->setLanguageModel(Lcom/fimi/kernel/language/LanguageModel;)Lcom/fimi/kernel/GlobalConfig$Builder;

    .line 48
    invoke-static {}, Lcom/fimi/kernel/GlobalConfig;->getInstance()Lcom/fimi/kernel/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fimi/kernel/GlobalConfig;->init(Lcom/fimi/kernel/GlobalConfig$Builder;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lcom/fimi/kernel/FimiAppContext;->initKernel(Landroid/content/Context;)V

    .line 65
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 66
    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/base/BaseApplication;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseApplication;->initGlobalConfig()V

    .line 33
    return-void
.end method
