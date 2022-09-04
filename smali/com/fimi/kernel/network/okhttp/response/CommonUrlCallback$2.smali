.class Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;
.super Ljava/lang/Object;
.source "CommonUrlCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$url:Lokhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;->val$url:Lokhttp3/HttpUrl;

    iput-object p3, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->access$100(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;->val$url:Lokhttp3/HttpUrl;

    invoke-static {v0, v1}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->access$200(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;Lokhttp3/HttpUrl;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$2;->val$result:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->access$300(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;Ljava/lang/String;)V

    goto :goto_0
.end method
