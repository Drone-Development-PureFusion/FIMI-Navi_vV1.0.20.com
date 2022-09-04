.class public Lcom/fimi/kernel/connect/session/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static mSessionManager:Lcom/fimi/kernel/connect/session/SessionManager;


# instance fields
.field public CONNECTION_SUCCEED:Z

.field private final CONNECT_NETWORK:I

.field private final DEVICE_CONNECT:I

.field private final DEVICE_CONNECT_ERROR:I

.field private final DEVICE_DISCONNECT:I

.field private final DISCONNECT_NETWORK:I

.field private list:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHanlder:Landroid/os/Handler;

.field private mSession:Lcom/fimi/kernel/connect/BaseConnect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/fimi/kernel/connect/session/SessionManager;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/session/SessionManager;-><init>()V

    sput-object v0, Lcom/fimi/kernel/connect/session/SessionManager;->mSessionManager:Lcom/fimi/kernel/connect/session/SessionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/fimi/kernel/connect/session/SessionManager;->CONNECT_NETWORK:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->DISCONNECT_NETWORK:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->DEVICE_CONNECT:I

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->DEVICE_DISCONNECT:I

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->DEVICE_CONNECT_ERROR:I

    .line 30
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/session/SessionManager;->CONNECTION_SUCCEED:Z

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 145
    new-instance v0, Lcom/fimi/kernel/connect/session/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/session/SessionManager$1;-><init>(Lcom/fimi/kernel/connect/session/SessionManager;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mHanlder:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/connect/session/SessionManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/session/SessionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/fimi/kernel/connect/session/SessionManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/fimi/kernel/connect/session/SessionManager;->mSessionManager:Lcom/fimi/kernel/connect/session/SessionManager;

    return-object v0
.end method

.method public static initInstance()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    .line 39
    return-void
.end method


# virtual methods
.method public add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public declared-synchronized addSession(Lcom/fimi/kernel/connect/BaseConnect;)V
    .locals 2
    .param p1, "mSession"    # Lcom/fimi/kernel/connect/BaseConnect;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    .line 68
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addSession(Lcom/fimi/kernel/connect/BaseConnect;Ljava/lang/String;)V
    .locals 2
    .param p1, "mSession"    # Lcom/fimi/kernel/connect/BaseConnect;
    .param p2, "clientMessage"    # Ljava/lang/String;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    .line 72
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeSession()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseConnect;->closeSession()V

    .line 120
    :cond_0
    return-void
.end method

.method public declared-synchronized getSession()Lcom/fimi/kernel/connect/BaseConnect;
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized hasSession()Z
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDeviceConnected()Z
    .locals 2

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x0

    .line 124
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/BaseConnect;->isDeviceConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :cond_0
    monitor-exit p0

    return v0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDeviveState(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 136
    monitor-enter p0

    if-nez p1, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public removeNoticeList(Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;)V
    .locals 4
    .param p1, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "remove":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/SessionManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .line 49
    .local v0, "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 50
    move-object v1, v0

    .line 54
    .end local v0    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    :cond_1
    if-eqz v1, :cond_2

    .line 55
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/SessionManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    return-void
.end method

.method public declared-synchronized removeSession()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    .line 76
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/BaseConnect;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendTimeCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->mSession:Lcom/fimi/kernel/connect/BaseConnect;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/BaseConnect;->sendTimeCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showListAll()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/SessionManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method
