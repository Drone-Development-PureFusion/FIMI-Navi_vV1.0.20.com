.class Lorg/greenrobot/greendao/rx/RxBase;
.super Ljava/lang/Object;
.source "RxBase.java"


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
.end annotation


# instance fields
.field protected final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/greendao/rx/RxBase;->scheduler:Lrx/Scheduler;

    .line 40
    return-void
.end method

.method constructor <init>(Lrx/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxBase;->scheduler:Lrx/Scheduler;

    .line 49
    return-void
.end method


# virtual methods
.method public getScheduler()Lrx/Scheduler;
    .locals 1
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxBase;->scheduler:Lrx/Scheduler;

    return-object v0
.end method

.method protected wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    invoke-static {p1}, Lorg/greenrobot/greendao/rx/RxUtils;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxBase;->wrap(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected wrap(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "observable":Lrx/Observable;, "Lrx/Observable<TR;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxBase;->scheduler:Lrx/Scheduler;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxBase;->scheduler:Lrx/Scheduler;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 67
    .end local p1    # "observable":Lrx/Observable;, "Lrx/Observable<TR;>;"
    :cond_0
    return-object p1
.end method
