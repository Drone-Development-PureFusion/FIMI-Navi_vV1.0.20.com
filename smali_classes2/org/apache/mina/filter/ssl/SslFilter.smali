.class public Lorg/apache/mina/filter/ssl/SslFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SslFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;,
        Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;
    }
.end annotation


# static fields
.field public static final DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

.field public static final SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

.field private static final SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

.field private static final START_HANDSHAKE:Z = true

.field public static final USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final autoStart:Z

.field private client:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private needClientAuth:Z

.field final sslContext:Ljavax/net/ssl/SSLContext;

.field private wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    const-class v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    .line 97
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "session"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    .line 109
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "disableOnce"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    .line 119
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "useNotification"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    .line 134
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "peerAddress"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    .line 141
    new-instance v0, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    const-string v1, "SESSION_SECURED"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    .line 148
    new-instance v0, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    const-string v1, "SESSION_UNSECURED"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    .line 151
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "nextFilter"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    .line 153
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    const-string v2, "handler"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;Z)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Z)V
    .locals 2
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "autoStart"    # Z

    .prologue
    .line 192
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sslContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 198
    iput-boolean p2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    .line 199
    return-void
.end method

.method private getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 797
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 799
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v0, :cond_0

    .line 800
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 803
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 804
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not managed by this filter."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 807
    :cond_1
    return-object v0
.end method

.method private handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "sslHandler"    # Lorg/apache/mina/filter/ssl/SslHandler;

    .prologue
    .line 789
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 791
    .local v0, "readBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    .line 794
    :cond_0
    return-void
.end method

.method private handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "sslHandler"    # Lorg/apache/mina/filter/ssl/SslHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 771
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "{}: Processing the SSL Data "

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushPreHandshakeEvents()V

    .line 781
    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    .line 784
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    .line 785
    return-void
.end method

