.class Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$1;
.super Landroid/os/Handler;
.source "CommonFileCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$1;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$1;->this$0:Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->access$000(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;->onProgress(II)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
