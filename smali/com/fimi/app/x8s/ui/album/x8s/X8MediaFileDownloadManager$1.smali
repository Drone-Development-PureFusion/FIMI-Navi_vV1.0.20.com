.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;
.super Landroid/os/Handler;
.source "X8MediaFileDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    .prologue
    .line 221
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 232
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 267
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v1, v3}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onProgress(Lcom/fimi/album/entity/MediaModel;I)V

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v2, v1}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onSuccess(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 250
    :pswitch_3
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v2, v1}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onFailure(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 254
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 255
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onStop(Lcom/fimi/album/entity/MediaModel;)V

    .line 256
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->sendStopDownload(Lcom/fimi/album/entity/MediaModel;)V

    .line 257
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->next()V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
