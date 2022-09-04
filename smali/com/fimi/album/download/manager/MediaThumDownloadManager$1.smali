.class Lcom/fimi/album/download/manager/MediaThumDownloadManager$1;
.super Landroid/os/Handler;
.source "MediaThumDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/album/download/manager/MediaThumDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/download/manager/MediaThumDownloadManager;


# direct methods
.method constructor <init>(Lcom/fimi/album/download/manager/MediaThumDownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/download/manager/MediaThumDownloadManager;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager$1;->this$0:Lcom/fimi/album/download/manager/MediaThumDownloadManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager$1;->this$0:Lcom/fimi/album/download/manager/MediaThumDownloadManager;

    invoke-static {v0}, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->access$000(Lcom/fimi/album/download/manager/MediaThumDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onProgress(Lcom/fimi/album/entity/MediaModel;I)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager$1;->this$0:Lcom/fimi/album/download/manager/MediaThumDownloadManager;

    invoke-static {v0}, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->access$108(Lcom/fimi/album/download/manager/MediaThumDownloadManager;)I

    .line 110
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager$1;->this$0:Lcom/fimi/album/download/manager/MediaThumDownloadManager;

    invoke-static {v0}, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->access$000(Lcom/fimi/album/download/manager/MediaThumDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v1, v0}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onSuccess(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager$1;->this$0:Lcom/fimi/album/download/manager/MediaThumDownloadManager;

    invoke-static {v0}, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->access$000(Lcom/fimi/album/download/manager/MediaThumDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v1, v0}, Lcom/fimi/album/interfaces/OnDownloadUiListener;->onFailure(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
