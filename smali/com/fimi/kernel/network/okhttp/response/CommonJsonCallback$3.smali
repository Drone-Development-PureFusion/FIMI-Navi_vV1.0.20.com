.class Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;
.super Ljava/lang/Object;
.source "CommonJsonCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

.field final synthetic val$cookieLists:Ljava/util/ArrayList;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;->val$cookieLists:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;->val$result:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->access$100(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->access$000(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    move-result-object v0

    instance-of v0, v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeHandleCookieListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->access$000(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeHandleCookieListener;

    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$3;->val$cookieLists:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeHandleCookieListener;->onCookie(Ljava/util/ArrayList;)V

    .line 98
    :cond_0
    return-void
.end method
