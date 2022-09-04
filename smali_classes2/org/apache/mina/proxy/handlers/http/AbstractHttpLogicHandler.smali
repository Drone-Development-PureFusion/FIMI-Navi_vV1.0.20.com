.class public abstract Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
.super Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.source "AbstractHttpLogicHandler.java"


# static fields
.field private static final CRLF_DELIMITER:[B

.field private static final DECODER:Ljava/lang/String;

.field private static final HTTP_DELIMITER:[B

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private contentLength:I

.field private entityBodyLimitPosition:I

.field private entityBodyStartPosition:I

.field private hasChunkedData:Z

.field private parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

.field private responseData:Lorg/apache/mina/core/buffer/IoBuffer;

.field private waitingChunkedData:Z

.field private waitingFooters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Decoder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    return-void

    .line 53
    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    .line 55
    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 62
    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 67
    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 108
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "x2"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    return-void
.end method

.method private reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .prologue
    .line 331
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Reconnecting to proxy ..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    .line 336
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;-><init>(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/proxy/session/ProxyIoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/ProxyConnector;->connect(Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    .line 352
    return-void
.end method

.method private writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 8
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .prologue
    .line 311
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->toHttpString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 314
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    sget-object v3, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "   write:\n{}"

    const-string v5, "\r"

    const-string v6, "\\r"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "\\n\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "Unable to send HTTP request: "

    invoke-virtual {p0, v3, v2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected decodeResponse(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .locals 10
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 362
    sget-object v5, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "  parseResponse()"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 365
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "responseLines":[Ljava/lang/String;
    aget-object v5, v3, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "statusLine":[Ljava/lang/String;
    array-length v5, v4

    if-ge v5, v9, :cond_0

    .line 373
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid response status line ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "). Response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 377
    :cond_0
    aget-object v5, v4, v8

    const-string v6, "^\\d\\d\\d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 378
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid response code ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "). Response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 381
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 383
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 384
    aget-object v5, v3, v2

    const-string v6, ":\\s?"

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "args":[Ljava/lang/String;
    aget-object v5, v0, v7

    aget-object v6, v0, v8

    invoke-static {v1, v5, v6, v7}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "args":[Ljava/lang/String;
    :cond_2
    new-instance v5, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    aget-object v6, v4, v7

    aget-object v7, v4, v8

    invoke-direct {v5, v6, v7, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v5
.end method

.method public abstract handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 15
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, " messageReceived()"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v10

    sget-object v11, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    invoke-interface {v10, v11}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    .line 121
    .local v3, "decoder":Lorg/apache/mina/proxy/utils/IoBufferDecoder;
    if-nez v3, :cond_0

    .line 122
    new-instance v3, Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    .end local v3    # "decoder":Lorg/apache/mina/proxy/utils/IoBufferDecoder;
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    invoke-direct {v3, v10}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;-><init>([B)V

    .line 123
    .restart local v3    # "decoder":Lorg/apache/mina/proxy/utils/IoBufferDecoder;
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v10

    sget-object v11, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    invoke-interface {v10, v11, v3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    :try_start_1
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    if-nez v10, :cond_5

    .line 129
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 130
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_2

    .line 276
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_2
    :try_start_2
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "responseHeader":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v10}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v10

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyStartPosition:I

    .line 138
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "  response header received:\n{}"

    const-string v12, "\r"

    const-string v13, "\\r"

    .line 139
    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\n"

    const-string v14, "\\n\n"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 138
    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0, v8}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->decodeResponse(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 145
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 146
    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v10

    const/16 v11, 0x12c

    if-lt v10, v11, :cond_4

    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v10

    const/16 v11, 0x133

    if-gt v10, v11, :cond_4

    .line 147
    :cond_3
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 148
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->setHandshakeComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 269
    .end local v8    # "responseHeader":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 270
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_3
    instance-of v10, v4, Lorg/apache/mina/proxy/ProxyAuthException;

    if-eqz v10, :cond_f

    .line 271
    check-cast v4, Lorg/apache/mina/proxy/ProxyAuthException;

    .end local v4    # "ex":Ljava/lang/Exception;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .end local v3    # "decoder":Lorg/apache/mina/proxy/utils/IoBufferDecoder;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 152
    .restart local v3    # "decoder":Lorg/apache/mina/proxy/utils/IoBufferDecoder;
    .restart local v8    # "responseHeader":Ljava/lang/String;
    :cond_4
    :try_start_4
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v10

    const-string v11, "Content-Length"

    invoke-static {v10, v11}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "contentLengthHeader":Ljava/lang/String;
    if-nez v2, :cond_b

    .line 156
    const/4 v10, 0x0

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 163
    .end local v2    # "contentLengthHeader":Ljava/lang/String;
    .end local v8    # "responseHeader":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    if-nez v10, :cond_7

    .line 164
    iget v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-lez v10, :cond_6

    .line 165
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v9

    .line 166
    .local v9, "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v9, :cond_1

    .line 169
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 170
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v10, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 171
    const/4 v10, 0x0

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 174
    .end local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_6
    const-string v10, "chunked"

    iget-object v11, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v11}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v11

    const-string v12, "Transfer-Encoding"

    invoke-static {v11, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 177
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "Retrieving additional http response chunks"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 178
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    .line 179
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    .line 183
    :cond_7
    iget-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    if-eqz v10, :cond_a

    .line 185
    :goto_2
    iget-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    if-eqz v10, :cond_9

    .line 186
    iget v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-nez v10, :cond_8

    .line 187
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 188
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v9

    .line 189
    .restart local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v9, :cond_1

    .line 193
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "chunkSize":Ljava/lang/String;
    const/16 v10, 0x3b

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 195
    .local v7, "pos":I
    if-ltz v7, :cond_c

    .line 196
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 201
    iget v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-lez v10, :cond_8

    .line 202
    iget v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    add-int/lit8 v10, v10, 0x2

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 203
    iget v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    .line 207
    .end local v1    # "chunkSize":Ljava/lang/String;
    .end local v7    # "pos":I
    .end local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_8
    iget v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-nez v10, :cond_d

    .line 208
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    .line 209
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    .line 210
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v10}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v10

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyLimitPosition:I

    .line 224
    :cond_9
    :goto_4
    iget-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    if-eqz v10, :cond_a

    .line 225
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 226
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v9

    .line 227
    .restart local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v9, :cond_1

    .line 231
    invoke-virtual {v9}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    .line 232
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    .line 245
    .end local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_a
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v10}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 247
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "  end of response received:\n{}"

    iget-object v12, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 248
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v12

    .line 247
    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget v11, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyStartPosition:I

    invoke-virtual {v10, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 252
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget v11, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyLimitPosition:I

    invoke-virtual {v10, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 253
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    iget-object v11, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->setBody(Ljava/lang/String;)V

    .line 256
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v10}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 257
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 259
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {p0, v10}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    .line 261
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 262
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    .line 263
    const/4 v10, -0x1

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 264
    sget-object v10, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 266
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->isHandshakeComplete()Z

    move-result v10

    if-nez v10, :cond_1

    .line 267
    invoke-virtual/range {p0 .. p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    goto/16 :goto_0

    .line 158
    .restart local v2    # "contentLengthHeader":Ljava/lang/String;
    .restart local v8    # "responseHeader":Ljava/lang/String;
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 159
    iget v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    goto/16 :goto_1

    .line 198
    .end local v2    # "contentLengthHeader":Ljava/lang/String;
    .end local v8    # "responseHeader":Ljava/lang/String;
    .restart local v1    # "chunkSize":Ljava/lang/String;
    .restart local v7    # "pos":I
    .restart local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 214
    .end local v1    # "chunkSize":Ljava/lang/String;
    .end local v7    # "pos":I
    .end local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v9

    .line 215
    .restart local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v9, :cond_1

    .line 218
    const/4 v10, 0x0

    iput v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 219
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v10, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 220
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto/16 :goto_2

    .line 237
    :cond_e
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "footer":Ljava/lang/String;
    const-string v10, ":\\s?"

    const/4 v11, 0x2

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "f":[Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v10}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x1

    aget-object v12, v5, v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v10, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 241
    iget-object v10, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    sget-object v11, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v10, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 274
    .end local v5    # "f":[Ljava/lang/String;
    .end local v6    # "footer":Ljava/lang/String;
    .end local v9    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v4    # "ex":Ljava/lang/Exception;
    :cond_f
    :try_start_5
    new-instance v10, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v11, "Handshake failed"

    invoke-direct {v10, v11, v4}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    .line 296
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isReconnectionNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    goto :goto_0
.end method
