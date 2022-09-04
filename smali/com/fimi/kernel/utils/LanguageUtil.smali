.class public Lcom/fimi/kernel/utils/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# static fields
.field public static final ZH_SERVER:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TW"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HK"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/utils/LanguageUtil;->ZH_SERVER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {}, Lcom/fimi/kernel/GlobalConfig;->getInstance()Lcom/fimi/kernel/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/GlobalConfig;->getLanguageModel()Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v0

    .line 85
    .local v0, "model":Lcom/fimi/kernel/language/LanguageModel;
    invoke-virtual {v0}, Lcom/fimi/kernel/language/LanguageModel;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/fimi/kernel/utils/LanguageUtil;->attachBaseContext(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method public static attachBaseContext(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/LanguageUtil;->updateResources(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static changeAppLanguage(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setLocale"    # Ljava/util/Locale;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 32
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 33
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 34
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p1}, Lcom/fimi/kernel/utils/LanguageUtil;->getLocaleByLanguage(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 35
    .local v2, "locale":Ljava/util/Locale;
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 36
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 37
    new-instance v3, Landroid/os/LocaleList;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-direct {v3, v5}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 38
    .local v3, "localeList":Landroid/os/LocaleList;
    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 41
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 43
    .end local v3    # "localeList":Landroid/os/LocaleList;
    :cond_0
    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 44
    return-void
.end method

.method public static getCurrentLanguage()Lcom/fimi/kernel/language/LanguageModel;
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    const-string v2, "select_languagetype"

    const-class v3, Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/language/LanguageModel;

    .line 113
    .local v0, "model":Lcom/fimi/kernel/language/LanguageModel;
    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/kernel/utils/LanguageUtil;->getLanguageModel(Ljava/util/Locale;)Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v0

    .line 116
    :cond_0
    return-object v0
.end method

.method public static getLanguageModel(Ljava/util/Locale;)Lcom/fimi/kernel/language/LanguageModel;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "model":Lcom/fimi/kernel/language/LanguageModel;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/fimi/kernel/language/LanguageItem;->languageModels:[Lcom/fimi/kernel/language/LanguageModel;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 56
    sget-object v3, Lcom/fimi/kernel/language/LanguageItem;->languageModels:[Lcom/fimi/kernel/language/LanguageModel;

    aget-object v1, v3, v0

    .line 57
    .local v1, "languageModel":Lcom/fimi/kernel/language/LanguageModel;
    invoke-virtual {v1}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/fimi/kernel/language/LanguageModel;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    move-object v2, v1

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "languageModel":Lcom/fimi/kernel/language/LanguageModel;
    :cond_1
    if-nez v2, :cond_2

    .line 64
    sget-object v2, Lcom/fimi/kernel/language/LanguageItem;->defaultLanguage:Lcom/fimi/kernel/language/LanguageModel;

    .line 66
    :cond_2
    return-object v2
.end method

.method public static getLocaleByLanguage(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/fimi/kernel/utils/LanguageUtil;->isSupportLanguage(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/fimi/kernel/utils/LanguageUtil;->getLanguageModel(Ljava/util/Locale;)Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/language/LanguageModel;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fimi/kernel/language/LanguageItem;->defaultLanguage:Lcom/fimi/kernel/language/LanguageModel;

    invoke-virtual {v0}, Lcom/fimi/kernel/language/LanguageModel;->getLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private static isSupportLanguage(Ljava/util/Locale;)Z
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "isSupport":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/fimi/kernel/language/LanguageItem;->languageModels:[Lcom/fimi/kernel/language/LanguageModel;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 72
    sget-object v3, Lcom/fimi/kernel/language/LanguageItem;->languageModels:[Lcom/fimi/kernel/language/LanguageModel;

    aget-object v2, v3, v0

    .line 73
    .local v2, "languageModel":Lcom/fimi/kernel/language/LanguageModel;
    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const/4 v1, 0x1

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "languageModel":Lcom/fimi/kernel/language/LanguageModel;
    :cond_1
    return v1
.end method

.method public static isZh()Z
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/fimi/kernel/GlobalConfig;->getInstance()Lcom/fimi/kernel/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/GlobalConfig;->getLanguageModel()Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v0

    .line 121
    .local v0, "model":Lcom/fimi/kernel/language/LanguageModel;
    invoke-virtual {v0}, Lcom/fimi/kernel/language/LanguageModel;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/language/LanguageModel;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static updateResources(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale2"    # Ljava/util/Locale;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 100
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/fimi/kernel/utils/LanguageUtil;->getLocaleByLanguage(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 101
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 102
    .local v0, "configuration":Landroid/content/res/Configuration;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 104
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 108
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    return-object v3

    .line 106
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method
