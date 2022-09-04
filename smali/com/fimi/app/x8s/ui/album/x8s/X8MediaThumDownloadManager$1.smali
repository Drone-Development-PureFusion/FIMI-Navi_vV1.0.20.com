.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager$1;
.super Landroid/os/Handler;
.source "X8MediaThumDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v1, v3}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onProgress(Lcom/fimi/album/entity/MediaModel;I)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v2, v1}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onSuccess(Lcom/fimi/album/entity/MediaModel;)V

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 122
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alanqiu  ==================handleMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :pswitch_2
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v2, v1}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onFailure(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
