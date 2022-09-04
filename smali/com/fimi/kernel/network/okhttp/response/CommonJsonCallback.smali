.class public Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;
.super Ljava/lang/Object;
.source "CommonJsonCallback.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field protected final COOKIE_STORE:Ljava/lang/String;

.field protected final EMPTY_MSG:Ljava/lang/String;

.field protected final ERROR_MSG:Ljava/lang/String;

.field protected final JSON_ERROR:I

.field protected final NETWORK_ERROR:I

.field protected final OTHER_ERROR:I

.field protected final RESULT_CODE:Ljava/lang/String;

.field protected final RESULT_CODE_VALUE:I

.field private isArray:Z

.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mDeliveryHandler:Landroid/os/Handler;

.field private mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "ecode"

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->RESULT_CODE:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->RESULT_CODE_VALUE:I

    .line 34
    const-string v0, "emsg"

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->ERROR_MSG:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->EMPTY_MSG:Ljava/lang/String;

    .line 36
    const-string v0, "Set-Cookie"

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->COOKIE_STORE:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->NETWORK_ERROR:I

    .line 44
    const/4 v0, -0x2

    iput v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->JSON_ERROR:I

    .line 45
    const/4 v0, -0x3

    iput v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->OTHER_ERROR:I

    .line 53
    iput-boolean v1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->isArray:Z

    .line 56
    iget-object v0, p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 57
    iget-object v0, p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->mClass:Ljava/lang/Class;

    .line 58
    iget-boolean v0, p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isArray:Z

    iput-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->isArray:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->mDeliveryHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->handleResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private handleCookie(Lokhttp3/Headers;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "headers"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 105
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Set-Cookie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-object v1
.end method

.method private handleResponse(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    invoke-interface {v0, p1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;->onSuccess(Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public isJsonformat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reponse"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v1, 0x1

    .line 116
    .local v1, "isJson":Z
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "ioexception"    # Ljava/io/IOException;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->mDeliveryHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$1;

    invoke-direct {v1, p0, p2}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$1;-><init>(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/fimi/kernel/utils/DesEncryptUtil;->getInstans()Lcom/fimi/kernel/utils/DesEncryptUtil;

    move-result-object v2

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fimi??678"

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/utils/DesEncryptUtil;->desCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->isJsonformat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->mDeliveryHandler:Landroid/os/Handler;

    new-instance v3, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$2;

    invoke-direct {v3, p0}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$2;-><init>(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->handleCookie(Lokhttp3/Headers;)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    .local v0, "cookieLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->mDeliveryHandler:Landroid/os/Handler;

    new-instance v3, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;-><init>(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
