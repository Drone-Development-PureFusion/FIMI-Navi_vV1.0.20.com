.class Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;
.super Ljava/lang/Object;
.source "AbstractHttpLogicHandler.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/session/IoSessionInitializer",
        "<",
        "Lorg/apache/mina/core/future/ConnectFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

.field final synthetic val$nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field final synthetic val$proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field final synthetic val$request:Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;


# direct methods
.method constructor <init>(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/proxy/session/ProxyIoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    .prologue
    .line 336
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->this$0:Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iput-object p4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$request:Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/ConnectFuture;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "future"    # Lorg/apache/mina/core/future/ConnectFuture;

    .prologue
    .line 338
    invoke-static {}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Initializing new session: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 341
    invoke-static {}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "  setting up proxyIoSession: {}"

    iget-object v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1$1;-><init>(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;)V

    invoke-interface {p2, v0}, Lorg/apache/mina/core/future/ConnectFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;

    .line 350
    return-void
.end method

.method public bridge synthetic initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0

    .prologue
    .line 336
    check-cast p2, Lorg/apache/mina/core/future/ConnectFuture;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/ConnectFuture;)V

    return-void
.end method
