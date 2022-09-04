.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;
.super Ljava/lang/Object;
.source "X8MediaThumDownloadTask.java"

# interfaces
.implements Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownFilePre(Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;)V
    .locals 0
    .param p1, "x8MediaFileInfo"    # Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    .prologue
    .line 54
    return-void
.end method

.method public onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V
    .locals 3
    .param p1, "resultEnum"    # Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    .prologue
    .line 88
    sget-object v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$2;->$SwitchMap$com$fimi$app$x8s$ui$album$x8s$DownFileResultEnum:[I

    invoke-virtual {p1}, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownLoadThum(Z)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$400(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ================onEndFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$400(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProgress(Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;)V
    .locals 7
    .param p1, "downLoadPacket"    # Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getPlayloadSize()S

    move-result v1

    if-lez v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getOffSet()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getPlayloadSize()S

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$202(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;J)J

    .line 68
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getPlayData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 69
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Success:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Fail:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    new-instance v2, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v2}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)J

    move-result-wide v4

    long-to-int v3, v4

    const/16 v4, 0x400

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getThumFileUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$300(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    goto/16 :goto_0

    .line 77
    :cond_3
    sget-object v1, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Fail:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onSartFile()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)V

    .line 49
    return-void
.end method
