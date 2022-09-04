.class public Lcom/fimi/network/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSignMsg(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 32
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 33
    iget-object v6, p1, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 39
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "signMsg"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 44
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 47
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fimi/kernel/utils/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "signMsg":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signMsg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    return-object v5
.end method


# virtual methods
.method public getCommonParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    .locals 5
    .param p1, "params"    # Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance p1, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    .end local p1    # "params":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    invoke-direct {p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 86
    .restart local p1    # "params":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    :cond_0
    const-string v2, "fimiId"

    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "clientType"

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "clientVersion"

    invoke-static {}, Lcom/fimi/kernel/utils/SystemParamUtil;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "access_token"

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    const-string v4, "access_token_sp"

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "userType":I
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const/4 v1, 0x1

    .line 96
    :goto_0
    const-string/jumbo v2, "user_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/fimi/network/BaseManager;->getSignMsg(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "md5":Ljava/lang/String;
    const-string v2, "signMsg"

    invoke-virtual {p1, v2, v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object p1

    .line 94
    .end local v0    # "md5":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/network/BaseManager;->getCommonParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v0

    return-object v0
.end method

.method public getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    .locals 1
    .param p1, "params"    # Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/fimi/network/BaseManager;->getCommonParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v0

    .line 62
    .local v0, "lastParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    return-object v0
.end method
