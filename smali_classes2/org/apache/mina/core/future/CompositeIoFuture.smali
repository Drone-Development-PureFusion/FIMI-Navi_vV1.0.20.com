.class public Lorg/apache/mina/core/future/CompositeIoFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "CompositeIoFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">",
        "Lorg/apache/mina/core/future/DefaultIoFuture;"
    }
.end annotation


# instance fields
.field private volatile constructionFinished:Z

.field private final listener:Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/CompositeIoFuture",
            "<TE;>.Notifying",
            "Listener;"
        }
    .end annotation
.end field

.field private final unnotified:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/future/CompositeIoFuture;, "Lorg/apache/mina/core/future/CompositeIoFuture<TE;>;"
    .local p1, "children":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 46
    invoke-direct {p0, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 39
    new-instance v1, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;-><init>(Lorg/apache/mina/core/future/CompositeIoFuture;Lorg/apache/mina/core/future/CompositeIoFuture$1;)V

    iput-object v1, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->listener:Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->unnotified:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    .line 49
    .local v0, "f":Lorg/apache/mina/core/future/IoFuture;, "TE;"
    iget-object v2, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->listener:Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/future/IoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    .line 50
    iget-object v2, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->unnotified:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 53
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;, "TE;"
    :cond_0
    iput-boolean v3, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->constructionFinished:Z

    .line 54
    iget-object v1, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->unnotified:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/future/CompositeIoFuture;->setValue(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/future/CompositeIoFuture;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/future/CompositeIoFuture;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->unnotified:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/core/future/CompositeIoFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/future/CompositeIoFuture;

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->constructionFinished:Z

    return v0
.end method
