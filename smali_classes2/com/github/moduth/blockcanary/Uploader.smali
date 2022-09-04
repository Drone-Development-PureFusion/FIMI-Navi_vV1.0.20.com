.class final Lcom/github/moduth/blockcanary/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"


# static fields
.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "Uploader"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/github/moduth/blockcanary/Uploader;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/github/moduth/blockcanary/Uploader;->zip()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static zip()Ljava/io/File;
    .locals 6

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "timeString":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/github/moduth/blockcanary/Uploader;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BlockCanary-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/moduth/blockcanary/LogWriter;->generateTempZip(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 44
    .local v2, "zippedFile":Ljava/io/File;
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v3

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getLogFiles()[Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->zip([Ljava/io/File;Ljava/io/File;)Z

    .line 45
    invoke-static {}, Lcom/github/moduth/blockcanary/LogWriter;->deleteAll()V

    .line 46
    return-object v2

    .line 40
    .end local v2    # "zippedFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "Uploader"

    const-string v4, "zip: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static zipAndUpload()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->getWriteLogThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/moduth/blockcanary/Uploader$1;

    invoke-direct {v1}, Lcom/github/moduth/blockcanary/Uploader$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method
