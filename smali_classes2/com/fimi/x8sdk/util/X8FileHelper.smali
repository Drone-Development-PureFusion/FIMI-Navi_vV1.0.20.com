.class public Lcom/fimi/x8sdk/util/X8FileHelper;
.super Ljava/lang/Object;
.source "X8FileHelper.java"


# static fields
.field private static final flightLogFileSuffix:[Ljava/lang/String;

.field private static zipFileSuffix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager;->prexFC:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager;->prexCM:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager;->prexAPP:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager;->prexFcStatus:Ljava/lang/String;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/x8sdk/util/X8FileHelper;->zipFileSuffix:[Ljava/lang/String;

    .line 19
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "playback"

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v1

    iget-object v1, v1, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/x8sdk/util/X8FileHelper;->flightLogFileSuffix:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFiles()V
    .locals 3

    .prologue
    .line 36
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8B2oxPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fimi/kernel/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    .line 37
    .local v0, "b":Z
    return-void
.end method

.method public static deleteFlightLogFiles(Ljava/util/List;Z)V
    .locals 4
    .param p1, "isDeleteAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    if-eqz p1, :cond_1

    .line 42
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LoginFlightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fimi/kernel/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 50
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .line 45
    .local v0, "x8FlightLogFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isFileLogCollect()Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/fimi/kernel/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static flightLogListDirs(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-static {v2}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LoginFlightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fimi/kernel/utils/FileUtil;->listFiles3(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/fimi/x8sdk/util/X8FileHelper;->flightLogFileSuffix:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/FileUtil;->listFiles3(Ljava/io/File;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDirSize(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "len":J
    sget-object v4, Lcom/fimi/x8sdk/util/X8FileHelper;->zipFileSuffix:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/fimi/kernel/utils/FileUtil;->listFiles3(Ljava/io/File;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 84
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 85
    goto :goto_0

    .line 87
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-wide v2
.end method

.method public static getFlightLogDirSize(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .local v2, "len":J
    sget-object v4, Lcom/fimi/x8sdk/util/X8FileHelper;->flightLogFileSuffix:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/fimi/kernel/utils/FileUtil;->listFiles3(Ljava/io/File;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 72
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 73
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 74
    goto :goto_0

    .line 76
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-wide v2
.end method

.method public static listDirs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8B2oxPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/X8FcLogManager;->getCurrentWrite()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fimi/kernel/utils/FileUtil;->listDirs(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    return-object v0
.end method


# virtual methods
.method public test()V
    .locals 6

    .prologue
    .line 22
    const-string v3, "[INFO][2018-04 10:29:08 911][http-nio-6900-exec-8]"

    .line 23
    .local v3, "str_1":Ljava/lang/String;
    const-string v2, "\\d{4}-\\d{2}-\\d{2}"

    .line 24
    .local v2, "regex":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 25
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 26
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(I)V

    .line 28
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
