.class public Lcom/fimi/app/x8s/X8Application;
.super Ljava/lang/Object;
.source "X8Application.java"


# static fields
.field public static ANIMATION_WIDTH:I

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_WIDTH:I

.field public static Type2:Z

.field public static enableGesture:Z

.field public static isAoaTopActivity:Z

.field public static isLocalVideo:Z

.field public static isLuancher:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/app/x8s/X8Application;->isLocalVideo:Z

    .line 28
    sput-boolean v1, Lcom/fimi/app/x8s/X8Application;->Type2:Z

    .line 34
    sput-boolean v1, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initSDK(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 58
    new-instance v1, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    invoke-direct {v1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;-><init>()V

    .line 59
    .local v1, "builder":Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_OPTION:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    .local v0, "b":Z
    if-eqz v0, :cond_0

    sget-object v2, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setMapType(Lcom/fimi/x8sdk/map/MapType;)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v3

    .line 62
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    :goto_1
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setMapStyle(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v2

    .line 63
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_RECTIFYIN_OPTION:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setRectification(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v2

    .line 64
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->X8_SHOW_LOG_OPTION:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setShowLog(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->X8_UNITY_OPTION:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setShowmMtric(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v2

    .line 66
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->X8_GLINE_LINE_OPTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setGridLine(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .line 67
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_LOW_POWER_RETURN:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setLowReturn(Z)V

    .line 68
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_LOW_POWER_LANDING:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setLowLanding(Z)V

    .line 69
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->init(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)V

    .line 70
    invoke-static {p1}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->resetPrexString(Landroid/content/Context;)V

    .line 71
    return-void

    .line 61
    :cond_0
    sget-object v2, Lcom/fimi/x8sdk/map/MapType;->GoogleMap:Lcom/fimi/x8sdk/map/MapType;

    goto :goto_0

    .line 62
    :cond_1
    sget v2, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_SATELLITE:I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x8/x8s_log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {p1, v1}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/fimi/app/x8s/test/LogSaveLocalHelper;

    move-result-object v0

    .line 39
    .local v0, "logSaveLocalHelper":Lcom/fimi/app/x8s/test/LogSaveLocalHelper;
    const-string v1, "DDLog"

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->setTag(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->start()V

    .line 42
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/app/x8s/X8Application;->isLuancher:Z

    .line 44
    invoke-static {p1}, Lcom/fimi/kernel/FimiAppContext;->initKernel(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/fimi/kernel/exception/CrashHandler;->getInstance()Lcom/fimi/kernel/exception/CrashHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fimi/kernel/exception/CrashHandler;->init(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/X8Application;->initSDK(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/config/X8AiConfig;->init()V

    .line 54
    invoke-static {}, Lcom/fimi/TcpClient;->createInit()V

    .line 55
    return-void
.end method
