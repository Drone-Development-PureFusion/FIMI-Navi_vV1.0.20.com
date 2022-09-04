.class public Lcom/fimi/x8sdk/service/DownFlightPlaybackService;
.super Landroid/app/Service;
.source "DownFlightPlaybackService.java"


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field public static volatile checkingTaskCount:I

.field static state:Lcom/fimi/network/DownFwService$DownState;


# instance fields
.field public dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

.field downloadManager:Lcom/fimi/network/DownloadManager;

.field private filePath:Ljava/lang/String;

.field needDownDto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/X8PlaybackLogEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    .line 43
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->UnStart:Lcom/fimi/network/DownFwService$DownState;

    sput-object v0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/fimi/network/DownloadManager;

    invoke-direct {v0}, Lcom/fimi/network/DownloadManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->downloadManager:Lcom/fimi/network/DownloadManager;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->filePath:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v1, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;-><init>(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)V

    invoke-direct {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/service/DownFlightPlaybackService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/service/DownFlightPlaybackService;
    .param p1, "x1"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->reportProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->startCheckingTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->downFirmware()V

    return-void
.end method

.method private downFirmware()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget v0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    iget-object v1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->downloadManager:Lcom/fimi/network/DownloadManager;

    iget-object v0, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    sget v2, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/X8PlaybackLogEntity;

    iget-object v2, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    invoke-virtual {v1, v0, v2}, Lcom/fimi/network/DownloadManager;->downLoadFlightPlayback(Lcom/fimi/network/entity/X8PlaybackLogEntity;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method

.method public static getState()Lcom/fimi/network/DownFwService$DownState;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    return-object v0
.end method

.method private reportProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "progress"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v2, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    sget-object v3, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v2, v3}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    return-void

    .line 196
    :cond_1
    invoke-static {}, Lcom/fimi/network/DownNoticeMananger;->getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/network/DownNoticeMananger;->getNoticeList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 197
    .local v1, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/network/IDownProgress;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 198
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/IDownProgress;

    .line 199
    .local v0, "i":Lcom/fimi/network/IDownProgress;
    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/network/IDownProgress;->onProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setState(Lcom/fimi/network/DownFwService$DownState;)V
    .locals 1
    .param p0, "state"    # Lcom/fimi/network/DownFwService$DownState;

    .prologue
    .line 56
    sput-object p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 57
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop:Z

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized startCheckingTask()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop:Z

    .line 71
    const-string v0, "listDownloadFlightPlayback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    .line 72
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->Start:Lcom/fimi/network/DownFwService$DownState;

    sput-object v0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 73
    invoke-direct {p0}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->downFirmware()V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
