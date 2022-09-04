.class public Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;
.super Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.source "Socks5LogicHandler.java"


# static fields
.field private static final GSS_CONTEXT:Ljava/lang/String;

.field private static final GSS_TOKEN:Ljava/lang/String;

.field private static final HANDSHAKE_STEP:Ljava/lang/String;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SELECTED_AUTH_METHOD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SelectedAuthMethod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".HandshakeStep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".GSSContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".GSSToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 3
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 174
    .local v1, "method":B
    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 178
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v4

    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_1

    .line 186
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getUserName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 187
    .local v3, "user":[B
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPassword()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 188
    .local v2, "pwd":[B
    array-length v4, v3

    add-int/lit8 v4, v4, 0x3

    array-length v5, v2

    add-int/2addr v4, v5

    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 190
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 191
    array-length v4, v3

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 192
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 193
    array-length v4, v2

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 194
    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 13
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v7

    sget-object v8, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v7, v8}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ietf/jgss/GSSContext;

    .line 211
    .local v1, "ctx":Lorg/ietf/jgss/GSSContext;
    if-nez v1, :cond_2

    .line 213
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v3

    .line 214
    .local v3, "manager":Lorg/ietf/jgss/GSSManager;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getServiceKerberosName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v5

    .line 215
    .local v5, "serverName":Lorg/ietf/jgss/GSSName;
    new-instance v2, Lorg/ietf/jgss/Oid;

    const-string v7, "1.2.840.113554.1.2.2"

    invoke-direct {v2, v7}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "krb5OID":Lorg/ietf/jgss/Oid;
    sget-object v7, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 218
    sget-object v7, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Available mechs:"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3}, Lorg/ietf/jgss/GSSManager;->getMechs()[Lorg/ietf/jgss/Oid;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v4, v8, v7

    .line 220
    .local v4, "o":Lorg/ietf/jgss/Oid;
    invoke-virtual {v4, v2}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 221
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "Found Kerberos V OID available"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 223
    :cond_0
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "{} with oid = {}"

    invoke-virtual {v3, v4}, Lorg/ietf/jgss/GSSManager;->getNamesForMech(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;

    move-result-object v12

    invoke-interface {v10, v11, v12, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 227
    .end local v4    # "o":Lorg/ietf/jgss/Oid;
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v2, v7, v8}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v1

    .line 229
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    .line 230
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    .line 231
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v7

    sget-object v8, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v7, v8, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v2    # "krb5OID":Lorg/ietf/jgss/Oid;
    .end local v3    # "manager":Lorg/ietf/jgss/GSSManager;
    .end local v5    # "serverName":Lorg/ietf/jgss/GSSName;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v7

    sget-object v8, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v7, v8}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v6, v7

    check-cast v6, [B

    .line 237
    .local v6, "token":[B
    if-eqz v6, :cond_3

    .line 238
    sget-object v7, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "  Received Token[{}] = {}"

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    :cond_3
    const/4 v0, 0x0

    .line 242
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v1}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v7

    if-nez v7, :cond_5

    .line 244
    if-nez v6, :cond_4

    .line 245
    const/16 v7, 0x20

    new-array v6, v7, [B

    .line 248
    :cond_4
    const/4 v7, 0x0

    array-length v8, v6

    invoke-interface {v1, v6, v7, v8}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object v6

    .line 252
    if-eqz v6, :cond_5

    .line 253
    sget-object v7, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "  Sending Token[{}] = {}"

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v7

    sget-object v8, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    array-length v7, v6

    add-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 257
    const/4 v7, 0x2

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    invoke-virtual {v0, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 260
    array-length v7, v6

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lorg/apache/mina/proxy/utils/ByteUtilities;->intToNetworkByteOrder(II)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 261
    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 265
    :cond_5
    return-object v0

    .line 257
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .prologue
    .line 98
    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    array-length v2, v2

    int-to-byte v1, v2

    .line 99
    .local v1, "nbMethods":B
    add-int/lit8 v2, v1, 0x2

    invoke-static {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 101
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 102
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 103
    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 105
    return-object v0
.end method

.method private encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v4, 0x6

    .line 118
    .local v4, "len":I
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 119
    .local v1, "adr":Ljava/net/InetSocketAddress;
    const/4 v0, 0x0

    .line 120
    .local v0, "addressType":B
    const/4 v3, 0x0

    .line 122
    .local v3, "host":[B
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 123
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    .line 124
    add-int/lit8 v4, v4, 0x10

    .line 125
    const/4 v0, 0x4

    .line 141
    :cond_0
    :goto_0
    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 143
    .local v2, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 144
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getCommandCode()B

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 145
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 146
    invoke-virtual {v2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 148
    if-nez v3, :cond_5

    .line 149
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 155
    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPort()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 157
    return-object v2

    .line 126
    .end local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 127
    add-int/lit8 v4, v4, 0x4

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ASCII"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 133
    :goto_2
    if-eqz v3, :cond_4

    .line 134
    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 135
    const/4 v0, 0x3

    goto :goto_0

    .line 131
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 137
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "SocksProxyRequest object has no suitable endpoint information"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    .restart local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    array-length v5, v3

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 152
    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1
.end method

.method private writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .param p3, "step"    # I

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez p3, :cond_2

    .line 281
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 291
    :cond_0
    :goto_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 292
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 295
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 296
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;

    .line 301
    :goto_1
    return-void

    .line 282
    :cond_2
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 284
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 287
    const/4 p3, 0x2

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "Unable to send Socks request: "

    invoke-virtual {p0, v2, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected closeSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ietf/jgss/GSSContext;

    .line 448
    .local v0, "ctx":Lorg/ietf/jgss/GSSContext;
    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->closeSession(Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Lorg/ietf/jgss/GSSException;
    invoke-virtual {v1}, Lorg/ietf/jgss/GSSException;->printStackTrace()V

    .line 453
    invoke-super {p0, p1, v1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    .locals 15
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "step"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v4, 0x2

    .line 339
    .local v4, "len":I
    if-nez p3, :cond_7

    .line 341
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    .line 343
    .local v5, "method":B
    const/4 v11, -0x1

    if-ne v5, v11, :cond_0

    .line 344
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "No acceptable authentication method to use with the socks proxy server"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 348
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v5    # "method":B
    :cond_1
    :goto_0
    if-lez v4, :cond_2

    .line 416
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v11

    add-int/2addr v11, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 421
    :cond_2
    const/4 v3, 0x0

    .line 422
    .local v3, "isAuthenticating":Z
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_4

    .line 423
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v11, v12}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 424
    .restart local v5    # "method":B
    const/4 v11, 0x1

    if-ne v5, v11, :cond_4

    .line 425
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v11, v12}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ietf/jgss/GSSContext;

    .line 426
    .local v2, "ctx":Lorg/ietf/jgss/GSSContext;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v11

    if-nez v11, :cond_4

    .line 427
    :cond_3
    const/4 v3, 0x1

    .line 432
    .end local v2    # "ctx":Lorg/ietf/jgss/GSSContext;
    .end local v5    # "method":B
    :cond_4
    if-nez v3, :cond_5

    .line 433
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 437
    .end local v3    # "isAuthenticating":Z
    :cond_6
    :goto_1
    return-void

    .line 350
    :cond_7
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_c

    .line 352
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v11, v12}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 354
    .restart local v5    # "method":B
    const/4 v11, 0x1

    if-ne v5, v11, :cond_b

    .line 355
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    .line 357
    .local v6, "oldPos":I
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 358
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Authentication failed"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 360
    :cond_8
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xff

    if-ne v11, v12, :cond_9

    .line 361
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Authentication failed: GSS API Security Context Failure"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 364
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_a

    .line 365
    const/4 v11, 0x2

    new-array v8, v11, [B

    .line 366
    .local v8, "size":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 367
    invoke-static {v8}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([B)I

    move-result v7

    .line 368
    .local v7, "s":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    if-lt v11, v7, :cond_6

    .line 369
    new-array v10, v7, [B

    .line 370
    .local v10, "token":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 371
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v11

    sget-object v12, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v11, v12, v10}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v4, 0x0

    .line 373
    goto/16 :goto_0

    .line 377
    .end local v7    # "s":I
    .end local v8    # "size":[B
    .end local v10    # "token":[B
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 380
    .end local v6    # "oldPos":I
    :cond_b
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    if-eqz v11, :cond_1

    .line 381
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Authentication failed"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 384
    .end local v5    # "method":B
    :cond_c
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_1

    .line 386
    const/4 v11, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v1

    .line 387
    .local v1, "addressType":B
    const/4 v4, 0x6

    .line 388
    const/4 v11, 0x4

    if-ne v1, v11, :cond_d

    .line 389
    add-int/lit8 v4, v4, 0x10

    .line 398
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    if-lt v11, v4, :cond_6

    .line 400
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v9

    .line 401
    .local v9, "status":B
    sget-object v11, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v12, "  response status: {}"

    invoke-static {v9}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->getReplyCodeAsString(B)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    if-nez v9, :cond_10

    .line 404
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v11

    add-int/2addr v11, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 405
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->setHandshakeComplete()V

    goto/16 :goto_1

    .line 390
    .end local v9    # "status":B
    :cond_d
    const/4 v11, 0x1

    if-ne v1, v11, :cond_e

    .line 391
    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    .line 392
    :cond_e
    const/4 v11, 0x3

    if-ne v1, v11, :cond_f

    .line 393
    const/4 v11, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    goto :goto_2

    .line 395
    :cond_f
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Unknwon address type"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 409
    .restart local v9    # "status":B
    :cond_10
    new-instance v11, Ljava/lang/Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Proxy handshake failed - Code: 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    aput-byte v9, v13, v14

    invoke-static {v13}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 312
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 314
    .local v1, "step":I
    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-eq v2, v5, :cond_1

    .line 315
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wrong socks version running on server"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v1    # "step":I
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Proxy handshake failed: "

    invoke-virtual {p0, v2, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    .restart local v1    # "step":I
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 319
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lt v2, v4, :cond_3

    .line 320
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 312
    .end local v1    # "step":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 321
    .restart local v1    # "step":I
    :cond_3
    if-ne v1, v4, :cond_0

    :try_start_3
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 322
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
