.class public Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;
.super Ljava/lang/Object;
.source "DigestUtilities.java"


# static fields
.field public static final SESSION_HA1:Ljava/lang/String;

.field public static final SUPPORTED_QOPS:[Ljava/lang/String;

.field private static md5:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".SessionHA1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    .line 49
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "auth"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "auth-int"

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SUPPORTED_QOPS:[Ljava/lang/String;

    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeResponseValue(Lorg/apache/mina/core/session/IoSession;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "charsetName"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/AuthenticationException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "md5-sess"

    const-string v12, "algorithm"

    const/4 v13, 0x0

    invoke-static {p1, v12, v13}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 81
    .local v5, "isMD5Sess":Z
    if-eqz v5, :cond_0

    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, v11}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    .line 83
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string v11, "username"

    const/4 v12, 0x1

    invoke-static {p1, v11, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const-string v11, "realm"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "realm":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 90
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    if-eqz v5, :cond_3

    .line 98
    sget-object v12, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v12

    .line 99
    :try_start_0
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v11}, Ljava/security/MessageDigest;->reset()V

    .line 100
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 101
    .local v6, "prehA1":[B
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    invoke-static {v6}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "nonce"

    const/4 v13, 0x1

    .line 106
    invoke-static {p1, v12, v13}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 105
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "cnonce"

    const/4 v13, 0x1

    .line 108
    invoke-static {p1, v12, v13}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 107
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    sget-object v12, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v12

    .line 111
    :try_start_1
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v11}, Ljava/security/MessageDigest;->reset()V

    .line 112
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 113
    .local v1, "hA1":[B
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, v11, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v6    # "prehA1":[B
    .end local v9    # "realm":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const-string v11, "uri"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v11, "qop"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "qop":Ljava/lang/String;
    const-string v11, "auth-int"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 133
    sget-object v11, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p0, v11}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 136
    .local v7, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    sget-object v12, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v12

    .line 137
    :try_start_2
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v11}, Ljava/security/MessageDigest;->reset()V

    .line 138
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 139
    .local v3, "hEntity":[B
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 141
    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .end local v3    # "hEntity":[B
    .end local v7    # "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    :cond_2
    sget-object v12, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v12

    .line 146
    :try_start_3
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v11}, Ljava/security/MessageDigest;->reset()V

    .line 147
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 148
    .local v2, "hA2":[B
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "nonce"

    const/4 v13, 0x1

    invoke-static {p1, v12, v13}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v11, ":00000001:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v11, "cnonce"

    const/4 v12, 0x1

    invoke-static {p1, v11, v12}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    sget-object v12, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v12

    .line 162
    :try_start_4
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v11}, Ljava/security/MessageDigest;->reset()V

    .line 163
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 164
    .local v4, "hFinal":[B
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 166
    invoke-static {v4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 101
    .end local v1    # "hA1":[B
    .end local v2    # "hA2":[B
    .end local v4    # "hFinal":[B
    .end local v8    # "qop":Ljava/lang/String;
    .restart local v9    # "realm":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v11

    .line 113
    .restart local v6    # "prehA1":[B
    :catchall_1
    move-exception v11

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v11

    .line 117
    .end local v6    # "prehA1":[B
    :cond_3
    sget-object v12, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v12

    .line 118
    :try_start_7
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v11}, Ljava/security/MessageDigest;->reset()V

    .line 119
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 120
    .restart local v1    # "hA1":[B
    monitor-exit v12

    goto/16 :goto_0

    .end local v1    # "hA1":[B
    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v11

    .line 123
    .end local v9    # "realm":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    sget-object v11, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, v11}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v1, v11

    check-cast v1, [B

    .restart local v1    # "hA1":[B
    goto/16 :goto_0

    .line 139
    .restart local v7    # "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    .restart local v8    # "qop":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :catchall_3
    move-exception v11

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v11

    .line 148
    .end local v7    # "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    :catchall_4
    move-exception v11

    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v11

    .line 164
    .restart local v2    # "hA2":[B
    :catchall_5
    move-exception v11

    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v11
.end method
