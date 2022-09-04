.class Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$1;
.super Ljava/lang/Object;
.source "CommonJsonCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

.field final synthetic val$ioexception:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$1;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$1;->val$ioexception:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$1;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;->access$000(Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/fimi/kernel/network/okhttp/response/CommonJsonCallback$1;->val$ioexception:Ljava/io/IOException;

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;->onFailure(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
