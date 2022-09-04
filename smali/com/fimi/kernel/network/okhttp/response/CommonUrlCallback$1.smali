.class Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$1;
.super Ljava/lang/Object;
.source "CommonUrlCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$1;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$1;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;->access$000(Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/fimi/kernel/network/okhttp/response/CommonUrlCallback$1;->val$e:Ljava/io/IOException;

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;->onFailure(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
