.class final Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
.super Lcom/github/moduth/blockcanary/internal/BlockInfo;
.source "BlockInfoEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockInfoEx"


# instance fields
.field public concernStackString:Ljava/lang/String;

.field public logFile:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/internal/BlockInfo;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/io/File;)Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    .locals 13
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v12, 0x1

    .line 26
    new-instance v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    invoke-direct {v0}, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;-><init>()V

    .line 27
    .local v0, "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    iput-object p0, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->logFile:Ljava/io/File;

    .line 29
    const/4 v5, 0x0

    .line 31
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v11, "UTF-8"

    invoke-direct {v3, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    .local v3, "in":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_18

    .line 35
    const-string v10, "qua"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 36
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->qualifier:Ljava/lang/String;

    .line 34
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 37
    :cond_1
    const-string v10, "model"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 38
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->model:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 106
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v5, v6

    .line 107
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .local v9, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_2
    const-string v10, "BlockInfoEx"

    const-string v11, "newInstance: "

    invoke-static {v10, v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    if-eqz v5, :cond_2

    .line 111
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 117
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->flushString()Lcom/github/moduth/blockcanary/internal/BlockInfo;

    .line 118
    return-object v0

    .line 39
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string v10, "api-level"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 40
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->apiLevel:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 109
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v10

    move-object v5, v6

    .line 110
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v5, :cond_4

    .line 111
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 115
    :cond_4
    :goto_5
    throw v10

    .line 41
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_6
    const-string v10, "imei"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 42
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->imei:Ljava/lang/String;

    goto :goto_1

    .line 43
    :cond_6
    const-string v10, "cpu-core"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 44
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->cpuCoreNum:I

    goto :goto_1

    .line 45
    :cond_7
    const-string v10, "uid"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 46
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->uid:Ljava/lang/String;

    goto/16 :goto_1

    .line 47
    :cond_8
    const-string v10, "time-start"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 48
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->timeStart:Ljava/lang/String;

    goto/16 :goto_1

    .line 49
    :cond_9
    const-string v10, "time-end"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 50
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->timeEnd:Ljava/lang/String;

    goto/16 :goto_1

    .line 51
    :cond_a
    const-string v10, "time"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 52
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->timeCost:J

    goto/16 :goto_1

    .line 53
    :cond_b
    const-string v10, "thread-time"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 54
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->threadTimeCost:J

    goto/16 :goto_1

    .line 55
    :cond_c
    const-string v10, "process"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 56
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->processName:Ljava/lang/String;

    goto/16 :goto_1

    .line 57
    :cond_d
    const-string v10, "versionName"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 58
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->versionName:Ljava/lang/String;

    goto/16 :goto_1

    .line 59
    :cond_e
    const-string v10, "versionCode"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 60
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->versionCode:I

    goto/16 :goto_1

    .line 61
    :cond_f
    const-string v10, "network"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 62
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->network:Ljava/lang/String;

    goto/16 :goto_1

    .line 63
    :cond_10
    const-string v10, "totalMemory"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 64
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->totalMemory:Ljava/lang/String;

    goto/16 :goto_1

    .line 65
    :cond_11
    const-string v10, "freeMemory"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 66
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->freeMemory:Ljava/lang/String;

    goto/16 :goto_1

    .line 67
    :cond_12
    const-string v10, "cpu-busy"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 68
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->cpuBusy:Z

    goto/16 :goto_1

    .line 69
    :cond_13
    const-string v10, "cpu-rate"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 70
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "split":[Ljava/lang/String;
    array-length v10, v7

    if-le v10, v12, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "cpuRateSb":Ljava/lang/StringBuilder;
    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 77
    :goto_6
    if-eqz v4, :cond_14

    .line 78
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 85
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->cpuRateInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 87
    .end local v1    # "cpuRateSb":Ljava/lang/StringBuilder;
    .end local v7    # "split":[Ljava/lang/String;
    :cond_15
    const-string v10, "stack"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, " = "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .local v8, "stackSb":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 92
    :goto_7
    if-eqz v4, :cond_0

    .line 93
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 94
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_16
    :goto_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 95
    :cond_17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_16

    .line 97
    iget-object v10, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->threadStackEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "stackSb":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v8    # "stackSb":Ljava/lang/StringBuilder;
    goto :goto_8

    .line 104
    .end local v8    # "stackSb":Ljava/lang/StringBuilder;
    :cond_18
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 105
    const/4 v5, 0x0

    .line 110
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    if-eqz v5, :cond_2

    .line 111
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 113
    :catch_1
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "BlockInfoEx"

    const-string v11, "newInstance: "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v9    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .line 114
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "BlockInfoEx"

    const-string v11, "newInstance: "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    .line 114
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v11, "BlockInfoEx"

    const-string v12, "newInstance: "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    goto/16 :goto_4

    .line 106
    :catch_4
    move-exception v9

    goto/16 :goto_2
.end method
