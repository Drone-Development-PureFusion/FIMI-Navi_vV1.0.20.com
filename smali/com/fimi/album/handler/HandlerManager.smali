.class public Lcom/fimi/album/handler/HandlerManager;
.super Ljava/lang/Object;
.source "HandlerManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "otherThreadHandler"

.field private static mHandlerManager:Lcom/fimi/album/handler/HandlerManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/fimi/album/handler/HandlerManager;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/fimi/album/handler/HandlerManager;->mHandlerManager:Lcom/fimi/album/handler/HandlerManager;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/fimi/album/handler/HandlerManager;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/fimi/album/handler/HandlerManager;->mHandlerManager:Lcom/fimi/album/handler/HandlerManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/fimi/album/handler/HandlerManager;

    invoke-direct {v0}, Lcom/fimi/album/handler/HandlerManager;-><init>()V

    sput-object v0, Lcom/fimi/album/handler/HandlerManager;->mHandlerManager:Lcom/fimi/album/handler/HandlerManager;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/fimi/album/handler/HandlerManager;->mHandlerManager:Lcom/fimi/album/handler/HandlerManager;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getHandlerInMainThread()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public getHandlerInMainThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 3
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "otherThreadHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 36
    .local v1, "otherThreadHandler":Landroid/os/Handler;
    return-object v1
.end method
