.class public Lcom/twitter/sdk/android/core/internal/IdManager;
.super Ljava/lang/Object;
.source "IdManager.java"


# static fields
.field static final ADVERTISING_PREFERENCES:Ljava/lang/String; = "com.twitter.sdk.android.AdvertisingPreferences"

.field static final COLLECT_IDENTIFIERS_ENABLED:Ljava/lang/String; = "com.twitter.sdk.android.COLLECT_IDENTIFIERS_ENABLED"

.field private static final FORWARD_SLASH_REGEX:Ljava/lang/String;

.field private static final ID_PATTERN:Ljava/util/regex/Pattern;

.field static final PREFKEY_INSTALLATION_UUID:Ljava/lang/String; = "installation_uuid"


# instance fields
.field advertisingInfo:Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

.field advertisingInfoProvider:Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;

.field private final appIdentifier:Ljava/lang/String;

.field private final collectHardwareIds:Z

.field fetchedAdvertisingInfo:Z

.field private final installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "[^\\p{Alnum}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/core/internal/IdManager;->ID_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/core/internal/IdManager;->FORWARD_SLASH_REGEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreImpl;

    const-string v1, "com.twitter.sdk.android.AdvertisingPreferences"

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStoreImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/internal/IdManager;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "preferenceStore"    # Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    .prologue
    .line 64
    new-instance v0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;

    invoke-direct {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/internal/IdManager;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;)V

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "preferenceStore"    # Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;
    .param p3, "advertisingInfoProvider"    # Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->appIdentifier:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->advertisingInfoProvider:Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;

    .line 75
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    .line 77
    const-string v0, "com.twitter.sdk.android.COLLECT_IDENTIFIERS_ENABLED"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->collectHardwareIds:Z

    .line 79
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->collectHardwareIds:Z

    if-nez v0, :cond_1

    .line 80
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device ID collection disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method

.method private createInstallationUUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "installation_uuid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "uuid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/sdk/android/core/internal/IdManager;->formatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    .line 170
    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "installation_uuid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    return-object v0

    .line 175
    .end local v0    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->installationIdLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private formatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 90
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/IdManager;->ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v0, Lcom/twitter/sdk/android/core/internal/IdManager;->FORWARD_SLASH_REGEX:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, "toReturn":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->collectHardwareIds:Z

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/IdManager;->getAdvertisingInfo()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    move-result-object v0

    .line 205
    .local v0, "advertisingInfo":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, v0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    .line 210
    .end local v0    # "advertisingInfo":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    :cond_0
    return-object v1
.end method

.method declared-synchronized getAdvertisingInfo()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->fetchedAdvertisingInfo:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->advertisingInfoProvider:Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/AdvertisingInfoProvider;->getAdvertisingInfo()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->advertisingInfo:Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->fetchedAdvertisingInfo:Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->advertisingInfo:Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->appIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    const-string v1, ""

    .line 146
    .local v1, "toReturn":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->collectHardwareIds:Z

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->preferenceStore:Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "installation_uuid"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    if-nez v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/IdManager;->createInstallationUUID()Ljava/lang/String;

    move-result-object v1

    .line 154
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v1
.end method

.method public getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/twitter/sdk/android/core/internal/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 130
    invoke-direct {p0, v4}, Lcom/twitter/sdk/android/core/internal/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 129
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsBuildVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsDisplayVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/IdManager;->removeForwardSlashesIn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/IdManager;->getOsDisplayVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/IdManager;->getOsBuildVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "toReturn":Ljava/lang/Boolean;
    iget-boolean v2, p0, Lcom/twitter/sdk/android/core/internal/IdManager;->collectHardwareIds:Z

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/IdManager;->getAdvertisingInfo()Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;

    move-result-object v0

    .line 192
    .local v0, "advertisingInfo":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    if-eqz v0, :cond_0

    .line 193
    iget-boolean v2, v0, Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;->limitAdTrackingEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 197
    .end local v0    # "advertisingInfo":Lcom/twitter/sdk/android/core/internal/AdvertisingInfo;
    :cond_0
    return-object v1
.end method
