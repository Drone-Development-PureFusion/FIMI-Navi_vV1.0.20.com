.class public Lorg/apache/mina/filter/logging/LoggingFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "LoggingFilter.java"


# instance fields
.field private exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private final logger:Lorg/slf4j/Logger;

.field private messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private final name:Ljava/lang/String;

.field private sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/apache/mina/filter/logging/LoggingFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 52
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->WARN:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 55
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 58
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 61
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 64
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 67
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 70
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 94
    if-nez p1, :cond_0

    .line 95
    const-class v0, Lorg/apache/mina/filter/logging/LoggingFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    .line 100
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    .line 101
    return-void

    .line 97
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventLevel"    # Lorg/apache/mina/filter/logging/LogLevel;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_4
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventLevel"    # Lorg/apache/mina/filter/logging/LogLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;

    .prologue
    .line 149
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :pswitch_4
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "eventLevel"    # Lorg/apache/mina/filter/logging/LogLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "EXCEPTION :"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 203
    return-void
.end method

.method public getExceptionCaughtLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getMessageReceivedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getMessageSentLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionClosedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionCreatedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionIdleLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionOpenedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "RECEIVED: {}"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "SENT: {}"

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 215
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "CLOSED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 238
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 239
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "CREATED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 220
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 221
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "IDLE"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 232
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 233
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "OPENED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 226
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 227
    return-void
.end method

.method public setExceptionCaughtLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 248
    return-void
.end method

.method public setMessageReceivedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .prologue
    .line 265
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 266
    return-void
.end method

.method public setMessageSentLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .prologue
    .line 283
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 284
    return-void
.end method

.method public setSessionClosedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .prologue
    .line 355
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 356
    return-void
.end method

.method public setSessionCreatedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .prologue
    .line 301
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 302
    return-void
.end method

.method public setSessionIdleLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .prologue
    .line 337
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 338
    return-void
.end method

.method public setSessionOpenedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .prologue
    .line 319
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 320
    return-void
.end method
