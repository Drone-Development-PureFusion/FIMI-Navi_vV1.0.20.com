.class Lcom/github/moduth/blockcanary/internal/PerformanceUtils;
.super Ljava/lang/Object;
.source "PerformanceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceUtils"

.field private static sCoreNum:I

.field private static sTotalMemo:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sCoreNum:I

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sTotalMemo:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFreeMemory()J
    .locals 6

    .prologue
    .line 71
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 72
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 73
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 74
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public static getNumCores()I
    .locals 5

    .prologue
    .line 54
    sget v3, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sCoreNum:I

    if-nez v3, :cond_0

    .line 57
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/github/moduth/blockcanary/internal/PerformanceUtils$1CpuFilter;

    invoke-direct {v3}, Lcom/github/moduth/blockcanary/internal/PerformanceUtils$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 61
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    sput v3, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sCoreNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    sget v3, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sCoreNum:I

    return v3

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PerformanceUtils"

    const-string v4, "getNumCores exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v3, 0x1

    sput v3, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sCoreNum:I

    goto :goto_0
.end method

.method public static getTotalMemory()J
    .locals 14

    .prologue
    .line 78
    sget-wide v10, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sTotalMemo:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 79
    const-string v7, "/proc/meminfo"

    .line 82
    .local v7, "str1":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 83
    .local v2, "initial_memory":J
    const/4 v5, 0x0

    .line 85
    .local v5, "localFileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .local v6, "localFileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v4, v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 87
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "str2":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 90
    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v2, v9

    .line 93
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    if-eqz v6, :cond_4

    .line 100
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 106
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .end local v8    # "str2":Ljava/lang/String;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    sput-wide v2, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sTotalMemo:J

    .line 108
    :cond_2
    sget-wide v10, Lcom/github/moduth/blockcanary/internal/PerformanceUtils;->sTotalMemo:J

    return-wide v10

    .line 101
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "PerformanceUtils"

    const-string v10, "close localFileReader exception = "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 103
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "str2":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 96
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v9, "PerformanceUtils"

    const-string v10, "getTotalMemory exception = "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    if-eqz v5, :cond_1

    .line 100
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 101
    :catch_2
    move-exception v1

    .line 102
    const-string v9, "PerformanceUtils"

    const-string v10, "close localFileReader exception = "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v5, :cond_3

    .line 100
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 103
    :cond_3
    :goto_3
    throw v9

    .line 101
    :catch_3
    move-exception v1

    .line 102
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "PerformanceUtils"

    const-string v11, "close localFileReader exception = "

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 95
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_1

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :cond_4
    move-object v5, v6

    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_0
.end method
