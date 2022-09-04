.class public final Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
.super Lorg/apache/mina/core/future/DefaultConnectFuture;
.source "AbstractPollingIoConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectionRequest"
.end annotation


# instance fields
.field private final deadline:J

.field private final handle:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field private final sessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/lang/Object;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 4
    .param p1, "this$0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    .local p2, "handle":Ljava/lang/Object;, "TH;"
    .local p3, "callback":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    .line 612
    iput-object p2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->handle:Ljava/lang/Object;

    .line 613
    invoke-virtual {p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectTimeoutMillis()J

    move-result-wide v0

    .line 615
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 616
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J

    .line 621
    :goto_0
    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->sessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    .line 622
    return-void

    .line 618
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    .prologue
    .line 601
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->handle:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    .prologue
    .line 601
    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J

    return-wide v0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 638
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->cancel()Z

    move-result v0

    .line 643
    .local v0, "justCancelled":Z
    if-eqz v0, :cond_0

    .line 644
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V

    .line 646
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    .line 650
    .end local v0    # "justCancelled":Z
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getDeadline()J
    .locals 2

    .prologue
    .line 629
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J

    return-wide v0
.end method

.method public getHandle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->handle:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionInitializer()Lorg/apache/mina/core/session/IoSessionInitializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/session/IoSessionInitializer",
            "<+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.ConnectionRequest;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->sessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    return-object v0
.end method
