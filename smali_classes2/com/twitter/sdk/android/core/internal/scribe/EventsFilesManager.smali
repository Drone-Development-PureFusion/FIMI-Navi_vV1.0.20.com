.class public abstract Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$FileWithTimestamp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAX_BYTE_SIZE_PER_FILE:I = 0x1f40

.field public static final MAX_FILES_IN_BATCH:I = 0x1

.field public static final MAX_FILES_TO_KEEP:I = 0x64

.field public static final ROLL_OVER_FILE_NAME_SEPARATOR:Ljava/lang/String; = "_"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final currentTimeProvider:Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;

.field private final defaultMaxFilesToKeep:I

.field protected final eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

.field protected volatile lastRollOverTime:J

.field protected final rollOverListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventsStorageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final transform:Lcom/twitter/sdk/android/core/internal/scribe/EventTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/scribe/EventTransform",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/EventTransform;Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "currentTimeProvider"    # Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;
    .param p4, "eventStorage"    # Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;
    .param p5, "defaultMaxFilesToKeep"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventTransform",
            "<TT;>;",
            "Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    .local p2, "transform":Lcom/twitter/sdk/android/core/internal/scribe/EventTransform;, "Lcom/twitter/sdk/android/core/internal/scribe/EventTransform<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->transform:Lcom/twitter/sdk/android/core/internal/scribe/EventTransform;

    .line 75
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    .line 76
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->currentTimeProvider:Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;

    .line 78
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->currentTimeProvider:Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->lastRollOverTime:J

    .line 80
    iput p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->defaultMaxFilesToKeep:I

    .line 81
    return-void
.end method

.method private rollFileOverIfNeeded(I)V
    .locals 6
    .param p1, "newEventSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->getMaxByteSizePerFile()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->canWorkingFileStore(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    .line 140
    invoke-interface {v5}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->getWorkingFileUsedSizeInBytes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 141
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->getMaxByteSizePerFile()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 136
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->context:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "Twitter"

    invoke-static {v1, v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlled(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->rollFileOver()Z

    .line 145
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private triggerRollOverOnListeners(Ljava/lang/String;)V
    .locals 5
    .param p1, "rolledOverFile"    # Ljava/lang/String;

    .prologue
    .line 166
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorageListener;

    .line 168
    .local v1, "eventStorageRollOverListener":Lcom/twitter/sdk/android/core/internal/scribe/EventsStorageListener;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorageListener;->onRollOver(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->context:Landroid/content/Context;

    const-string v4, "One of the roll over listeners threw an exception"

    invoke-static {v3, v4, v0}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "eventStorageRollOverListener":Lcom/twitter/sdk/android/core/internal/scribe/EventsStorageListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteAllEventsFiles()V
    .locals 2

    .prologue
    .line 185
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    .line 186
    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->getAllFilesInRollOverDirectory()Ljava/util/List;

    move-result-object v1

    .line 185
    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    .line 187
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->deleteWorkingFile()V

    .line 188
    return-void
.end method

.method public deleteOldestInRollOverIfOverMax()V
    .locals 15

    .prologue
    .line 191
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    iget-object v9, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    invoke-interface {v9}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->getAllFilesInRollOverDirectory()Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "allFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->getMaxFilesToKeep()I

    move-result v5

    .line 194
    .local v5, "maxFiles":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v5, :cond_0

    .line 228
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int v6, v9, v5

    .line 200
    .local v6, "numberOfFilesToDelete":I
    iget-object v9, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->context:Landroid/content/Context;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 201
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 200
    invoke-static {v9, v10}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    new-instance v7, Ljava/util/TreeSet;

    new-instance v9, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$1;

    invoke-direct {v9, p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$1;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;)V

    invoke-direct {v7, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 213
    .local v7, "sortedFiles":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$FileWithTimestamp;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 214
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->parseCreationTimestampFromFileName(Ljava/lang/String;)J

    move-result-wide v2

    .line 215
    .local v2, "creationTimestamp":J
    new-instance v10, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$FileWithTimestamp;

    invoke-direct {v10, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$FileWithTimestamp;-><init>(Ljava/io/File;J)V

    invoke-virtual {v7, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "creationTimestamp":J
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v8, "toDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$FileWithTimestamp;

    .line 220
    .local v4, "fileWithTimestamp":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$FileWithTimestamp;
    iget-object v10, v4, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$FileWithTimestamp;->file:Ljava/io/File;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v6, :cond_2

    .line 227
    .end local v4    # "fileWithTimestamp":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager$FileWithTimestamp;
    :cond_3
    iget-object v9, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    invoke-interface {v9, v8}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    goto :goto_0
.end method

.method public deleteSentFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    .line 182
    return-void
.end method

.method protected abstract generateUniqueRollOverFileName()Ljava/lang/String;
.end method

.method public getBatchOfFilesToSend()Ljava/util/List;
    .locals 2
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
    .line 177
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->getBatchOfFilesToSend(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastRollOverTime()J
    .locals 2

    .prologue
    .line 162
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->lastRollOverTime:J

    return-wide v0
.end method

.method protected getMaxByteSizePerFile()I
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    const/16 v0, 0x1f40

    return v0
.end method

.method protected getMaxFilesToKeep()I
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    iget v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->defaultMaxFilesToKeep:I

    return v0
.end method

.method public parseCreationTimestampFromFileName(Ljava/lang/String;)J
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    const-wide/16 v2, 0x0

    .line 231
    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "fileNameParts":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 240
    :goto_0
    return-wide v2

    .line 238
    :cond_0
    const/4 v4, 0x2

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public registerRollOverListener(Lcom/twitter/sdk/android/core/internal/scribe/EventsStorageListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/twitter/sdk/android/core/internal/scribe/EventsStorageListener;

    .prologue
    .line 95
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method

.method public rollFileOver()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    const/4 v0, 0x0

    .line 106
    .local v0, "fileRolledOver":Z
    const/4 v1, 0x0

    .line 110
    .local v1, "targetFileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->isWorkingFileEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->generateUniqueRollOverFileName()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    invoke-interface {v2, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->rollOver(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->context:Landroid/content/Context;

    const/4 v3, 0x4

    const-string v4, "Twitter"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "generated new file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    .line 116
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlled(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->currentTimeProvider:Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->lastRollOverTime:J

    .line 121
    const/4 v0, 0x1

    .line 124
    :cond_0
    invoke-direct {p0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->triggerRollOverOnListeners(Ljava/lang/String;)V

    .line 125
    return v0
.end method

.method public writeEvent(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->transform:Lcom/twitter/sdk/android/core/internal/scribe/EventTransform;

    invoke-interface {v1, p1}, Lcom/twitter/sdk/android/core/internal/scribe/EventTransform;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 85
    .local v0, "eventBytes":[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->rollFileOverIfNeeded(I)V

    .line 87
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsFilesManager;->eventStorage:Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;

    invoke-interface {v1, v0}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStorage;->add([B)V

    .line 88
    return-void
.end method
