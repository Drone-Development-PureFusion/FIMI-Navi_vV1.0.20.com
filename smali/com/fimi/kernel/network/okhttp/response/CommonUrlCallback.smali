.class public Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;
.super Ljava/lang/Object;
.source "CommonUrlCallback.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field protected final NETWORK_ERROR:I

.field private isArray:Z

.field private isGetCode:Z

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
.method public constructor <init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;Z)V
    .locals 2
    .param p1, "handle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;
    .param p2, "isGetCode"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->isArray:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->isGetCode:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->NETWORK_ERROR:I

    .line 32
    iget-object v0, p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 33
    iget-object v0, p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mClass:Ljava/lang/Class;

    .line 34
    iget-boolean v0, p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isArray:Z

    iput-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->isArray:Z

    .line 35
    iput-boolean p2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->isGetCode:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mDeliveryHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->isGetCode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;Lokhttp3/HttpUrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;
    .param p1, "x1"    # Lokhttp3/HttpUrl;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->handleResponse(Lokhttp3/HttpUrl;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->handleBodyResponse(Ljava/lang/String;)V

    return-void
.end method

.method private handleBodyResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    invoke-interface {v0, p1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;->onSuccess(Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleResponse(Lokhttp3/HttpUrl;)V
    .locals 2
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    invoke-interface {v0, p1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;->onSuccess(Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mDeliveryHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$1;

    invoke-direct {v1, p0, p2}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$1;-><init>(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 53
    .local v1, "url":Lokhttp3/HttpUrl;
    iget-object v2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->mDeliveryHandler:Landroid/os/Handler;

    new-instance v3, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;-><init>(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;Lokhttp3/HttpUrl;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method
