.class Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;
.super Ljava/lang/Object;
.source "CommonFileCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;->val$file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->access$000(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;->val$file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;->onSuccess(Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->access$000(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;

    const/4 v2, -0x2

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method
