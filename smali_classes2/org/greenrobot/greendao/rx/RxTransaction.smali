.class public Lorg/greenrobot/greendao/rx/RxTransaction;
.super Lorg/greenrobot/greendao/rx/RxBase;
.source "RxTransaction.java"


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .locals 0
    .param p1, "daoSession"    # Lorg/greenrobot/greendao/AbstractDaoSession;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/greenrobot/greendao/rx/RxBase;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;Lrx/Scheduler;)V
    .locals 0
    .param p1, "daoSession"    # Lorg/greenrobot/greendao/AbstractDaoSession;
    .param p2, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/rx/RxBase;-><init>(Lrx/Scheduler;)V

    .line 40
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/greenrobot/greendao/rx/RxTransaction;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1
    .param p0, "x0"    # Lorg/greenrobot/greendao/rx/RxTransaction;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 62
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lorg/greenrobot/greendao/rx/RxTransaction$2;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxTransaction$2;-><init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxTransaction;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getDaoSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-object v0
.end method

.method public bridge synthetic getScheduler()Lrx/Scheduler;
    .locals 1
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 30
    invoke-super {p0}, Lorg/greenrobot/greendao/rx/RxBase;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Runnable;)Lrx/Observable;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/greenrobot/greendao/rx/RxTransaction$1;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxTransaction$1;-><init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxTransaction;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
