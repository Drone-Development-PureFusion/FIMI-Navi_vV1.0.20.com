.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadBlocks"
.end annotation


# static fields
.field static final backgroundExecutor:Ljava/util/concurrent/Executor;

.field static final inFlight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityOrNull:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->inFlight:Ljava/util/List;

    .line 375
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->activityOrNull:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .line 381
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->mainHandler:Landroid/os/Handler;

    .line 382
    return-void
.end method

.method static synthetic access$600(Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;)Lcom/github/moduth/blockcanary/ui/DisplayActivity;
    .locals 1
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->activityOrNull:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    return-object v0
.end method

.method static forgetActivity()V
    .locals 3

    .prologue
    .line 391
    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->inFlight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "loadBlocks":Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "loadBlocks":Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;
    check-cast v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    .line 392
    .restart local v0    # "loadBlocks":Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->activityOrNull:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    goto :goto_0

    .line 394
    :cond_0
    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->inFlight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 395
    return-void
.end method

.method static load(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 385
    new-instance v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;

    invoke-direct {v0, p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    .line 386
    .local v0, "loadBlocks":Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;
    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->inFlight:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v2, "blockInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/github/moduth/blockcanary/ui/BlockInfoEx;>;"
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getLogFiles()[Ljava/io/File;

    move-result-object v4

    .line 401
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_6

    .line 402
    array-length v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v0, v4, v6

    .line 404
    .local v0, "blockFile":Ljava/io/File;
    :try_start_0
    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->newInstance(Ljava/io/File;)Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    move-result-object v1

    .line 405
    .local v1, "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    invoke-static {v1}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->isBlockInfoValid(Lcom/github/moduth/blockcanary/internal/BlockInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 406
    new-instance v8, Lcom/github/moduth/blockcanary/ui/BlockInfoCorruptException;

    invoke-direct {v8, v1}, Lcom/github/moduth/blockcanary/ui/BlockInfoCorruptException;-><init>(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v1    # "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    :catch_0
    move-exception v3

    .line 430
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 431
    const-string v8, "DisplayActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read block log file, deleted :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 409
    .restart local v1    # "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    :cond_1
    const/4 v5, 0x1

    .line 411
    .local v5, "needAddToList":Z
    :try_start_1
    invoke-static {v1}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->isInWhiteList(Lcom/github/moduth/blockcanary/internal/BlockInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 412
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->deleteFilesInWhiteList()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 414
    const/4 v0, 0x0

    .line 416
    :cond_2
    const/4 v5, 0x0

    .line 419
    :cond_3
    invoke-static {v1}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->concernStackString(Lcom/github/moduth/blockcanary/internal/BlockInfo;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->concernStackString:Ljava/lang/String;

    .line 420
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->filterNonConcernStack()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->concernStackString:Ljava/lang/String;

    .line 421
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 422
    const/4 v5, 0x0

    .line 425
    :cond_4
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 434
    .end local v0    # "blockFile":Ljava/io/File;
    .end local v1    # "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    .end local v5    # "needAddToList":Z
    :cond_5
    new-instance v6, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$1;

    invoke-direct {v6, p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$1;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    :cond_6
    iget-object v6, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;

    invoke-direct {v7, p0, v2}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks$2;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method
