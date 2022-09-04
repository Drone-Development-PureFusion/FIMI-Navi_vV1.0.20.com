.class public abstract Lorg/apache/mina/handler/stream/StreamIoHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "StreamIoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;
    }
.end annotation


# static fields
.field private static final KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

.field private static final KEY_OUT:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private readTimeout:I

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-class v0, Lorg/apache/mina/handler/stream/StreamIoHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/handler/stream/StreamIoHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 49
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/handler/stream/StreamIoHandler;

    const-string v2, "in"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    .line 51
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/handler/stream/StreamIoHandler;

    const-string v2, "out"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_OUT:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 152
    sget-object v2, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/handler/stream/IoSessionInputStream;

    .line 154
    .local v1, "in":Lorg/apache/mina/handler/stream/IoSessionInputStream;
    const/4 v0, 0x0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    instance-of v2, p2, Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .end local v0    # "e":Ljava/io/IOException;
    check-cast v0, Ljava/io/IOException;

    .line 161
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v1, v0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->throwException(Ljava/io/IOException;)V

    .line 167
    :goto_1
    return-void

    .line 157
    :cond_1
    instance-of v2, p2, Ljava/io/IOException;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 158
    check-cast v0, Ljava/io/IOException;

    goto :goto_0

    .line 164
    :cond_2
    sget-object v2, Lorg/apache/mina/handler/stream/StreamIoHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unexpected exception."

    invoke-interface {v2, v3, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_1
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->readTimeout:I

    return v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->writeTimeout:I

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "buf"    # Ljava/lang/Object;

    .prologue
    .line 143
    sget-object v1, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/stream/IoSessionInputStream;

    .line 144
    .local v0, "in":Lorg/apache/mina/handler/stream/IoSessionInputStream;
    check-cast p2, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local p2    # "buf":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->write(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 145
    return-void
.end method

.method protected abstract processStreamIo(Lorg/apache/mina/core/session/IoSession;Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v2, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 130
    .local v0, "in":Ljava/io/InputStream;
    sget-object v2, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 132
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 174
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p2, v0, :cond_0

    .line 175
    new-instance v0, Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;

    new-instance v1, Ljava/net/SocketTimeoutException;

    const-string v2, "Read timeout"

    invoke-direct {v1, v2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 177
    :cond_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 113
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    iget v3, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->writeTimeout:I

    invoke-interface {v2, v3}, Lorg/apache/mina/core/session/IoSessionConfig;->setWriteTimeout(I)V

    .line 114
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    iget v4, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->readTimeout:I

    invoke-interface {v2, v3, v4}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 117
    new-instance v0, Lorg/apache/mina/handler/stream/IoSessionInputStream;

    invoke-direct {v0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;-><init>()V

    .line 118
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Lorg/apache/mina/handler/stream/IoSessionOutputStream;

    invoke-direct {v1, p1}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 119
    .local v1, "out":Ljava/io/OutputStream;
    sget-object v2, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v2, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/handler/stream/StreamIoHandler;->processStreamIo(Lorg/apache/mina/core/session/IoSession;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 122
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 86
    iput p1, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->readTimeout:I

    .line 87
    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0
    .param p1, "writeTimeout"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->writeTimeout:I

    .line 105
    return-void
.end method
