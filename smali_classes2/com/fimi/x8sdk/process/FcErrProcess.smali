.class public Lcom/fimi/x8sdk/process/FcErrProcess;
.super Ljava/lang/Object;
.source "FcErrProcess.java"


# static fields
.field private static final WHATID_SEND_ERRCODE:I = 0x0

.field private static final WHATID_SEND_VC_ERRCODE:I = 0x1

.field private static fcErrProcess:Lcom/fimi/x8sdk/process/FcErrProcess;


# instance fields
.field errCodeEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrCodeEntity;",
            ">;"
        }
    .end annotation
.end field

.field listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/listener/ErrcodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/fimi/x8sdk/process/FcErrProcess;

    invoke-direct {v0}, Lcom/fimi/x8sdk/process/FcErrProcess;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/process/FcErrProcess;->fcErrProcess:Lcom/fimi/x8sdk/process/FcErrProcess;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->errCodeEntities:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/fimi/x8sdk/process/FcErrProcess$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/x8sdk/process/FcErrProcess$1;-><init>(Lcom/fimi/x8sdk/process/FcErrProcess;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getFcErrProcess()Lcom/fimi/x8sdk/process/FcErrProcess;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/fimi/x8sdk/process/FcErrProcess;->fcErrProcess:Lcom/fimi/x8sdk/process/FcErrProcess;

    return-object v0
.end method


# virtual methods
.method public getErrCodeEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrCodeEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->errCodeEntities:Ljava/util/List;

    return-object v0
.end method

.method public registerErrListener(Lcom/fimi/x8sdk/listener/ErrcodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/ErrcodeListener;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public removeAllErrList()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method

.method public removeErrListener(Lcom/fimi/x8sdk/listener/ErrcodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/ErrcodeListener;

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs setErrCode([I)V
    .locals 3
    .param p1, "errCodes"    # [I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->errCodeEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->errCodeEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->errCodeEntities:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 74
    :cond_0
    return-void
.end method

.method public setVcErrorCode(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fimi/x8sdk/process/FcErrProcess;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    return-void
.end method