.method private initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v3

    .line 738
    .local v3, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    const/4 v0, 0x0

    .line 742
    .local v0, "future":Lorg/apache/mina/core/future/WriteFuture;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->closeOutbound()Z

    move-result v4

    if-nez v4, :cond_0

    .line 743
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "SSL session is shut down already."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v4}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    move-object v4, v1

    .line 766
    :goto_0
    return-object v4

    .line 748
    :cond_0
    invoke-virtual {v3, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 750
    if-nez v0, :cond_3

    .line 751
    invoke-static {p2}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newWrittenFuture(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 754
    .end local v0    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .local v1, "future":Lorg/apache/mina/core/future/WriteFuture;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 755
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 758
    :cond_1
    sget-object v4, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v4}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 759
    sget-object v4, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    invoke-virtual {v3, p1, v4}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move-object v0, v1

    .end local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v0    # "future":Lorg/apache/mina/core/future/WriteFuture;
    move-object v4, v1

    .line 766
    goto :goto_0

    .line 761
    :catch_0
    move-exception v2

    .line 762
    .local v2, "se":Ljavax/net/ssl/SSLException;
    :goto_2
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 763
    throw v2

    .line 761
    .end local v0    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .end local v2    # "se":Ljavax/net/ssl/SSLException;
    .restart local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v0    # "future":Lorg/apache/mina/core/future/WriteFuture;
    goto :goto_2

    :cond_3
    move-object v1, v0

    .end local v0    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .restart local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    goto :goto_1
.end method

.method private initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 5
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 721
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "{} : Starting the first handshake"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v1

    .line 725
    .local v1, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 727
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 734
    return-void

    .line 727
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 732
    throw v0
.end method

.method private isCloseNotify(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 592
    instance-of v4, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v4, :cond_0

    .line 605
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 596
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 597
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 599
    .local v1, "offset":I
    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    .line 600
    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-ne v4, v6, :cond_2

    add-int/lit8 v4, v1, 0x2

    .line 601
    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, 0x2

    .line 602
    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v4, v1, 0x2

    .line 603
    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    add-int/lit8 v4, v1, 0x2

    .line 604
    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-ne v4, v6, :cond_2

    :cond_1
    add-int/lit8 v4, v1, 0x3

    .line 605
    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 551
    instance-of v6, p3, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    if-eqz v6, :cond_6

    move-object v2, p3

    .line 554
    check-cast v2, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    .line 555
    .local v2, "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    invoke-virtual {v2}, Lorg/apache/mina/core/write/WriteToClosedSessionException;->getRequests()Ljava/util/List;

    move-result-object v3

    .line 556
    .local v3, "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    const/4 v1, 0x0

    .line 558
    .local v1, "containsCloseNotify":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/write/WriteRequest;

    .line 559
    .local v5, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 560
    const/4 v1, 0x1

    .line 565
    .end local v5    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_1
    if-eqz v1, :cond_6

    .line 566
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 589
    .end local v1    # "containsCloseNotify":Z
    .end local v2    # "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v3    # "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    :cond_2
    :goto_0
    return-void

    .line 571
    .restart local v1    # "containsCloseNotify":Z
    .restart local v2    # "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .restart local v3    # "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    .local v4, "newFailedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/write/WriteRequest;

    .line 574
    .restart local v5    # "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 575
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 579
    .end local v5    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 584
    new-instance v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v0, v4, v6, v7}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p3    # "cause":Ljava/lang/Throwable;
    .local v0, "cause":Ljava/lang/Throwable;
    move-object p3, v0

    .line 588
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "containsCloseNotify":Z
    .end local v2    # "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v3    # "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    .end local v4    # "newFailedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    .restart local p3    # "cause":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 663
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 665
    .local v2, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v2, :cond_1

    .line 668
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const/4 v0, 0x0

    .line 675
    .local v0, "future":Lorg/apache/mina/core/future/WriteFuture;
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 676
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 677
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 678
    new-instance v3, Lorg/apache/mina/filter/ssl/SslFilter$1;

    invoke-direct {v3, p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter$1;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {v0, v3}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    .line 684
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 691
    if-nez v0, :cond_0

    .line 692
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, "se":Ljavax/net/ssl/SSLException;
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 689
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 691
    .end local v1    # "se":Ljavax/net/ssl/SSLException;
    :catchall_1
    move-exception v3

    if-nez v0, :cond_3

    .line 692
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    :cond_3
    throw v3
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 610
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 611
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "{}: Writing Message : {}"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 614
    :cond_0
    const/4 v2, 0x1

    .line 615
    .local v2, "needsFlush":Z
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v4

    .line 618
    .local v4, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 620
    invoke-virtual {v4, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 650
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    if-eqz v2, :cond_1

    .line 653
    :try_start_2
    invoke-virtual {v4}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 659
    :cond_1
    return-void

    .line 623
    :cond_2
    :try_start_3
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v5}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 625
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v5}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-virtual {v4, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 655
    :catch_0
    move-exception v3

    .line 656
    .local v3, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v4}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 657
    throw v3

    .line 629
    .end local v3    # "se":Ljavax/net/ssl/SSLException;
    :cond_3
    :try_start_5
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 631
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v4}, Lorg/apache/mina/filter/ssl/SslHandler;->isWritingEncryptedData()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 633
    invoke-virtual {v4, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 634
    :cond_4
    invoke-virtual {v4}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 636
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 637
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/filter/ssl/SslHandler;->encrypt(Ljava/nio/ByteBuffer;)V

    .line 638
    invoke-virtual {v4}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 639
    .local v1, "encryptedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    new-instance v5, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    const/4 v6, 0x0

    invoke-direct {v5, p3, v1, v6}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    invoke-virtual {v4, p1, v5}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 642
    .end local v1    # "encryptedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 644
    invoke-virtual {v4, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 647
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;
    .locals 6
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/mina/core/service/IoAcceptor;

    if-eqz v2, :cond_1

    .line 255
    const-string v2, "Session Server"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :goto_0
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 265
    .local v1, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v1, :cond_2

    .line 266
    const-string v2, "(no sslEngine)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 258
    .end local v1    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :cond_1
    const-string v2, "Session Client"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    .restart local v1    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    const-string v2, "(SSL)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 271
    :cond_3
    const-string v2, "(ssl...)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getSslSession(Lorg/apache/mina/core/session/IoSession;)Ljavax/net/ssl/SSLSession;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 208
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public initiateHandshake(Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 707
    .local v0, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    if-nez v0, :cond_0

    .line 708
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "No filter chain"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_0
    const-class v2, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    .line 713
    .local v1, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    if-nez v1, :cond_1

    .line 714
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "No SSL next filter in the chain"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 717
    :cond_1
    invoke-direct {p0, v1, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 718
    return-void
.end method

.method public isNeedClientAuth()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    return v0
.end method

.method public isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    const/4 v1, 0x0

    .line 287
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 289
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v0, :cond_0

    .line 294
    :goto_0
    return v1

    .line 293
    :cond_0
    monitor-enter v0

    .line 294
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUseClientMode()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    return v0
.end method

.method public isWantClientAuth()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 483
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 484
    sget-object v5, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "{}: Message received : {}"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v3

    .line 489
    .local v3, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    monitor-enter v3

    .line 490
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 494
    invoke-virtual {v3, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    .line 533
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    .line 536
    return-void

    .line 496
    :cond_2
    :try_start_1
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V

    .line 503
    invoke-direct {p0, p1, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    .line 505
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 506
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 507
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 512
    :goto_1
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 514
    invoke-virtual {v3, p1, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v4

    .line 518
    .local v4, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_3
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v5

    if-nez v5, :cond_4

    .line 519
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v5, "SSL handshake failed."

    invoke-direct {v2, v5}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, "newSsle":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2, v4}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 521
    move-object v4, v2

    .line 524
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 530
    .end local v2    # "newSsle":Ljavax/net/ssl/SSLException;
    :goto_2
    throw v4

    .line 533
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v4    # "ssle":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 509
    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_3
    :try_start_4
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 527
    .restart local v4    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 540
    instance-of v1, p3, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 541
    check-cast v0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    .line 542
    .local v0, "wrappedRequest":Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 546
    .end local v0    # "wrappedRequest":Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
    :cond_0
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 452
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 453
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 455
    :cond_0
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 5
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 426
    const-class v3, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {p1, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    const-string v0, "Only one SSL filter is permitted in a chain."

    .line 428
    .local v0, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 429
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Adding the SSL Filter {} to the chain"

    invoke-interface {v3, v4, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    .line 435
    .local v1, "session":Lorg/apache/mina/core/session/IoSession;
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v3, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance v2, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-direct {v2, p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 441
    .local v2, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_2

    .line 442
    :cond_1
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLServerSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    .line 445
    :cond_2
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    .line 447
    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v3, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 460
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    .line 461
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 471
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 473
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 474
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 479
    return-void

    .line 474
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 477
    :catchall_1
    move-exception v1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    throw v1
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0
    .param p1, "needClientAuth"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    .line 358
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0
    .param p1, "clientMode"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    .line 340
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0
    .param p1, "wantClientAuth"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    .line 376
    return-void
.end method

.method public startSsl(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v2

    .line 225
    .local v2, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    sget-object v4, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 228
    .local v0, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 229
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    .line 230
    invoke-virtual {v2, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 231
    const/4 v3, 0x1

    .line 235
    .end local v0    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .local v3, "started":Z
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    return v3

    .line 233
    .end local v3    # "started":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "started":Z
    goto :goto_0

    .line 235
    .end local v3    # "started":Z
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 240
    throw v1
.end method

.method public stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v3

    .line 308
    .local v3, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    sget-object v4, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 312
    .local v1, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    invoke-direct {p0, v1, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    .line 314
    .local v0, "future":Lorg/apache/mina/core/future/WriteFuture;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    return-object v0

    .line 314
    .end local v0    # "future":Lorg/apache/mina/core/future/WriteFuture;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v3}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 319
    throw v2
.end method
