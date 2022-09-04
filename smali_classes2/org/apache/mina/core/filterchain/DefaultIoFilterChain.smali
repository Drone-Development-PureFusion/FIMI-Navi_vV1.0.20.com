.class public Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.super Ljava/lang/Object;
.source "DefaultIoFilterChain.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;,
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;,
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

.field private final name2entry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/apache/mina/core/session/AbstractIoSession;

.field private final tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    const-string v2, "connectFuture"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    .line 71
    const-class v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 10
    .param p1, "session"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    .line 85
    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    const-string v4, "head"

    new-instance v5, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;

    invoke-direct {v5, p0, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 86
    new-instance v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v5, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    const-string v7, "tail"

    new-instance v8, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;

    invoke-direct {v8, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    move-object v4, p0

    move-object v6, v2

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    iput-object v3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 87
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 88
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "x3"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "x3"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextInputClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "x3"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "x3"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method private callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 585
    sget-object v4, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v4}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/future/ConnectFuture;

    .line 586
    .local v2, "future":Lorg/apache/mina/core/future/ConnectFuture;
    if-nez v2, :cond_0

    .line 588
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 589
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    .line 590
    .local v3, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v3, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v3    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Unexpected exception from exceptionCaught handler."

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 597
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isClosing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 599
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 602
    :cond_1
    invoke-interface {v2, p3}, Lorg/apache/mina/core/future/ConnectFuture;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private callNextInputClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 613
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 614
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 615
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->inputClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 540
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 541
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 542
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 549
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 547
    throw v0
.end method

.method private callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 568
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 569
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 570
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 577
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 573
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 575
    throw v0
.end method

.method private callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 502
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 503
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 504
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 510
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 457
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 458
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 459
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 464
    throw v0
.end method

.method private callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 519
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 520
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 521
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 528
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 526
    throw v0
.end method

.method private callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 474
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 475
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 476
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 481
    throw v0
.end method

.method private callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 646
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 647
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 648
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 655
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 653
    throw v0
.end method

.method private callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 627
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 628
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    .line 629
    .local v2, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-interface {v1, v2, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 638
    .end local v1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v2    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 632
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 633
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Error;
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 635
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 636
    throw v0
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other filter is using the same name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    return-void
.end method

.method private checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 4
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 435
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    if-nez v0, :cond_0

    .line 436
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :cond_0
    return-object v0
.end method

.method private deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    .locals 6
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .prologue
    const/16 v5, 0x3a

    .line 399
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 402
    .local v1, "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    .line 411
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreRemove(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 405
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 413
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostRemove(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 414
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .prologue
    .line 419
    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    .line 420
    .local v1, "prevEntry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 421
    .local v0, "nextEntry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    invoke-static {v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 422
    invoke-static {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$402(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 424
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-void
.end method

.method private register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 9
    .param p1, "prevEntry"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    const/16 v8, 0x3a

    .line 378
    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    .line 381
    .local v0, "newEntry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    invoke-interface {p3, p0, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$402(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 387
    invoke-static {p1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 388
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    invoke-interface {p3, p0, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 396
    return-void

    .line 382
    :catch_0
    move-exception v7

    .line 383
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreAdd(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 392
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 393
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    .line 394
    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostAdd(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 200
    .local v0, "baseEntry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    invoke-direct {p0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 199
    .end local v0    # "baseEntry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 194
    .local v0, "baseEntry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    invoke-direct {p0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 195
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 193
    .end local v0    # "baseEntry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .local v2, "entry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :try_start_1
    move-object v0, v2

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-object v4, v0

    invoke-direct {p0, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "entry":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 370
    .restart local v3    # "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z
    .locals 1
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 686
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 580
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 581
    return-void
.end method

.method public fireFilterClose()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 642
    return-void
.end method

.method public fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 622
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 623
    return-void
.end method

.method public fireInputClosed()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 608
    .local v0, "head":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextInputClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 609
    return-void
.end method

.method public fireMessageReceived(Ljava/lang/Object;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 531
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBytes(JJ)V

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 536
    return-void
.end method

.method public fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 553
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 561
    :goto_0
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->isEncoded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v1, v2, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 564
    :cond_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 558
    throw v0
.end method

.method public fireSessionClosed()V
    .locals 3

    .prologue
    .line 488
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/CloseFuture;->setClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v1, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 498
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 493
    throw v0
.end method

.method public fireSessionCreated()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 453
    return-void
.end method

.method public fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 4
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 513
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseIdleCount(Lorg/apache/mina/core/session/IdleStatus;J)V

    .line 514
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 515
    return-void
.end method

.method public fireSessionOpened()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    .line 470
    return-void
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 145
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 149
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 135
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 139
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 661
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v2, :cond_0

    .line 662
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    .line 666
    :cond_0
    return-object v1
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 673
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v2, :cond_0

    .line 674
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    .line 678
    :cond_0
    return-object v1
.end method

.method public getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 121
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    .line 122
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_1
    return-object v0

    .line 126
    .restart local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 97
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 101
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_0
    return-object v0
.end method

.method public getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 2
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 105
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 107
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    .line 108
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 115
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_1
    return-object v0

    .line 112
    .restart local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNextFilter(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 175
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 179
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public getNextFilter(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 155
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 2
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 165
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 169
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 229
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v2, :cond_1

    .line 230
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 232
    .local v1, "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-direct {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-object v1

    .line 237
    .end local v1    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 206
    .local v0, "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    invoke-direct {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    .line 207
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 205
    .end local v0    # "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 4
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 213
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    .line 214
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 220
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 8
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ")",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "oldFilterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    .line 317
    .local v1, "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v5, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v5, :cond_3

    .line 318
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 319
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v3

    .line 321
    .local v3, "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    const/4 v4, 0x0

    .line 324
    .local v4, "oldFilterName":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 325
    .local v2, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v1, v6, :cond_0

    .line 326
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "oldFilterName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v2    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    .restart local v4    # "oldFilterName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v5

    invoke-interface {p2, p0, v4, v5}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :try_start_2
    invoke-static {v1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v5

    invoke-interface {p2, p0, v4, v5}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    monitor-exit p0

    return-object v3

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreAdd(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 337
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .end local v3    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v4    # "oldFilterName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 345
    .restart local v1    # "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .restart local v3    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .restart local v4    # "oldFilterName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 346
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v1, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 347
    new-instance v5, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPostAdd(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 348
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local v4    # "oldFilterName":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    goto/16 :goto_0

    .line 357
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filter not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    .line 245
    .local v1, "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 249
    .local v2, "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {p2, p0, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :try_start_2
    invoke-static {v1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {p2, p0, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    monitor-exit p0

    return-object v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreAdd(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .end local v2    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 260
    .restart local v1    # "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .restart local v2    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catch_1
    move-exception v0

    .line 261
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v1, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 262
    new-instance v3, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostAdd(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized replace(Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 7
    .param p1, "oldFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    .line 272
    .local v1, "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v4, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v4, :cond_3

    .line 273
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 274
    const/4 v3, 0x0

    .line 277
    .local v3, "oldFilterName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 278
    .local v2, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_0

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "oldFilterName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v2    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    .restart local v3    # "oldFilterName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v4

    invoke-interface {p2, p0, v3, v4}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    invoke-static {v1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v4

    invoke-interface {p2, p0, v3, v4}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreAdd(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 290
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .end local v3    # "oldFilterName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 299
    .restart local v1    # "entry":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .restart local v3    # "oldFilterName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 300
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 301
    new-instance v4, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostAdd(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 302
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "oldFilterName":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    goto/16 :goto_0

    .line 311
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const/4 v2, 0x1

    .line 700
    .local v2, "empty":Z
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    .line 702
    .local v1, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v3, :cond_1

    .line 703
    if-nez v2, :cond_0

    .line 704
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :goto_1
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 713
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    goto :goto_0

    .line 706
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 718
    :cond_1
    if-eqz v2, :cond_2

    .line 719
    const-string v3, "empty"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_2
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
