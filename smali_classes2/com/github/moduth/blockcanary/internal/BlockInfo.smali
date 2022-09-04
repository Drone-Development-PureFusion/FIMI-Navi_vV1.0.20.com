.class public Lcom/github/moduth/blockcanary/internal/BlockInfo;
.super Ljava/lang/Object;
.source "BlockInfo.java"


# static fields
.field private static final EMPTY_IMEI:Ljava/lang/String; = "empty_imei"

.field public static final KEY_API:Ljava/lang/String; = "api-level"

.field public static final KEY_CPU_BUSY:Ljava/lang/String; = "cpu-busy"

.field public static final KEY_CPU_CORE:Ljava/lang/String; = "cpu-core"

.field public static final KEY_CPU_RATE:Ljava/lang/String; = "cpu-rate"

.field public static final KEY_FREE_MEMORY:Ljava/lang/String; = "freeMemory"

.field public static final KEY_IMEI:Ljava/lang/String; = "imei"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_NETWORK:Ljava/lang/String; = "network"

.field public static final KEY_PROCESS:Ljava/lang/String; = "process"

.field public static final KEY_QUA:Ljava/lang/String; = "qua"

.field public static final KEY_STACK:Ljava/lang/String; = "stack"

.field public static final KEY_THREAD_TIME_COST:Ljava/lang/String; = "thread-time"

.field public static final KEY_TIME_COST:Ljava/lang/String; = "time"

.field public static final KEY_TIME_COST_END:Ljava/lang/String; = "time-end"

.field public static final KEY_TIME_COST_START:Ljava/lang/String; = "time-start"

.field public static final KEY_TOTAL_MEMORY:Ljava/lang/String; = "totalMemory"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final KEY_VERSION_NAME:Ljava/lang/String; = "versionName"

.field public static final KV:Ljava/lang/String; = " = "

.field public static final NEW_INSTANCE_METHOD:Ljava/lang/String; = "newInstance: "

.field public static final SEPARATOR:Ljava/lang/String; = "\r\n"

.field private static final TAG:Ljava/lang/String; = "BlockInfo"

.field public static final TIME_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static sApiLevel:Ljava/lang/String;

.field public static sCpuCoreNum:I

.field public static sImei:Ljava/lang/String;

.field public static sModel:Ljava/lang/String;

.field public static sQualifier:Ljava/lang/String;


# instance fields
.field public apiLevel:Ljava/lang/String;

.field private basicSb:Ljava/lang/StringBuilder;

.field public cpuBusy:Z

.field public cpuCoreNum:I

.field public cpuRateInfo:Ljava/lang/String;

.field private cpuSb:Ljava/lang/StringBuilder;

.field public freeMemory:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public qualifier:Ljava/lang/String;

.field private stackSb:Ljava/lang/StringBuilder;

.field public threadStackEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public threadTimeCost:J

.field public timeCost:J

.field public timeEnd:Ljava/lang/String;

.field private timeSb:Ljava/lang/StringBuilder;

.field public timeStart:Ljava/lang/String;

.field public totalMemory:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 68
    const-string v2, ""

    sput-object v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sApiLevel:Ljava/lang/String;

    .line 73
    const-string v2, ""

    sput-object v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sImei:Ljava/lang/String;

    .line 74
    const/4 v2, -0x1

    sput v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sCpuCoreNum:I

    .line 105
    invoke-static {}, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->getNumCores()I

    move-result v2

    sput v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sCpuCoreNum:I

    .line 106
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sModel:Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sApiLevel:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideQualifier()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sQualifier:Ljava/lang/String;

    .line 111
    :try_start_0
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 114
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sImei:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "BlockInfo"

    const-string v3, "newInstance: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const-string v2, "empty_imei"

    sput-object v2, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sImei:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->apiLevel:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->imei:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuCoreNum:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->versionName:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuSb:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeSb:Ljava/lang/StringBuilder;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->stackSb:Ljava/lang/StringBuilder;

    .line 122
    return-void
.end method

