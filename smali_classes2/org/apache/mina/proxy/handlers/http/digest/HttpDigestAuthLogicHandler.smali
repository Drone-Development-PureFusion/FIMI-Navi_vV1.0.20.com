.class public Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.source "HttpDigestAuthLogicHandler.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;

.field private static rnd:Ljava/security/SecureRandom;


# instance fields
.field private directives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-class v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    .line 68
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->rnd:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 4
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    .line 77
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "USER"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "PWD"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->checkRequiredProperties([Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 26
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 83
    sget-object v3, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v5, " doHandshake()"

    invoke-interface {v3, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 86
    new-instance v3, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "Authentication challenge not received"

    invoke-direct {v3, v5}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-object/from16 v20, v0

    check-cast v20, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 90
    .local v20, "req":Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v20 .. v20}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v14

    .line 93
    .local v14, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    if-lez v3, :cond_c

    .line 94
    sget-object v3, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v5, "  sending DIGEST challenge response"

    invoke-interface {v3, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 97
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "username"

    invoke-virtual/range {v20 .. v20}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v5

    const-string v6, "USER"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "realm"

    invoke-static {v3, v4, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "uri"

    invoke-static {v3, v4, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "opaque"

    invoke-static {v3, v4, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "nonce"

    invoke-static {v3, v4, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "algorithm"

    invoke-static {v3, v4, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, "algorithm":Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v3, "md5"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "md5-sess"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    new-instance v3, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "Unknown algorithm required by server"

    invoke-direct {v3, v5}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "algorithm":Ljava/lang/String;
    .end local v14    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 111
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "algorithm":Ljava/lang/String;
    .restart local v14    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "qop"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 112
    .local v18, "qop":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 113
    new-instance v22, Ljava/util/StringTokenizer;

    const-string v3, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v22, "st":Ljava/util/StringTokenizer;
    const/16 v24, 0x0

    .line 116
    .local v24, "token":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v23

    .line 118
    .local v23, "tk":Ljava/lang/String;
    const-string v3, "auth"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 128
    .end local v23    # "tk":Ljava/lang/String;
    :cond_4
    if-eqz v24, :cond_7

    .line 129
    const-string v3, "qop"

    move-object/from16 v0, v24

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v3, 0x8

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 132
    .local v16, "nonce":[B
    sget-object v3, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->rnd:Ljava/security/SecureRandom;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 135
    :try_start_0
    new-instance v11, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 136
    .local v11, "cnonce":Ljava/lang/String;
    const-string v3, "cnonce"

    invoke-virtual {v4, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v11    # "cnonce":Ljava/lang/String;
    .end local v16    # "nonce":[B
    .end local v22    # "st":Ljava/util/StringTokenizer;
    .end local v24    # "token":Ljava/lang/String;
    :cond_5
    const-string v3, "nc"

    const-string v5, "00000001"

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v3, "uri"

    invoke-virtual/range {v20 .. v20}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :try_start_1
    const-string v25, "response"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v3}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    .line 151
    invoke-virtual/range {v20 .. v20}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v6

    const-string v7, "PWD"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 152
    invoke-virtual {v7}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v8}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-static/range {v3 .. v8}, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->computeResponseValue(Lorg/apache/mina/core/session/IoSession;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v3, "Digest "

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .local v21, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 163
    .local v9, "addSeparator":Z
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 164
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 166
    .local v15, "key":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 167
    const-string v3, ", "

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :goto_3
    const-string v3, "qop"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "nc"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v19, 0x1

    .line 173
    .local v19, "quotedValue":Z
    :goto_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    if-eqz v19, :cond_a

    .line 176
    const-string v3, "=\""

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x22

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 122
    .end local v9    # "addSeparator":Z
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "key":Ljava/lang/String;
    .end local v19    # "quotedValue":Z
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .restart local v22    # "st":Ljava/util/StringTokenizer;
    .restart local v23    # "tk":Ljava/lang/String;
    .restart local v24    # "token":Ljava/lang/String;
    :cond_6
    sget-object v3, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SUPPORTED_QOPS:[Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v17

    .line 123
    .local v17, "pos":I
    const/4 v3, -0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_3

    .line 124
    move-object/from16 v24, v23

    goto/16 :goto_1

    .line 137
    .end local v17    # "pos":I
    .end local v23    # "tk":Ljava/lang/String;
    .restart local v16    # "nonce":[B
    :catch_0
    move-exception v12

    .line 138
    .local v12, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "Unable to encode cnonce"

    invoke-direct {v3, v5, v12}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 141
    .end local v12    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v16    # "nonce":[B
    :cond_7
    new-instance v3, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "No supported qop option available"

    invoke-direct {v3, v5}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    .end local v22    # "st":Ljava/util/StringTokenizer;
    .end local v24    # "token":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 155
    .local v12, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "Digest response computing failed"

    invoke-direct {v3, v5, v12}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 169
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "addSeparator":Z
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    const/4 v9, 0x1

    goto :goto_3

    .line 172
    :cond_9
    const/16 v19, 0x0

    goto :goto_4

    .line 178
    .restart local v19    # "quotedValue":Z
    :cond_a
    const/16 v3, 0x3d

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 182
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "key":Ljava/lang/String;
    .end local v19    # "quotedValue":Z
    :cond_b
    const-string v3, "Proxy-Authorization"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v14, v3, v5, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "addSeparator":Z
    .end local v10    # "algorithm":Ljava/lang/String;
    .end local v18    # "qop":Ljava/lang/String;
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    invoke-static {v14}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    .line 186
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 189
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    .line 190
    return-void
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 7
    .param p1, "response"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 196
    iget v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    if-nez v4, :cond_4

    .line 197
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0x191

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0x197

    if-eq v4, v5, :cond_0

    .line 198
    new-instance v4, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received unexpected response code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Proxy-Authenticate"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 204
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 206
    .local v0, "challengeResponse":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, "s":Ljava/lang/String;
    const-string v5, "Digest"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    move-object v0, v2

    .line 213
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 214
    new-instance v4, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "Server doesn\'t support digest authentication method !"

    invoke-direct {v4, v5}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    :cond_3
    const/4 v4, 0x7

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 219
    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->parseDirectives([B)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    const/4 v4, 0x1

    iput v4, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->step:I

    .line 227
    return-void

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v5, "Parsing of server digest directives failed"

    invoke-direct {v4, v5, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 225
    .end local v0    # "challengeResponse":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v4, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received unexpected response code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
