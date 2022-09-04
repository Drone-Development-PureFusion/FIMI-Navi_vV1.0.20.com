.class public Lcom/github/moduth/blockcanary/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"


# static fields
.field private static final FILE_NAME_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final OBSOLETE_DURATION:J = 0xa4cb800L

.field private static final SAVE_DELETE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "LogWriter"

.field private static final TIME_FORMATTER:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/github/moduth/blockcanary/LogWriter;->SAVE_DELETE_LOCK:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/github/moduth/blockcanary/LogWriter;->FILE_NAME_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/github/moduth/blockcanary/LogWriter;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/github/moduth/blockcanary/LogWriter;->SAVE_DELETE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static cleanObsolete()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->getWriteLogThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/moduth/blockcanary/LogWriter$1;

    invoke-direct {v1}, Lcom/github/moduth/blockcanary/LogWriter$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public static deleteAll()V
    .locals 6

    .prologue
    .line 84
    sget-object v4, Lcom/github/moduth/blockcanary/LogWriter;->SAVE_DELETE_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 86
    :try_start_0
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getLogFiles()[Ljava/io/File;

    move-result-object v2

    .line 87
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 88
    array-length v5, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v2, v3

    .line 89
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "LogWriter"

    const-string v5, "deleteAll: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    monitor-exit v4

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static generateTempZip(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static save(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v2, Lcom/github/moduth/blockcanary/LogWriter;->SAVE_DELETE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    const-string v1, "looper"

    invoke-static {v1, p0}, Lcom/github/moduth/blockcanary/LogWriter;->save(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "path":Ljava/lang/String;
    monitor-exit v2

    .line 58
    return-object v0

    .line 57
    .end local v0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static save(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "logFileName"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v3, ""

    .line 100
    .local v3, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 102
    .local v5, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->detectedBlockDirectory()Ljava/io/File;

    move-result-object v1

    .line 103
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 104
    .local v6, "time":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/github/moduth/blockcanary/LogWriter;->FILE_NAME_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 106
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v9, v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const-string v10, "UTF-8"

    invoke-direct {v2, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 111
    .local v2, "out":Ljava/io/OutputStreamWriter;
    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    const-string v9, "**********************"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/github/moduth/blockcanary/LogWriter;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(write log time)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 118
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v8, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 123
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    const/4 v5, 0x0

    .line 130
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    if-eqz v5, :cond_0

    .line 131
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "out":Ljava/io/OutputStreamWriter;
    .end local v6    # "time":J
    :cond_0
    :goto_0
    return-object v3

    .line 133
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "out":Ljava/io/OutputStreamWriter;
    .restart local v6    # "time":J
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "LogWriter"

    const-string v10, "save: "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "out":Ljava/io/OutputStreamWriter;
    .end local v6    # "time":J
    :catch_1
    move-exception v4

    .line 127
    .local v4, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string v9, "LogWriter"

    const-string v10, "save: "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    if-eqz v5, :cond_0

    .line 131
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 133
    :catch_2
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "LogWriter"

    const-string v10, "save: "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    .line 130
    :goto_2
    if-eqz v5, :cond_1

    .line 131
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 135
    :cond_1
    :goto_3
    throw v9

    .line 133
    :catch_3
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "LogWriter"

    const-string v11, "save: "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "out":Ljava/io/OutputStreamWriter;
    .restart local v6    # "time":J
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v9

    move-object v5, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 126
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v4

    move-object v5, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1
.end method
