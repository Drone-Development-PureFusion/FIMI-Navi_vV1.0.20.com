.class Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;
.super Ljava/lang/Object;
.source "AdvertisingInfoProvider.java"


# static fields
.field private static final PREFKEY_ADVERTISING_ID:Ljava/lang/String; = "advertising_id"

.field private static final PREFKEY_LIMIT_AD_TRACKING:Ljava/lang/String; = "limit_ad_tracking_enabled"


# instance fields
.field private final context:Landroid/content/Context;

.field private final preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceStore"    # Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;)Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .locals 1
    .param p0, "x0"    # Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->getAdvertisingInfoFromStrategies()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;
    .param p1, "x1"    # Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->storeInfoToPreferences(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)V

    return-void
.end method

.method private getAdvertisingInfoFromStrategies()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .locals 5

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->getReflectionStrategy()Lcom/twitter/sdk/android/core/internal/AdvertisingInfoStrategy;

    move-result-object v0

    .line 117
    .local v0, "adInfoStrategy":Lcom/twitter/sdk/android/core/internal/AdvertisingInfoStrategy;
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoStrategy;->getAdvertisingInfo()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    move-result-object v1

    .line 119
    .local v1, "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    invoke-direct {p0, v1}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->isInfoValid(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->getServiceStrategy()Lcom/twitter/sdk/android/core/internal/AdvertisingInfoStrategy;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoStrategy;->getAdvertisingInfo()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    move-result-object v1

    .line 123
    invoke-direct {p0, v1}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->isInfoValid(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v2

    const-string v3, "Twitter"

    const-string v4, "AdvertisingInfo not present"

    invoke-interface {v2, v3, v4}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-object v1

    .line 126
    :cond_0
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v2

    const-string v3, "Twitter"

    const-string v4, "Using AdvertisingInfo from Service Provider"

    invoke-interface {v2, v3, v4}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v2

    const-string v3, "Twitter"

    const-string v4, "Using AdvertisingInfo from Reflection Provider"

    invoke-interface {v2, v3, v4}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getInfoFromPreferences()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .locals 5

    .prologue
    .line 96
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "advertising_id"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "advertisingId":Ljava/lang/String;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "limit_ad_tracking_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    .local v1, "limitAd":Z
    new-instance v2, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    invoke-direct {v2, v0, v1}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private getReflectionStrategy()Lcom/twitter/sdk/android/core/internal/AdvertisingInfoStrategy;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoReflectionStrategy;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoReflectionStrategy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getServiceStrategy()Lcom/twitter/sdk/android/core/internal/AdvertisingInfoStrategy;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoServiceStrategy;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoServiceStrategy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isInfoValid(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)Z
    .locals 1
    .param p1, "advertisingInfo"    # Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshInfoIfNeededAsync(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)V
    .locals 2
    .param p1, "advertisingInfo"    # Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider$1;-><init>(Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method private storeInfoToPreferences(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)V
    .locals 4
    .param p1, "infoToReturn"    # Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->isInfoValid(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    .line 83
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;->limitAdTrackingEnabled:Z

    .line 84
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    .line 89
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    .line 90
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method


# virtual methods
.method getAdvertisingInfo()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .locals 6

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->getInfoFromPreferences()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    move-result-object v0

    .line 49
    .local v0, "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->isInfoValid(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v3

    const-string v4, "Twitter"

    const-string v5, "Using AdvertisingInfo from Preference Store"

    invoke-interface {v3, v4, v5}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->refreshInfoIfNeededAsync(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)V

    move-object v1, v0

    .end local v0    # "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .local v1, "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    move-object v2, v0

    .line 57
    .end local v1    # "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .local v2, "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    :goto_0
    return-object v2

    .line 55
    .end local v2    # "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .restart local v0    # "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    :cond_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->getAdvertisingInfoFromStrategies()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->storeInfoToPreferences(Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;)V

    move-object v1, v0

    .end local v0    # "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .restart local v1    # "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    move-object v2, v0

    .line 57
    .end local v1    # "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .restart local v2    # "infoToReturn":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    goto :goto_0
.end method
