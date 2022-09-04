.class public Lcom/fimi/network/DownFwService;
.super Landroid/app/Service;
.source "DownFwService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/network/DownFwService$DownState;
    }
.end annotation


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field public static volatile checkingTaskCount:I

.field static state:Lcom/fimi/network/DownFwService$DownState;


# instance fields
.field public dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

.field downloadManager:Lcom/fimi/network/DownloadManager;

.field private mSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;"
        }
    .end annotation
.end field

.field needDownDto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    .line 37
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->UnStart:Lcom/fimi/network/DownFwService$DownState;

    sput-object v0, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/fimi/network/DownloadManager;

    invoke-direct {v0}, Lcom/fimi/network/DownloadManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/network/DownFwService;->downloadManager:Lcom/fimi/network/DownloadManager;

    .line 105
    new-instance v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v1, Lcom/fimi/network/DownFwService$1;

    invoke-direct {v1, p0}, Lcom/fimi/network/DownFwService$1;-><init>(Lcom/fimi/network/DownFwService;)V

    invoke-direct {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    iput-object v0, p0, Lcom/fimi/network/DownFwService;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/network/DownFwService;Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/network/DownFwService;
    .param p1, "x1"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/network/DownFwService;->reportProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/network/DownFwService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/network/DownFwService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fimi/network/DownFwService;->downFirmware()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/network/DownFwService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/network/DownFwService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fimi/network/DownFwService;->startCheckingTask()V

    return-void
.end method

.method private downFirmware()V
    .locals 5

    .prologue
    .line 91
    iget-object v2, p0, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    sget v2, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    iget-object v3, p0, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    sget v3, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    .line 95
    .local v1, "upfirewareDto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fimi/kernel/utils/DirectoryPath;->getFileOfMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "fileMd5":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getFileEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/fimi/network/DownFwService;->startCheckingTask()V

    .line 98
    invoke-direct {p0}, Lcom/fimi/network/DownFwService;->downFirmware()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, p0, Lcom/fimi/network/DownFwService;->downloadManager:Lcom/fimi/network/DownloadManager;

    iget-object v2, p0, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    sget v4, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/UpfirewareDto;

    iget-object v4, p0, Lcom/fimi/network/DownFwService;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    invoke-virtual {v3, v2, v4}, Lcom/fimi/network/DownloadManager;->downLoadFw(Lcom/fimi/network/entity/UpfirewareDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method

.method public static getState()Lcom/fimi/network/DownFwService$DownState;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    return-object v0
.end method

.method private reportProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "progress"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v2, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    sget-object v3, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v2, v3}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-static {}, Lcom/fimi/network/DownNoticeMananger;->getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/network/DownNoticeMananger;->getNoticeList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 164
    .local v1, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/fimi/network/IDownProgress;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/IDownProgress;

    .line 166
    .local v0, "i":Lcom/fimi/network/IDownProgress;
    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/network/IDownProgress;->onProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setState(Lcom/fimi/network/DownFwService$DownState;)V
    .locals 1
    .param p0, "state"    # Lcom/fimi/network/DownFwService$DownState;

    .prologue
    .line 53
    sput-object p0, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 54
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop:Z

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized startCheckingTask()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fimi/network/DownFwService;->checkingTaskCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
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
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string v0, "listDownloadFwSelectInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/fimi/network/DownFwService;->mSelectList:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Lcom/fimi/network/DownFwService;->mSelectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fimi/network/DownFwService;->mSelectList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/fimi/host/HostConstants;->getNeedDownFw(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    invoke-static {v0}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->setDownList(Ljava/util/List;)V

    .line 74
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->Start:Lcom/fimi/network/DownFwService$DownState;

    sput-object v0, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 75
    invoke-direct {p0}, Lcom/fimi/network/DownFwService;->downFirmware()V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 71
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fimi/network/DownFwService;->mSelectList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/fimi/host/HostConstants;->getNeedDownFw(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    goto :goto_0
.end method