.method public static newInstance()Lcom/github/moduth/blockcanary/internal/BlockInfo;
    .locals 7

    .prologue
    .line 125
    new-instance v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;

    invoke-direct {v0}, Lcom/github/moduth/blockcanary/internal/BlockInfo;-><init>()V

    .line 126
    .local v0, "blockInfo":Lcom/github/moduth/blockcanary/internal/BlockInfo;
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    .local v1, "context":Landroid/content/Context;
    iget-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 130
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->versionCode:I

    .line 131
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    sget v4, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sCpuCoreNum:I

    iput v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuCoreNum:I

    .line 138
    sget-object v4, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sModel:Ljava/lang/String;

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->model:Ljava/lang/String;

    .line 139
    sget-object v4, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sApiLevel:Ljava/lang/String;

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->apiLevel:Ljava/lang/String;

    .line 140
    sget-object v4, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sQualifier:Ljava/lang/String;

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->qualifier:Ljava/lang/String;

    .line 141
    sget-object v4, Lcom/github/moduth/blockcanary/internal/BlockInfo;->sImei:Ljava/lang/String;

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->imei:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideUid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->uid:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/github/moduth/blockcanary/internal/ProcessUtils;->myProcessName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->processName:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideNetworkType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->network:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->getFreeMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->freeMemory:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->getTotalMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->totalMemory:Ljava/lang/String;

    .line 148
    return-object v0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "BlockInfo"

    const-string v5, "newInstance: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public flushString()Lcom/github/moduth/blockcanary/internal/BlockInfo;
    .locals 6

    .prologue
    .line 175
    const-string v1, "\r\n"

    .line 176
    .local v1, "separator":Ljava/lang/String;
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "qua"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->qualifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "versionName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "versionCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "imei"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->imei:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->network:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "model"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->model:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "api-level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->apiLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "cpu-core"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuCoreNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "process"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "freeMemory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->freeMemory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    const-string v4, "totalMemory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->totalMemory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeSb:Ljava/lang/StringBuilder;

    const-string v4, "time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeCost:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeSb:Ljava/lang/StringBuilder;

    const-string v4, "thread-time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadTimeCost:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeSb:Ljava/lang/StringBuilder;

    const-string v4, "time-start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeStart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeSb:Ljava/lang/StringBuilder;

    const-string v4, "time-end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeEnd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuSb:Ljava/lang/StringBuilder;

    const-string v4, "cpu-busy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuBusy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuSb:Ljava/lang/StringBuilder;

    const-string v4, "cpu-rate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuRateInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v2, "temp":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->stackSb:Ljava/lang/StringBuilder;

    const-string v4, "stack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .end local v2    # "temp":Ljava/lang/StringBuilder;
    :cond_1
    return-object p0
.end method

.method public getBasicString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpuString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCpuBusyFlag(Z)Lcom/github/moduth/blockcanary/internal/BlockInfo;
    .locals 0
    .param p1, "busy"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuBusy:Z

    .line 153
    return-object p0
.end method

.method public setMainThreadTimeCost(JJJJ)Lcom/github/moduth/blockcanary/internal/BlockInfo;
    .locals 3
    .param p1, "realTimeStart"    # J
    .param p3, "realTimeEnd"    # J
    .param p5, "threadTimeStart"    # J
    .param p7, "threadTimeEnd"    # J

    .prologue
    .line 167
    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeCost:J

    .line 168
    sub-long v0, p7, p5

    iput-wide v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadTimeCost:J

    .line 169
    sget-object v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeStart:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeEnd:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setRecentCpuRate(Ljava/lang/String;)Lcom/github/moduth/blockcanary/internal/BlockInfo;
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuRateInfo:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setThreadStackEntries(Ljava/util/ArrayList;)Lcom/github/moduth/blockcanary/internal/BlockInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/moduth/blockcanary/internal/BlockInfo;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "threadStackEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->threadStackEntries:Ljava/util/ArrayList;

    .line 163
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->basicSb:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->timeSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->cpuSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/internal/BlockInfo;->stackSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
