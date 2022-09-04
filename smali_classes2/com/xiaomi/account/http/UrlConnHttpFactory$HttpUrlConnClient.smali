.class Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;
.super Ljava/lang/Object;
.source "UrlConnHttpFactory.java"

# interfaces
.implements Lcom/xiaomi/account/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/http/UrlConnHttpFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpUrlConnClient"
.end annotation


# static fields
.field private static final BODY_STRING_SPLIT:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "HttpUrlConnClient"


# instance fields
.field config:Lcom/xiaomi/account/http/HttpClientConfig;

.field final synthetic this$0:Lcom/xiaomi/account/http/UrlConnHttpFactory;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/http/UrlConnHttpFactory;Lcom/xiaomi/account/http/HttpClientConfig;)V
    .locals 2
    .param p2, "config"    # Lcom/xiaomi/account/http/HttpClientConfig;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;->this$0:Lcom/xiaomi/account/http/UrlConnHttpFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/account/http/HttpClientConfig;

    .line 95
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 97
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/http/UrlConnHttpFactory;Lcom/xiaomi/account/http/HttpClientConfig;Lcom/xiaomi/account/http/UrlConnHttpFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaomi/account/http/UrlConnHttpFactory;
    .param p2, "x1"    # Lcom/xiaomi/account/http/HttpClientConfig;
    .param p3, "x2"    # Lcom/xiaomi/account/http/UrlConnHttpFactory$1;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;-><init>(Lcom/xiaomi/account/http/UrlConnHttpFactory;Lcom/xiaomi/account/http/HttpClientConfig;)V

    return-void
.end method


# virtual methods
.method public excute(Lcom/xiaomi/account/http/Request;)Lcom/xiaomi/account/http/Response;
    .locals 13
    .param p1, "request"    # Lcom/xiaomi/account/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v10, Ljava/net/URL;

    iget-object v11, p1, Lcom/xiaomi/account/http/Request;->url:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 32
    .local v4, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v10, p0, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/account/http/HttpClientConfig;

    iget-wide v10, v10, Lcom/xiaomi/account/http/HttpClientConfig;->connectTimeoutMs:J

    long-to-int v10, v10

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 33
    iget-object v10, p0, Lcom/xiaomi/account/http/UrlConnHttpFactory$HttpUrlConnClient;->config:Lcom/xiaomi/account/http/HttpClientConfig;

    iget-wide v10, v10, Lcom/xiaomi/account/http/HttpClientConfig;->readTimeoutMs:J

    long-to-int v10, v10

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35
    iget-object v10, p1, Lcom/xiaomi/account/http/Request;->formBody:Ljava/util/Map;

    if-eqz v10, :cond_0

    .line 36
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 37
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 38
    const-string v10, "POST"

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    :goto_0
    iget-boolean v10, p1, Lcom/xiaomi/account/http/Request;->followRedirects:Z

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 45
    iget-object v10, p1, Lcom/xiaomi/account/http/Request;->headers:Ljava/util/Map;

    if-eqz v10, :cond_1

    .line 46
    iget-object v10, p1, Lcom/xiaomi/account/http/Request;->headers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 47
    .local v5, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 88
    .end local v5    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v10

    .line 40
    :cond_0
    :try_start_1
    const-string v10, "GET"

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 54
    iget-object v10, p1, Lcom/xiaomi/account/http/Request;->formBody:Ljava/util/Map;

    if-eqz v10, :cond_2

    .line 55
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 56
    .local v7, "os":Ljava/io/OutputStream;
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    const-string v11, "UTF-8"

    invoke-direct {v10, v7, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 57
    .local v9, "writer":Ljava/io/BufferedWriter;
    iget-object v10, p1, Lcom/xiaomi/account/http/Request;->formBody:Ljava/util/Map;

    invoke-static {v10}, Lcom/xiaomi/account/http/UrlConnHttpFactory;->joinToQuery(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    .line 59
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 60
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 63
    .end local v7    # "os":Ljava/io/OutputStream;
    .end local v9    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 64
    .local v3, "code":I
    new-instance v10, Lcom/xiaomi/account/http/Response$Builder;

    invoke-direct {v10}, Lcom/xiaomi/account/http/Response$Builder;-><init>()V

    .line 65
    invoke-virtual {v10, v3}, Lcom/xiaomi/account/http/Response$Builder;->code(I)Lcom/xiaomi/account/http/Response$Builder;

    move-result-object v10

    const-string v11, "Location"

    .line 66
    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/xiaomi/account/http/Response$Builder;->location(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;

    move-result-object v10

    const-string v11, "Set-Cookie"

    .line 67
    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/xiaomi/account/http/Response$Builder;->setCookie(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;

    move-result-object v10

    .line 68
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/xiaomi/account/http/Response$Builder;->headers(Ljava/util/Map;)Lcom/xiaomi/account/http/Response$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 70
    .local v2, "builder":Lcom/xiaomi/account/http/Response$Builder;
    const/16 v10, 0xc8

    if-ne v3, v10, :cond_6

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x400

    invoke-direct {v1, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v8, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 77
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 81
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_3

    .line 82
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/xiaomi/account/http/Response$Builder;->body(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaomi/account/http/Response$Builder;->build()Lcom/xiaomi/account/http/Response;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v10

    .line 81
    if-eqz v1, :cond_5

    .line 82
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 88
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 86
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :goto_4
    return-object v10

    :cond_6
    :try_start_7
    invoke-virtual {v2}, Lcom/xiaomi/account/http/Response$Builder;->build()Lcom/xiaomi/account/http/Response;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v10

    .line 88
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 81
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v10

    goto :goto_3
.end method
