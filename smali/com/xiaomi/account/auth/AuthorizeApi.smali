.class public Lcom/xiaomi/account/auth/AuthorizeApi;
.super Ljava/lang/Object;
.source "AuthorizeApi.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final HOST:Ljava/lang/String;

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final OAUTH_URL_BASE:Ljava/lang/String;

.field private static final READ_TIMEOUT:I = 0x3a98

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_API_HOST:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/account/auth/AuthorizeApi;->HOST:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_API_URL_BASE:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/account/auth/AuthorizeApi;->OAUTH_URL_BASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/BufferedReader;)V
    .locals 1
    .param p0, "br"    # Ljava/io/BufferedReader;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static doHttpGet(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "clientId"    # J
    .param p4, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 37
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/account/auth/AuthorizeApi;->doHttpGet(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpGet(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "clientId"    # J
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "macKey"    # Ljava/lang/String;
    .param p6, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-static/range {p1 .. p6}, Lcom/xiaomi/account/auth/AuthorizeApi;->doHttpGet(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpGet(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "clientId"    # J
    .param p3, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 42
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, v5

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/account/auth/AuthorizeApi;->doHttpGet(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpGet(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "clientId"    # J
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "macKey"    # Ljava/lang/String;
    .param p5, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v12, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "clientId"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v16, "token"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v15, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v4, 0x0

    .line 61
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v14, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/xiaomi/account/auth/AuthorizeApi;->OAUTH_URL_BASE:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v12}, Lcom/xiaomi/account/auth/AuthorizeHelper;->generateUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v14, "url":Ljava/net/URL;
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 64
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 65
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 66
    const-string v15, "GET"

    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    const/16 v15, 0x2710

    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    const/16 v15, 0x3a98

    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v12}, Lcom/xiaomi/account/auth/AuthorizeApi;->makeHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v8

    .line 71
    .local v8, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    .line 72
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 73
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v6, v10, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 94
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_1
    new-instance v15, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v15, v7}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v15

    :goto_2
    invoke-static {v4}, Lcom/xiaomi/account/auth/AuthorizeApi;->closeQuietly(Ljava/io/BufferedReader;)V

    throw v15

    .line 76
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "url":Ljava/net/URL;
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    const/4 v9, 0x0

    .line 79
    .local v9, "inputStream":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 83
    :goto_3
    if-nez v9, :cond_1

    .line 84
    :try_start_4
    new-instance v15, Lcom/xiaomi/account/openauth/XMAuthericationException;

    new-instance v16, Ljava/io/IOException;

    invoke-direct/range {v16 .. v16}, Ljava/io/IOException;-><init>()V

    invoke-direct/range {v15 .. v16}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 96
    .local v7, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v15, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v15, v7}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "url":Ljava/net/URL;
    :catch_2
    move-exception v7

    .line 81
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    goto :goto_3

    .line 86
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v16, 0x400

    move/from16 v0, v16

    invoke-direct {v5, v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 87
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v13, "sb":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 90
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 93
    .end local v11    # "line":Ljava/lang/String;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 92
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v15

    .line 102
    invoke-static {v5}, Lcom/xiaomi/account/auth/AuthorizeApi;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 92
    return-object v15

    .line 97
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "url":Ljava/net/URL;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    .line 98
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_6
    :try_start_8
    new-instance v15, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v15, v7}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 99
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v7

    .line 100
    .local v7, "e":Ljava/security/InvalidKeyException;
    :goto_7
    new-instance v15, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v15, v7}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 102
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/security/InvalidKeyException;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v15

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 99
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v7

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 97
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v7

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 95
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v7

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static makeHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "macKey"    # Ljava/lang/String;
    .param p3, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 119
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 122
    :cond_0
    invoke-static {}, Lcom/xiaomi/account/auth/AuthorizeHelper;->generateNonce()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "nonce":Ljava/lang/String;
    const-string v1, "GET"

    sget-object v2, Lcom/xiaomi/account/auth/AuthorizeApi;->HOST:Ljava/lang/String;

    const-string v3, "UTF-8"

    .line 125
    invoke-static {p4, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    .line 123
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/account/auth/AuthorizeHelper;->getMacAccessTokenSignatureString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "signature":Ljava/lang/String;
    invoke-static {p1, v0, v7}, Lcom/xiaomi/account/auth/AuthorizeHelper;->buildMacRequestHead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0
.end method
